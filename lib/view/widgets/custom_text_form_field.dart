import 'package:flutter/material.dart';
import 'package:sky/view/widgets/custom_text.dart';
class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final Function onSaved ;
  final Function validator;

  const CustomTextFormField({  this.text, this.hintText, this.onSaved, this.validator}) ;




  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CustomText(
          text: text,
          color: Colors.grey.shade900,
          fontSize: 14,
        ),

        TextFormField(
          onSaved: onSaved,
          validator:validator ,

          decoration: InputDecoration(
            hintText:  hintText,
            hintStyle: TextStyle(
              color: Colors.grey
            ),
          fillColor: Colors.white,
          ),
        ),


      ],

    );
  }
}
