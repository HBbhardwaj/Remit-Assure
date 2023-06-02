import 'package:flutter/material.dart';


class BottomWidget extends StatelessWidget {
  String? title, icon;
  Color? color;
  bool? isSelect;

  BottomWidget({Key? key, this.icon, this.title, this.color, this.isSelect}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          icon!,
          width: 25.0,
          height: 25.0,
          
          color: color,
        ),
        // Icon(icon),
        const SizedBox(
          height: 5.0,
        ),
       isSelect! ? Container(
         width: 5,
         height: 5,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
       ) : const SizedBox(
         width: 5,
         height: 5,
       ),
      ],
    );
  }
}
