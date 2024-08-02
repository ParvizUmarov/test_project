
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

final feedBottomSheetNavigatorKey = GlobalKey<NavigatorState>();

final config = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/chat_screen',
  debugLogDiagnostics: !kReleaseMode,
  routes: $appRoutes,
);