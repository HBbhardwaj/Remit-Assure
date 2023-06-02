import 'package:flutter/material.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/utils/app_colors.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
 OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  FocusNode focusNode = FocusNode();
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 40,
      child: TextField(
        autofocus: autoFocus,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,

        maxLength: 1,
        cursorColor: AppColor.buttoncolor,
        
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.buttoncolor),
              
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.buttoncolor),
              
            ),
            counterText: '',
            
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
           DataHelper.logValue("checking ", value.length);
          if (value.length == 1) {
            
            FocusScope.of(context).nextFocus();
            // FocusScope.of(context).previousFocus();
          }else  {
           FocusScope.of(context).previousFocus();
        }
       
        
        },
      ),
    );
  }
}