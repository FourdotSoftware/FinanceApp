import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_images.dart';

class ProfileField extends StatelessWidget {
  const ProfileField({
    Key? key,
    this.isMini = false,
    required this.image,
  }) : super(key: key);
  final bool isMini;
  final String image;
  @override
  Widget build(BuildContext context) => Container(
      height: isMini ? 48 : 100,
      width: isMini ? 48 : 100,
      decoration: BoxDecoration(
          borderRadius:
              isMini ? BorderRadius.circular(16) : BorderRadius.circular(40),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.warmBlue,
                AppColors.sapphire,
                AppColors.cornflowerBlueTwo
              ])),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          height: isMini ? 48 : 100,
          width: isMini ? 48 : 100,
        ),
      ));
}
