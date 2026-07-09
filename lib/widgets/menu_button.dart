import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {

  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const MenuButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: SizedBox(
        width: double.infinity,
        height: 60,

        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
