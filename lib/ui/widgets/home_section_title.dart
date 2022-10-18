import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeSectionTitle extends StatelessWidget {
  final String title;

  const HomeSectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: blackTextStyle.copyWith(
        fontSize: 16,
        fontWeight: semiBold,
      ),
    );
  }
}
