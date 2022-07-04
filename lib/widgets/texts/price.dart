import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Price extends StatelessWidget {
  const Price(this.data, {Key? key, this.isRed = false, this.overflow})
      : super(key: key);
  final String data;
  final bool isRed;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(data + "\$",
        overflow: overflow,
        style: GoogleFonts.montserrat(
            color: isRed ? AppColors.coral : AppColors.emerald,
            fontSize: 20,
            fontWeight: FontWeight.w600));
  }
}
