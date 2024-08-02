
import 'package:flutter/material.dart';
import 'package:test_project/screens/menu/view/menu_screen.dart';

class FavoriteScreen extends StatelessWidget {
  static const String routeName = 'favorite_screen';
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenterContainer(text: 'Избранные',);
  }
}
