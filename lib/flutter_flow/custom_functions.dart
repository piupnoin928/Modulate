import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int convertToMilliseconds(
  int? hoursInput,
  int? minutesInput,
  int? secondsInput,
) {
  // convert hours, minutes, seconds to their total milliseconds
  int hours = hoursInput ?? 0;
  int minutes = minutesInput ?? 0;
  int seconds = secondsInput ?? 0;

  int totalMilliseconds = (hours * 3600 + minutes * 60 + seconds) * 1000;

  return totalMilliseconds;
}

double? convertToDouble(String? toConvert) {
  // convert string to double
  try {
    return double.parse(toConvert!);
  } catch (e) {
    return null;
  }
}
