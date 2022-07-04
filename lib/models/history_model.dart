import 'package:finance_concept/models/user_model.dart';
import 'package:flutter/material.dart';

class HistoryModel {
  final UserModel? user;
  final String? historyDate;

  final String? cost;

  HistoryModel({this.user, this.historyDate, this.cost});
}
