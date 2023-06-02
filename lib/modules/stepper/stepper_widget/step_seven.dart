import 'package:flutter/material.dart';

import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_strings.dart';

class StepSevenScreen extends StatelessWidget {
  const StepSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
        child: CommonTextWidget(text: AppStrings.alreadyhaveanaccount),
      );
  }
}
