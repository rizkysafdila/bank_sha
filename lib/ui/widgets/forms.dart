import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const CustomFormField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.maxLength,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLength: maxLength,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
