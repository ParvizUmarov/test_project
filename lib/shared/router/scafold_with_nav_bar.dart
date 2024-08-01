
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        useLegacyColorScheme: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
            color: Theme.of(context).primaryColor
        ),
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(
              Icons.home,
              isActive: false,
            ),
            activeIcon: _buildIcon(
              Icons.home,
              isActive: true,
            ),
            //label: s.home,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              Icons.search,
              isActive: false,
            ),
            activeIcon: _buildIcon(
              Icons.search,
              isActive: true,
            ),
            //label: s.search,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              Icons.favorite,
              isActive: false,
            ),
            activeIcon: _buildIcon(
              Icons.favorite,
              isActive: true,
            ),
            //label: s.favorites,
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(
              Icons.chat_bubble_rounded,
              isActive: false,
            ),
            activeIcon: _buildIcon(
              Icons.chat_bubble_rounded,
              isActive: true,
            ),
            //label: s.communication,
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
      IconData iconData, {
        required bool isActive,
        bool applyColorFilter = true,
      }) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 3.0),
        child: Icon(iconData,
            color: applyColorFilter
                ? isActive
                   ? Theme.of(context).primaryColor
                   : Colors.grey
                : null)

    );
  }
}
