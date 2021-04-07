import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sky/helper/binding.dart';
import 'package:sky/view/screens/auth_screen.dart';
import'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner:false,
      home: AuthView( ),
    );
  }
}


