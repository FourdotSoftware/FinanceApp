import 'package:finance_concept/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Title3 extends StatelessWidget {
  const Title3(this.data, {Key? key, this.isLight = false, this.overflow})
      : super(key: key);
  final String data;
  final bool isLight;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(data,
        overflow: overflow,
        style: GoogleFonts.montserrat(
            color: isLight ? Colors.white : AppColors.dark,
            fontSize: 24,
            fontWeight: FontWeight.bold));
  }
}
