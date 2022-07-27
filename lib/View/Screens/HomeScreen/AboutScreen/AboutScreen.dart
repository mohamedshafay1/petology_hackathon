import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/View/Component/AboutComponete/Part1.dart';
import 'package:petology/View/Component/AboutComponete/Part2.dart';
import 'package:petology/View/Component/AboutComponete/Part3.dart';
import 'package:petology/View/Component/AboutComponete/Part4.dart';
import 'package:petology/View/Component/AboutComponete/Part5.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';
import 'package:petology/View/Screens/HomeScreen/Cuibt/AppCuibt.dart';
import 'package:petology/View/Screens/HomeScreen/Cuibt/AppStates.dart';


class AboutScreen extends StatelessWidget {
  List<String> title=
  [
    'Dogs',
    'Cats',
  ];List<String> image=
  [
    'assets/images/Icon awesome-dog.png',
    'assets/images/Icon awesome-cat.png',
  ];
  List<GlobalKey> sections = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),

  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return Scaffold(
          body: SafeArea(
            child:  DefaultTabController(
              length: 1,
              child: NestedScrollView(
                headerSliverBuilder: (context, value){
                  return [
                    SliverAppBar(
                      floating: true,
                      pinned: true,
                      snap: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Header(
                          sections: sections,
                        ),
                      ),
                    ),
                  ];
                },
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SectionOne(
                        body: cubit.firstSectionModel!.body,
                        title: cubit.firstSectionModel!.title,
                      ),
                      SectionTwo(
                        key: sections[2],
                      ),
                      SectionThree(title: title, image: image),
                      SectionFour(),
                      SectionFive(),
                      footerBuilder()


                    ],
                  ),
                ),

              ),
            ),
          ),
        );
      },
    );
  }
}




