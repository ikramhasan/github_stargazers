import 'package:auth/application/auth_notifier.dart';
import 'package:auth/shared/provider.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_star_gazer/routes/routes.dart';
import 'package:github_star_gazer/routes/routes.gr.dart';

final initializationProvider = FutureProvider<void>((ref) async {
  await dotenv.load();
  await ref.read(sembastProvider).init();
  ref.read(dioProvider)
    ..options = BaseOptions(
      headers: {'Accept': 'application/vnd.github.v3.html+json'},
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
    )
    ..interceptors.add(
      ref.read(oAuth2InterceptorProvider),
    );
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
});

class GithubStarGazerApp extends ConsumerWidget {
  final appRouter = AppRouter();

  GithubStarGazerApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (previous, _) {});

    ref.listen<AuthState>(authNotifierProvider, (previous, state) {
      state.maybeMap(
        orElse: () {},
        authenticated: (_) {
          appRouter.pushAndPopUntil(
            const StarredReposRoute(),
            predicate: (route) => false,
          );
        },
        unauthenticated: (_) {
          appRouter.pushAndPopUntil(
            const SignInRoute(),
            predicate: (route) => false,
          );
        },
      );
    });

    return MaterialApp.router(
      title: 'Resocoder Repo Viewer',
      theme: _setUpThemeData(context),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }

  ThemeData _setUpThemeData(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
    );
  }
}
