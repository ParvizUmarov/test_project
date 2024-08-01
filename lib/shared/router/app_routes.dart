import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/screens/chat/chat.dart';
import 'package:test_project/screens/favorite/favorite.dart';
import 'package:test_project/screens/menu/menu.dart';
import 'package:test_project/screens/settings/settings.dart';
import 'package:test_project/shared/router/scafold_with_nav_bar.dart';

part 'app_routes.g.dart';

const shellRestorationScopeId = 'shellRestorationScopeId';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final menuNavigatorKey = GlobalKey<NavigatorState>();
final chatNavigatorKey = GlobalKey<NavigatorState>();
final favoritesNavigatorKey = GlobalKey<NavigatorState>();
final settingsNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<HomeShellRoute>(branches: [
  TypedStatefulShellBranch<MainBranch>(
    routes: [
      TypedGoRoute<MenuRoute>(path: '/menu_screen', name: MenuScreen.routeName)
    ],
  ),
  TypedStatefulShellBranch<ChatBranch>(
    routes: [
      TypedGoRoute<ChatRoute>(path: '/chat_screen', name: ChatScreen.routeName),
    ],
  ),
  TypedStatefulShellBranch<FavoriteBranch>(
    routes: [
      TypedGoRoute<FavoriteRoute>(
          path: '/favorite_screen', name: FavoriteScreen.routeName),
    ],
  ),
  TypedStatefulShellBranch<SettingsBranch>(
    routes: [
      TypedGoRoute<SettingsRoute>(
          path: '/settings_screen', name: SettingsScreen.routeName)
    ],
  ),
])
class HomeShellRoute extends StatefulShellRouteData {
  const HomeShellRoute();

  static const String $restorationScopeId = shellRestorationScopeId;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNavBar(
      navigationShell: navigationShell,
    );
  }
}

class MainBranch extends StatefulShellBranchData {
  const MainBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = menuNavigatorKey;
}

class ChatBranch extends StatefulShellBranchData {
  const ChatBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = chatNavigatorKey;
}

class FavoriteBranch extends StatefulShellBranchData {
  const FavoriteBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = favoritesNavigatorKey;
}

class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
}

class MenuRoute extends GoRouteData {
  const MenuRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MenuScreen();
  }
}

class ChatRoute extends GoRouteData {
  const ChatRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChatScreen();
  }
}

class FavoriteRoute extends GoRouteData {
  const FavoriteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FavoriteScreen();
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreen();
  }
}
