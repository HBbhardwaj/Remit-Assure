import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freshproject/common_widget/common_text_widget.dart';
import 'package:freshproject/utils/app_colors.dart';
import 'package:freshproject/utils/app_strings.dart';

class CommonDropDownBox extends StatelessWidget {
  const CommonDropDownBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            hintText: AppStrings.select,
                            contentPadding:  EdgeInsets.only(
                                ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.lightGreyDark,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.lightGreyDark,
                              ),
                            ),
                          ),
                          dropdownColor: Colors.white,
                          items: <String>[
                            'India',
                            'USA',
                            'Pakistan',
                            'CANADA'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: CommonTextWidget(
                   text:
                                  value,
                                  fontSize: 14,
                                
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => null,
                        ),
    );
  }
}