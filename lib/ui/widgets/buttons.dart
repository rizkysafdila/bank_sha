import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton(
      {super.key,
      required this.text,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton(
      {super.key,
      required this.text,
      this.width = double.infinity,
      this.height = 24,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          text,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
