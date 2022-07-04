import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTitle extends StatelessWidget {
  const CardTitle(this.data, {Key? key, this.isDark = true, this.overflow})
      : super(key: key);
  final String data;
  final bool isDark;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(data,
        overflow: overflow,
        style: GoogleFonts.montserrat(
            color: isDark ? AppColors.dark : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w800));
  }
}
