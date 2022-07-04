import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText2 extends StatelessWidget {
  const BodyText2(this.data,
      {Key? key, this.isDark = true, this.overflow, this.isBold = false})
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
            color: isDark ? AppColors.dark : AppColors.pinkishGrey,
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w500));
  }
}
