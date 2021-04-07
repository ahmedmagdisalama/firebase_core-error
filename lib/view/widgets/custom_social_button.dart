import 'package:flutter/material.dart ';

import 'custom_text.dart';
class CustomSocialButton extends StatelessWidget {
  final String text;
  final String image;
  final Function onPressed;

  const CustomSocialButton({  this.text, this.onPressed,this.image})  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        child: Row(

          children: [
           Image.asset( image,width: 20,height: 20,),
            SizedBox(width : 70),

            CustomText(text: text,fontSize: 15,),



          ],

        ),
      ),

    );
  }
}
