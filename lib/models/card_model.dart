import 'package:flutter/material.dart';

import 'history_model.dart';

class CardModel {
  final String? bankName;
  final String? cardName;
  final String? cardNo;
  final String? userName;
  final String? date;
  final List<HistoryModel>? historyList;

  CardModel(
      {this.bankName,
      this.historyList,
      this.cardName,
      this.cardNo,
      this.userName,
      this.date});
}
