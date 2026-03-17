import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextButtonIcon extends StatelessWidget {
  const PrimaryTextButtonIcon({
    super.key,
    required this.buttonText,
    required this.buttonIcon,
    required this.onPress,
  });

  final void Function() onPress;
  final String buttonText;
  final Icon buttonIcon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: buttonIcon,
      onPressed: onPress,
      label: Text(
        buttonText,
        style: GoogleFonts.lato(
          color: const PredefinedColors().primaryTextColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
