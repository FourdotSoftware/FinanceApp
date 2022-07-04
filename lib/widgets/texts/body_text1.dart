import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText1 extends StatelessWidget {
  const BodyText1(this.data, {Key? key, this.overflow}) : super(key: key);
  final String data;

  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(data,
        overflow: overflow,
        style: GoogleFonts.montserrat(
            color: AppColors.pinkishGrey,
            fontSize: 16,
            fontWeight: FontWeight.w500));
  }
}
