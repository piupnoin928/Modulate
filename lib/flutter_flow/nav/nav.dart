import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'List',
          path: '/list',
          builder: (context, params) => ListWidget(),
        ),
        FFRoute(
          name: 'diaphragmaticbreathing',
          path: '/diaphragmaticbreathing',
          builder: (context, params) => DiaphragmaticbreathingWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_Diaphragmatic',
          path: '/relaxandLetGoDiaphragmatic',
          builder: (context, params) => RelaxandLetGoDiaphragmaticWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_Diaphragmatic',
          path: '/breathingCircleDiaphragmatic',
          builder: (context, params) => BreathingCircleDiaphragmaticWidget(),
        ),
        FFRoute(
          name: 'Customization',
          path: '/customization',
          builder: (context, params) => CustomizationWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_Customized',
          path: '/breathingCircleCustomized',
          builder: (context, params) => BreathingCircleCustomizedWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_Customized',
          path: '/relaxandLetGoCustomized',
          builder: (context, params) => RelaxandLetGoCustomizedWidget(),
        ),
        FFRoute(
          name: 'boxbreathing',
          path: '/boxbreathing',
          builder: (context, params) => BoxbreathingWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_BoxBreathing',
          path: '/breathingCircleBoxBreathing',
          builder: (context, params) => BreathingCircleBoxBreathingWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_BoxBreathing',
          path: '/relaxandLetGoBoxBreathing',
          builder: (context, params) => RelaxandLetGoBoxBreathingWidget(),
        ),
        FFRoute(
          name: 'fourseveneightBreathing',
          path: '/fourseveneightBreathing',
          builder: (context, params) => FourseveneightBreathingWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_FourSevenEight',
          path: '/relaxandLetGoFourSevenEight',
          builder: (context, params) => RelaxandLetGoFourSevenEightWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_FourSevenEight',
          path: '/breathingCircleFourSevenEight',
          builder: (context, params) => BreathingCircleFourSevenEightWidget(),
        ),
        FFRoute(
          name: 'CoherentBreathing',
          path: '/coherentBreathing',
          builder: (context, params) => CoherentBreathingWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_CoherentBreathing',
          path: '/relaxandLetGoCoherentBreathing',
          builder: (context, params) => RelaxandLetGoCoherentBreathingWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_CoherentBreathing',
          path: '/breathingCircleCoherentBreathing',
          builder: (context, params) =>
              BreathingCircleCoherentBreathingWidget(),
        ),
        FFRoute(
          name: 'CompletePage',
          path: '/completePage',
          builder: (context, params) => CompletePageWidget(),
        ),
        FFRoute(
          name: 'BellowsBreath',
          path: '/bellowsBreath',
          builder: (context, params) => BellowsBreathWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_BellowsBreath',
          path: '/relaxandLetGoBellowsBreath',
          builder: (context, params) => RelaxandLetGoBellowsBreathWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_BellowsBreath',
          path: '/breathingCircleBellowsBreath',
          builder: (context, params) => BreathingCircleBellowsBreathWidget(),
        ),
        FFRoute(
          name: 'BreathingCircle_OceanBreath',
          path: '/breathingCircleOceanBreath',
          builder: (context, params) => BreathingCircleOceanBreathWidget(),
        ),
        FFRoute(
          name: 'OceanBreath',
          path: '/oceanBreath',
          builder: (context, params) => OceanBreathWidget(),
        ),
        FFRoute(
          name: 'RelaxandLetGo_OceanBreath',
          path: '/relaxandLetGoOceanBreath',
          builder: (context, params) => RelaxandLetGoOceanBreathWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
