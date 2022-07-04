import 'package:finance_concept/const/app_colors.dart';
import 'package:finance_concept/const/app_images.dart';
import 'package:finance_concept/const/app_paddings.dart';
import 'package:finance_concept/const/app_texts.dart';
import 'package:finance_concept/widgets/texts/body_text2.dart';
import 'package:finance_concept/widgets/texts/title2.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cornflowerBlue,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [circleField(), boardField()],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset(AppImages.badrun), Container(), Container()],
          ),
        ],
      ),
    );
  }

  Opacity circleField() {
    return Opacity(
      opacity: 0.03,
      child: Container(
        height: 450,
        decoration: BoxDecoration(
            color: AppColors.iceBlue, borderRadius: BorderRadius.circular(130)),
        // backgroundColor: AppColors.iceBlue,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.cornflowerBlue,
              radius: 120,
            ),
          ],
        ),
      ),
    );
  }

  Expanded boardField() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.iceBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(72), topRight: Radius.circular(72))),
        child: AppPaddings.pagePadding(
          child: Column(
            children: [
              AppPaddings.verticalPadding2(child: Title2(AppTexts.title)),
              BodyText2(
                AppTexts.subTitle,
                isDark: false,
              ),
              AppPaddings.verticalPadding(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Container(
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                        color: AppColors.cornflowerBlue,
                        borderRadius: BorderRadius.circular(28)),
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.iceBlue,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
