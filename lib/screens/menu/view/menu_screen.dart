import 'package:flutter/material.dart';
import 'package:test_project/shared/theme/color.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = 'menu_screen';

  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenterContainer(
      text: 'Меню',
    );
  }
}

class CenterContainer extends StatelessWidget {
  final String text;

  const CenterContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.grey.shade400,
        shadowColor: Colors.black,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            style:
                const TextStyle(color: AppColors.buttonColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
