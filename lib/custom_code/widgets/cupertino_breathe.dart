// Automatic FlutterFlow imports
// Imports other custom widgets
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class CupertinoBreathe extends StatefulWidget {
  const CupertinoBreathe({
    super.key,
    this.width,
    this.height,
    required this.inhaleSeconds,
    required this.exhaleSeconds,
    this.holdAfterInhaleSeconds,
    this.holdAfterExhaleSeconds,
  });

  final double? width;
  final double? height;
  final double inhaleSeconds; // Changed to double
  final double exhaleSeconds; // Changed to double
  final double? holdAfterInhaleSeconds; // Changed to nullable double
  final double? holdAfterExhaleSeconds; // Changed to nullable double

  @override
  State<CupertinoBreathe> createState() => _CupertinoBreatheState();
}

class _CupertinoBreatheState extends State<CupertinoBreathe>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _rotationAnimation;

  String get breathingPhase {
    final cycleComplete = widget.inhaleSeconds +
        (widget.holdAfterInhaleSeconds ?? 0.1) + // Add 0.1 if null
        widget.exhaleSeconds +
        (widget.holdAfterExhaleSeconds ?? 0.1); // Add 0.1 if null
    final currentPhase = (_controller.value * cycleComplete) % cycleComplete;
    if (currentPhase <= widget.inhaleSeconds) {
      return 'Inhale';
    } else if (currentPhase <=
        widget.inhaleSeconds + (widget.holdAfterInhaleSeconds ?? 0.1)) {
      return 'Hold (after inhale)';
    } else if (currentPhase <=
        widget.inhaleSeconds +
            (widget.holdAfterInhaleSeconds ?? 0.1) +
            widget.exhaleSeconds) {
      return 'Exhale';
    } else {
      return 'Hold (after exhale)';
    }
  }

  @override
  void initState() {
    super.initState();
    enableWakeLock();

    // Adjust the values if they are null or 0
    double inhaleSeconds =
        widget.inhaleSeconds == 0 ? 0.1 : widget.inhaleSeconds;
    double exhaleSeconds =
        widget.exhaleSeconds == 0 ? 0.1 : widget.exhaleSeconds;
    double? holdAfterInhaleSeconds = widget.holdAfterInhaleSeconds;
    double? holdAfterExhaleSeconds = widget.holdAfterExhaleSeconds;

    if (holdAfterInhaleSeconds == null || holdAfterInhaleSeconds == 0) {
      holdAfterInhaleSeconds = 0.1;
    }
    if (holdAfterExhaleSeconds == null || holdAfterExhaleSeconds == 0) {
      holdAfterExhaleSeconds = 0.1;
    }

    double totalSeconds = inhaleSeconds +
        (holdAfterInhaleSeconds ?? 0) +
        exhaleSeconds +
        (holdAfterExhaleSeconds ?? 0);

    // Ensure totalSeconds is at least 1 to avoid division by zero
    totalSeconds = math.max(1, totalSeconds);

    _controller = AnimationController(
      duration: Duration(
          seconds: totalSeconds.toInt()), // Use toInt() to convert to int
      vsync: this,
    )..addListener(() {
        setState(() {}); // Forces the widget to rebuild with the new phase.
      });

    _animation = TweenSequence([
      TweenSequenceItem(
          tween: Tween(begin: 0.5, end: 1.0),
          weight: math.max(0, inhaleSeconds) / totalSeconds),
      TweenSequenceItem(
          tween: ConstantTween(1.0),
          weight: math.max(0, holdAfterInhaleSeconds ?? 0) / totalSeconds),
      TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.5),
          weight: math.max(0, exhaleSeconds) / totalSeconds),
      TweenSequenceItem(
          tween: ConstantTween(0.5),
          weight: math.max(0, holdAfterExhaleSeconds ?? 0) / totalSeconds),
    ]).animate(_controller);

    _rotationAnimation = TweenSequence([
      TweenSequenceItem(
          tween: ConstantTween(0.0),
          weight: math.max(0, inhaleSeconds) / totalSeconds),
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: -0.1),
          weight: math.max(0, holdAfterInhaleSeconds ?? 0) / totalSeconds),
      TweenSequenceItem(
          tween: ConstantTween(0.0),
          weight: math.max(0, exhaleSeconds) / totalSeconds),
      TweenSequenceItem(
          tween: Tween(begin: -0.1, end: 0.0),
          weight: math.max(0, holdAfterExhaleSeconds ?? 0) / totalSeconds),
    ]).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose() {
    disableWakeLock();
    _controller.dispose();
    super.dispose();
  }

  void enableWakeLock() async {
    await WakelockPlus.enable();
  }

  void disableWakeLock() async {
    await WakelockPlus.disable();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: widget.width! / widget.height!,
          child: AnimatedBuilder(
            animation: Listenable.merge([_animation, _rotationAnimation]),
            builder: (context, child) {
              return Transform.rotate(
                angle: _rotationAnimation.value,
                child: CustomPaint(
                  painter: _BreathePainter(_animation.value),
                  size: Size.infinite,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20), // Space between the circle and text
        Text(
          breathingPhase,
          style: GoogleFonts.jost(
            fontSize: 24,
            color: const Color(0xFF3BE8B0),
          ),
        ),
      ],
    );
  }
}

class _BreathePainter extends CustomPainter {
  _BreathePainter(this.animationValue,
      {Color color = const Color(0xFF61bea2)})
      : circlePaint = Paint()
          ..color = color
          ..blendMode = BlendMode.screen,
        super(repaint: Listenable.merge([]));

  final double animationValue;
  final int count = 20;
  final Paint circlePaint;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.shortestSide * 0.25) * animationValue;
    for (int index = 0; index < count; index++) {
      final indexAngle = (index * math.pi / count * 2);
      final angle = indexAngle + (math.pi * 1.5 * animationValue);
      final offset = Offset(math.sin(angle), math.cos(angle)) * radius * 0.985;

      // Ensure radius is never negative
      final double adjustedRadius = math.max(0, radius);

      canvas.drawCircle(
          center + offset * animationValue, adjustedRadius, circlePaint);
    }
  }

  @override
  bool shouldRepaint(_BreathePainter oldDelegate) =>
      animationValue != oldDelegate.animationValue;
}
