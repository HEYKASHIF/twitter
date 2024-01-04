import 'package:flutter/material.dart';
import 'package:twitter/theme/pallete.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backGroundColor;
  final Color textColor;
  const RoundedSmallButton({
    super.key,
    required this.onTap,
    required this.label,
    this.backGroundColor = Pallete.whiteColor,
    this.textColor = Pallete.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
      ),
      backgroundColor: backGroundColor,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
    );
  }
}
