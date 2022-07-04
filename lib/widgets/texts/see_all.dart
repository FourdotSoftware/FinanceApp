import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAll extends StatelessWidget {
  const SeeAll(this.data, {Key? key, this.overflow}) : super(key: key);
  final String data;

  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(data,
        overflow: overflow,
        style: GoogleFonts.montserrat(
            color: AppColors.cornflowerBlue,
            fontSize: 14,
            fontWeight: FontWeight.w500));
  }
}
