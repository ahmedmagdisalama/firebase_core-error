import 'package:flutter/material.dart';
import 'package:sky/constant.dart';
import 'package:sky/core/view_model/auth_view_model.dart';
import 'package:sky/view/widgets/custom_button.dart';
import 'package:sky/view/widgets/custom_social_button.dart';
import 'package:sky/view/widgets/custom_text.dart';
import 'package:sky/view/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';

class AuthView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         elevation: 0.0,
         backgroundColor: Colors.white,
       ),


        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Welcome,",
                    fontSize: 30,
                  ),
                  CustomText(
                    text: "Sign Up,",
                    fontSize: 20,
                    color: primaryColor,
                  ),
                ],
              ),
              CustomText(
                text: "Sign in to continue",
                fontSize: 12,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                text: "Email",
                hintText: "AhmedSalama@gmail.com",
                onSaved: (val) {},
                validator: (val) {},
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                text: "Password",
                hintText: "*********",
                onSaved: (val) {},
                validator: (val) {},
              ),
              SizedBox(height: 20),
              CustomText(
                alignment: Alignment.topRight,
                text: "Forgot Password",
                fontSize: 12,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              CustomButton(text: "SIGN UP",onPressed: ( ) {},),
              SizedBox(height: 20),
              CustomText(
                alignment: Alignment.center,
                text: "-OR-",
                fontSize: 16,
                color: Colors.black,
              ),
              SizedBox(height: 20),
              CustomSocialButton(text: "Sign In With Facebook",image:"images/facebook.png",onPressed: ( ) {controller.facebookSignInMethod();}, ),
              SizedBox(height: 10),
              CustomSocialButton(text: "Sign In With Google",image:"images/google.png",onPressed: ( ) {
                controller.googleSignInMethod();

              }, ),







            ],
          ),
        ),
      ),
    );
  }
}
