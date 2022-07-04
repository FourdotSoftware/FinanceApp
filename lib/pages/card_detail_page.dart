import 'package:finance_concept/app_data.dart';
import 'package:finance_concept/app_state.dart';
import 'package:finance_concept/const/app_colors.dart';
import 'package:finance_concept/const/app_paddings.dart';
import 'package:finance_concept/const/app_texts.dart';
import 'package:finance_concept/pages/home_page.dart';
import 'package:finance_concept/widgets/pages/home_page.dart/profile_field.dart';
import 'package:finance_concept/widgets/pages/home_page.dart/section_title_field.dart';
import 'package:finance_concept/widgets/texts/body_text1.dart';
import 'package:finance_concept/widgets/texts/body_text2.dart';
import 'package:finance_concept/widgets/texts/body_text3.dart';
import 'package:finance_concept/widgets/texts/card_no.dart';
import 'package:finance_concept/widgets/texts/card_title.dart';
import 'package:finance_concept/widgets/texts/price.dart';
import 'package:finance_concept/widgets/texts/title3.dart';
import 'package:finance_concept/widgets/texts/title4.dart';
import 'package:flutter/material.dart';

import '../const/app_images.dart';

class CardDetailPage extends StatefulWidget {
  const CardDetailPage({Key? key}) : super(key: key);

  @override
  State<CardDetailPage> createState() => _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceBlue,
      body: AppPaddings.pagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            detailPageAppBar(),
            AppPaddings.mediumPadding(),
            Title3(AppTexts.myCard),
            AppPaddings.smallPadding(),
            SizedBox(
              height: 220,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    AppState.selectedCardIndex = value;
                  });
                },
                itemCount: AppData.user.cardList!.length,
                itemBuilder: (context, index) => cardField(
                    bankName: AppData.user.cardList![index].bankName,
                    cardName: AppData.user.cardList![index].cardName,
                    cardNo: AppData.user.cardList![index].cardNo,
                    userName: AppData.user.cardList![index].userName,
                    date: AppData.user.cardList![index].date),
              ),
            ),
            // AppPaddings.smallPadding(),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    AppData.user.cardList!.length,
                    (index) => Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  AppState.selectedCardIndex == index
                                      ? AppColors.cornflowerBlue
                                      : AppColors.pinkishGrey,
                              radius:
                                  AppState.selectedCardIndex == index ? 6 : 4,
                            ),
                            AppPaddings.minPadding(),
                          ],
                        ))),
            SectionTitleField(AppTexts.history),
            Expanded(
              child: ListView.builder(
                itemCount: AppData.user.cardList![AppState.selectedCardIndex]
                    .historyList!.length,
                itemBuilder: (BuildContext context, int index) {
                  return historyItem(
                    userName: AppData.user.cardList![AppState.selectedCardIndex]
                        .historyList![index].user!.userName,
                    image: AppData.user.cardList![AppState.selectedCardIndex]
                        .historyList![index].user!.profilePhoto,
                    date: AppData.user.cardList![AppState.selectedCardIndex]
                        .historyList![index].historyDate,
                    price: AppData.user.cardList![AppState.selectedCardIndex]
                        .historyList![index].cost,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar detailPageAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.warmGreyTwo,
          size: 28,
        ),
      ),
      actions: [
        ProfileField(
          image: AppData.user.profilePhoto ?? "",
          isMini: true,
        )
      ],
    );
  }

  Widget cardField(
      {String? bankName,
      String? cardName,
      String? cardNo,
      String? userName,
      String? date}) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              cardNameField(
                  bankName: bankName, cardName: cardName, cardNo: cardNo),
              cardUserNameField(userName: userName, date: date),
              AppPaddings.symmetricPadding(
                child: Column(
                  children: [
                    Container(
                      height: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                          color: AppColors.pastelBlue),
                      child: Row(
                        children: [Text("")],
                      ),
                    ),
                    AppPaddings.symmetricPadding(
                      child: Opacity(
                        opacity: 0.4,
                        child: Container(
                          height: 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16)),
                              color: AppColors.pastelBlue),
                          child: Row(
                            children: [Text("")],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        AppPaddings.minPadding()
      ],
    );
  }

  Container cardNameField({
    String? bankName,
    String? cardName,
    String? cardNo,
  }) =>
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            color: AppColors.cornflowerBlue),
        child: AppPaddings.standartPadding(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTitle(
                    bankName ?? "",
                    isDark: false,
                  ),
                  Title4(
                    cardName ?? "",
                    isLight: true,
                  )
                ],
              ),
              AppPaddings.standartPadding(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardNo(
                    cardNo ?? "",
                  ),
                  Icon(
                    Icons.contactless_outlined,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      );

  Container cardUserNameField({String? userName, String? date}) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            color: Colors.white),
        child: AppPaddings.symmetricPadding2(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyText3(AppTexts.name),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BodyText2(
                    userName ?? "",
                    isBold: true,
                  ),
                  Row(
                    children: [
                      BodyText3("Exp"),
                      AppPaddings.minPadding(),
                      BodyText3(
                        date ?? "",
                        isBold: true,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );

  ListTile historyItem(
          {String? userName, String? date, String? image, String? price}) =>
      ListTile(
        leading: ProfileField(
          image: image ?? "",
          isMini: true,
        ),
        title: Title4(userName ?? ""),
        subtitle: BodyText2(
          date ?? "",
          isDark: false,
        ),
        trailing: Price(
          price ?? "",
          isRed: int.parse(price!) < 0,
        ),
      );
}
