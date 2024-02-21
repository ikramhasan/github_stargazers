import 'package:auto_route/auto_route.dart';
import 'package:github_star_gazer/routes/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/'),
        AutoRoute(page: SignInRoute.page, path: '/sign-in'),
        AutoRoute(page: AuthorizationRoute.page, path: '/auth'),
        AutoRoute(page: StarredReposRoute.page, path: '/starred'),
        AutoRoute(page: SearchedReposRoute.page, path: '/search'),
        AutoRoute(page: RepoDetailRoute.page, path: '/detail'),
      ];
}
