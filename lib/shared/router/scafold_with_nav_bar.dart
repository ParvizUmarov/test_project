import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/screens/chat/view/chat_screen.dart';
import 'package:test_project/shared/theme/color.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  @override
  Widget build(BuildContext context) {
    Widget scaffold = Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomNavigationBackground,
        type: BottomNavigationBarType.fixed,
        useLegacyColorScheme: false,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/icon/menu.svg',
              isActive: false,
            ),
            activeIcon: _buildIcon(
              'assets/icon/menu.svg',
              isActive: true,
            ),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/icon/chat.svg',
              isActive: false,
            ),
            activeIcon: _buildIcon(
              'assets/icon/chat.svg',
              isActive: true,
            ),
            label: 'Чат',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/icon/favorite.svg',
              isActive: false,
            ),
            activeIcon: _buildIcon(
              'assets/icon/favorite.svg',
              isActive: true,
            ),
            label: 'Избранные',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              'assets/icon/settings.svg',
              isActive: false,
            ),
            activeIcon: _buildIcon(
              'assets/icon/settings.svg',
              isActive: true,
            ),
            label: 'Настройки ',
          ),
        ],
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
      ),
    );
    return scaffold;
  }

  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  Widget _buildIcon(
    String image, {
    required bool isActive,
    bool applyColorFilter = true,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(
            isActive ? AppColors.buttonActiveColor : AppColors.buttonColor,
            BlendMode.srcIn),
      ),
    );
  }
}
