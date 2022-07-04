import 'package:finance_concept/const/app_colors.dart';
import 'package:finance_concept/const/app_images.dart';
import 'package:finance_concept/const/app_texts.dart';
import 'package:finance_concept/models/card_model.dart';
import 'package:finance_concept/models/feature_model.dart';
import 'package:finance_concept/models/history_model.dart';
import 'package:finance_concept/models/user_model.dart';
import 'package:flutter/material.dart';

class AppData {
  static UserModel user = UserModel(
    profilePhoto: AppImages.profile,
    userName: AppTexts.userName,
    totalBalance: AppTexts.money,
    featureList: [
      FeatureModel(
          feature: AppTexts.shopping,
          featureImage: AppImages.shopping,
          featureBackgroundColor: AppColors.deepLavender,
          imageBackgroundColor: AppColors.lightPeriwinkle),
      FeatureModel(
          feature: "Stock",
          featureImage: AppImages.shopping,
          featureBackgroundColor: AppColors.pigPink,
          imageBackgroundColor: AppColors.lightPink),
      FeatureModel(
          feature: AppTexts.shopping,
          featureImage: AppImages.shopping,
          featureBackgroundColor: AppColors.deepLavender,
          imageBackgroundColor: AppColors.lightPeriwinkle),
      FeatureModel(
          feature: AppTexts.shopping,
          featureImage: AppImages.shopping,
          featureBackgroundColor: AppColors.deepLavender,
          imageBackgroundColor: AppColors.lightPeriwinkle),
      FeatureModel(
          feature: AppTexts.shopping,
          featureImage: AppImages.shopping,
          featureBackgroundColor: AppColors.deepLavender,
          imageBackgroundColor: AppColors.lightPeriwinkle)
    ],
    cardList: [
      CardModel(
          bankName: AppTexts.echo,
          cardName: AppTexts.cardName,
          cardNo: AppTexts.cardNo,
          userName: AppTexts.userName,
          date: AppTexts.date,
          historyList: [
            HistoryModel(
              user: UserModel(
                userName: "Merve",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Ali",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "200",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Yumi",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "-400",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Eric",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "100",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
          ]),
      CardModel(
          bankName: AppTexts.echo,
          cardName: AppTexts.cardName,
          cardNo: AppTexts.cardNo,
          userName: AppTexts.userName,
          date: AppTexts.date,
          historyList: [
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Alice",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "200",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Yumi",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "-400",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
          ]),
      CardModel(
          bankName: AppTexts.echo,
          cardName: AppTexts.cardName,
          cardNo: AppTexts.cardNo,
          userName: AppTexts.userName,
          date: AppTexts.date,
          historyList: [
            HistoryModel(
              user: UserModel(
                userName: "Sedat",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-600",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Nagihan",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "200",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Yumi",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "-200",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Eric",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "100",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
          ]),
      CardModel(
          bankName: AppTexts.echo,
          cardName: AppTexts.cardName,
          cardNo: AppTexts.cardNo,
          userName: AppTexts.userName,
          date: AppTexts.date,
          historyList: [
            HistoryModel(
              user: UserModel(
                userName: "Ahmet",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-100",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Mehmet",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "500",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Ali",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "-400",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Eric",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "100",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-300",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-900",
            ),
          ]),
      CardModel(
          bankName: AppTexts.echo,
          cardName: AppTexts.cardName,
          cardNo: AppTexts.cardNo,
          userName: AppTexts.userName,
          date: AppTexts.date,
          historyList: [
            HistoryModel(
              user: UserModel(
                userName: "Veli",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-200",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Leyla",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "200",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Yağmur",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "-400",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Eric",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 10,2022",
              cost: "100",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
            HistoryModel(
              user: UserModel(
                userName: "Aelita",
                profilePhoto: AppImages.profile2,
              ),
              historyDate: "Jan 11,2022",
              cost: "-800",
            ),
          ]),
    ],
  );
}
