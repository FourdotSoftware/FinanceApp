import 'package:finance_concept/widgets/texts/title3.dart';
import 'package:flutter/material.dart';

import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../../texts/see_all.dart';

class SectionTitleField extends StatelessWidget {
  const SectionTitleField(
    this.data, {
    Key? key,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return AppPaddings.verticalPadding2(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Title3(data), SeeAll(AppTexts.viewAll)],
      ),
    );
  }
}
