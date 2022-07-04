import 'package:finance_concept/models/card_model.dart';
import 'package:finance_concept/models/feature_model.dart';
import 'package:finance_concept/models/history_model.dart';
import 'package:flutter/material.dart';

class UserModel {
  final String? profilePhoto;
  final String? userName;
  final String? totalBalance;
  final List<FeatureModel>? featureList;
  final List<CardModel>? cardList;

  UserModel(
      {this.profilePhoto,
      this.userName,
      this.featureList,
      this.totalBalance,
      this.cardList});
}
