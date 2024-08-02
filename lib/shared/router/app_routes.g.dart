// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeShellRoute,
    ];

RouteBase get $homeShellRoute => StatefulShellRouteData.$route(
      restorationScopeId: HomeShellRoute.$restorationScopeId,
      factory: $HomeShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: MainBranch.$navigatorKey,
          restorationScopeId: MainBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/menu_screen',
              name: 'menu_screen',
              factory: $MenuRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ChatBranch.$navigatorKey,
          restorationScopeId: ChatBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/chat_screen',
              name: 'chat_screen',
              factory: $ChatRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: '/chat_detail_screen',
              name: 'chat_detail_screen',
              factory: $ChatDetailRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: FavoriteBranch.$navigatorKey,
          restorationScopeId: FavoriteBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/favorite_screen',
              name: 'favorite_screen',
              factory: $FavoriteRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          restorationScopeId: SettingsBranch.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/settings_screen',
              name: 'settings_screen',
              factory: $SettingsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeShellRouteExtension on HomeShellRoute {
  static HomeShellRoute _fromState(GoRouterState state) =>
      const HomeShellRoute();
}

extension $MenuRouteExtension on MenuRoute {
  static MenuRoute _fromState(GoRouterState state) => const MenuRoute();

  String get location => GoRouteData.$location(
        '/menu_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatRouteExtension on ChatRoute {
  static ChatRoute _fromState(GoRouterState state) => const ChatRoute();

  String get location => GoRouteData.$location(
        '/chat_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatDetailRouteExtension on ChatDetailRoute {
  static ChatDetailRoute _fromState(GoRouterState state) => ChatDetailRoute(
        $extra: state.extra as Users,
      );

  String get location => GoRouteData.$location(
        '/chat_detail_screen',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $FavoriteRouteExtension on FavoriteRoute {
  static FavoriteRoute _fromState(GoRouterState state) => const FavoriteRoute();

  String get location => GoRouteData.$location(
        '/favorite_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
