import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/home/screens/home.dart';
import '../core/login/blocs/authentication_bloc.dart';
import '../core/login/screens/login.dart';
import '../core/profile/screens/profile.dart';
import 'screens/splash.dart';

abstract class AppScreenName {
  static const String home = 'home';
  static const String login = 'login';
  static const String splash = 'splash';
  static const String profile = 'profile';
}

abstract class Path {
  static const String home = '/';
  static const String login = '/login';
  static const String splash = '/splash';
  static const String profile = 'profile';
}

class AppRouter {
  final AuthenticationBloc _bloc;
  late GoRouter goRouter;

  AppRouter(this._bloc) {
    goRouter = _router(_bloc);
  }

  GoRouter _router(AuthenticationBloc bloc) => GoRouter(
        debugLogDiagnostics: true,
        initialLocation: Path.splash,
        refreshListenable: GoRouterRefreshStream(bloc.stream),
        redirect: (context, state) => _redirect(state, bloc),
        routes: _routes,
      );

  String? _redirect(GoRouterState state, AuthenticationBloc bloc) {
    if (_isUnauthenticated(state, bloc)) {
      return Path.login;
    }
    if (_isAuthenticatedButNotAtHome(state, bloc)) {
      return Path.home;
    }

    return null;
  }

  bool _isUnauthenticated(GoRouterState state, AuthenticationBloc bloc) =>
      bloc.state == const AuthenticationState.unauthenticated() &&
      state.location != Path.login;

  bool _isAuthenticatedButNotAtHome(
    GoRouterState state,
    AuthenticationBloc bloc,
  ) =>
      bloc.state == const AuthenticationState.authenticated() &&
      (state.location == Path.login || state.location == Path.splash);

  final List<GoRoute> _routes = [
    GoRoute(
      name: AppScreenName.splash,
      path: Path.splash,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SplashScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      name: AppScreenName.login,
      path: Path.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: AppScreenName.home,
      path: Path.home,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
      routes: [
        GoRoute(
          name: AppScreenName.profile,
          path: Path.profile,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ProfileScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
          ),
        ),
      ],
    ),
  ];
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (_) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
