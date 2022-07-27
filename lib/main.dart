import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/View/Screens/HomeScreen/Cuibt/AppCuibt.dart';
import 'Constant/Constant.dart';
import 'Constant/EndPoint.dart';
import 'Controller/CachHelper.dart';
import 'Controller/DioHelper.dart';
//import 'View/Component/Card/Card_TFF.dart';
import 'View/Screens/AuthenticationScreen/Cubit/cubit.dart';
import 'View/Screens/AuthenticationScreen/Login.dart';

import 'View/Screens/HomeScreen/AboutScreen/AboutScreen.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  await CacheHelper.init();
  token = CacheHelper.getData(key: 'token');
  Widget startScreen;
  if (token != null) {
    startScreen = AboutScreen();
  } else {
    startScreen = Login();
  }

  runApp(MultiBlocProvider(providers: [
    BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
    BlocProvider<AppCubit>(
        create: (context) => AppCubit()
          ..getInfoData()
          ..getFirstSectionData()
          ..getHowToFeedData()
          ..getFilterData()

    )
  ], child: MyApp(token: token, startScreen: startScreen)));
}

class MyApp extends StatelessWidget {
  var token;
  Widget startScreen;

  MyApp({this.token, required this.startScreen});

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
      home: startScreen,
    );

  }
}


