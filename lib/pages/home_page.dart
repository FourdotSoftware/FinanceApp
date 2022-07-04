import 'package:finance_concept/const/app_colors.dart';
import 'package:finance_concept/const/app_images.dart';
import 'package:finance_concept/const/app_paddings.dart';
import 'package:finance_concept/const/app_texts.dart';
import 'package:finance_concept/pages/card_detail_page.dart';
import 'package:finance_concept/widgets/texts/body_text2.dart';
import 'package:finance_concept/widgets/texts/see_all.dart';
import 'package:finance_concept/widgets/texts/title1.dart';
import 'package:finance_concept/widgets/texts/title3.dart';
import 'package:finance_concept/widgets/texts/title4.dart';
import 'package:flutter/material.dart';

import '../app_data.dart';
import '../widgets/pages/home_page.dart/profile_field.dart';
import '../widgets/pages/home_page.dart/section_title_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer(context),
      backgroundColor: AppColors.iceBlue,
      body: AppPaddings.pagePadding(
        child: Column(
          children: [
            homePageAppBar(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardDetailPage(),
                    ));
              },
              child: Column(
                children: [
                  AppPaddings.smallPadding(
                      child: ProfileField(
                    image: AppData.user.profilePhoto ?? "",
                  )),
                  Title3(AppData.user.userName ?? ""),
                  AppPaddings.verticalPadding(
                    child: BodyText2(
                      AppTexts.totalBalance,
                      isDark: false,
                    ),
                  ),
                  AppPaddings.mediumPadding(
                      child: Title1(AppData.user.totalBalance ?? "")),
                ],
              ),
            ),
            searchField(),
            SectionTitleField(AppTexts.feature),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppData.user.featureList!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      featureField(
                          feature: AppData.user.featureList![index].feature,
                          image: AppData.user.featureList![index].featureImage,
                          imageBackgroundColor: AppData
                              .user.featureList![index].imageBackgroundColor,
                          featureBackgroundColor: AppData
                              .user.featureList![index].featureBackgroundColor),
                      AppPaddings.smallPadding(child: Text(""))
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Drawer appDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: AppColors.cornflowerBlue,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ProfileField(image: AppData.user.profilePhoto ?? ""),
                      AppPaddings.smallPadding(),
                      Title3(
                        AppData.user.userName ?? "",
                        isLight: true,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.iceBlue,
              child: AppPaddings.pagePadding(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CardDetailPage(),
                            ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Title3(
                            AppTexts.myCard,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar homePageAppBar() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.warmGrey),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: AppColors.warmGreyTwo,
            size: 30,
          )
        ],
      );

  TextField searchField() {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.pinkishGrey,
        hintText: AppTexts.hintText,
        // focusColor: AppColors.deepLavender,
        suffixIcon: Icon(
          Icons.tune,
          color: AppColors.pinkishGrey,
        ),
        hintStyle: TextStyle(color: AppColors.pinkishGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Widget featureField(
          {String? feature,
          String? image,
          Color? featureBackgroundColor,
          Color? imageBackgroundColor}) =>
      Container(
        decoration: BoxDecoration(
            color: imageBackgroundColor,
            borderRadius: BorderRadius.circular(32)),
        child: Stack(
          children: [
            AppPaddings.mediumPadding(
              child: Container(
                decoration: BoxDecoration(
                    color: featureBackgroundColor,
                    borderRadius: BorderRadius.circular(16)),
                child: AppPaddings.mediumPadding(
                  child: Title4(
                    feature!,
                    isLight: true,
                  ),
                ),
              ),
            ),
            AppPaddings.imagePadding(child: Image.asset(image!)),
          ],
        ),
      );
}
