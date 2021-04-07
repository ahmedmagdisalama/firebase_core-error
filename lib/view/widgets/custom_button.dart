import 'package:flutter/material.dart';
import 'package:sky/view/widgets/custom_text.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CustomButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
       //decoration: BoxDecoration(
         //  borderRadius:BorderRadius.circular(10),),


      color: primaryColor,
      child: TextButton(

          onPressed: onPressed,
          child: CustomText(
            text: text,
            alignment: Alignment.center,
            color: Colors.white,
          )),
    );
  }
}
