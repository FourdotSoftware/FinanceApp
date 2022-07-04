import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText3 extends StatelessWidget {
  const BodyText3(this.data,
      {Key? key, this.overflow, this.isDark = true, this.isBold = false})
      : super(key: key);
  final String data;
  final bool isDark;
  final bool isBold;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(data,
        overflow: overflow,
        style: GoogleFonts.montserrat(
            color: isDark ? AppColors.dark : Colors.white,
            fontSize: 12,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w500));
  }
}
