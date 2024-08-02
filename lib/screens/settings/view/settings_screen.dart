import 'package:flutter/material.dart';
import 'package:test_project/screens/menu/menu.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'settings_screen';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenterContainer(text: 'Настройки',);
  }
}
