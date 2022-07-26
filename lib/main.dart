import 'package:flutter/material.dart';

import 'Constant.dart';
import 'View/Component/Card/Card_TFF.dart';
import 'View/Screens/AuthenticationScreen/Login.dart';
import 'View/Screens/AuthenticationScreen/Signup.dart';
import 'View/Screens/HelpScreen.dart';
import 'View/Screens/RequestScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor:white,
        primaryColor: white,
        textTheme:  TextTheme(
          headline1: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
          headline4: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 20,
              color: Colors.white
          ),
          headline6: Theme.of(context).textTheme.subtitle2!.copyWith(
              fontSize: 15,
              color: Colors.white
          ),
        ),
      ),
      home: HelpScreen(),
    );

  }
}


