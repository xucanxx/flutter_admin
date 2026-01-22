import 'package:flutter/material.dart';

class CryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? iconData;
  CryButton({required this.label, this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (iconData != null) {
      return ElevatedButton.icon(
        icon: Icon(iconData),
        label: Text(this.label),
        onPressed: onPressed,
      );
    } else {
      return ElevatedButton(
        child: Text(this.label),
        onPressed: onPressed,
      );
    }
  }
}
