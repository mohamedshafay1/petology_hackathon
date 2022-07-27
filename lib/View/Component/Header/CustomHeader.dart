import 'package:flutter/material.dart';
import 'package:petology/View/Component/AuthenComp/HeaderItem.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';
// import 'package:petology/view/widgets/AuthWidgets/LoginScreen/MenuItem.dart';
// import 'package:petology/view/widgets/CustomButton.dart';

import '../../../Constant/Constant.dart';

class Header extends StatefulWidget {

  List<GlobalKey>? sections ;

  Header({this.sections});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            colors: gradient
        ),
      ),
      height: MediaQuery
          .of(context)
          .size
          .height * .1,
      child: Row(
        children: [
          Image.asset(
            'Assets/Images/Petology.png',
            height: 40,
          ),
          Expanded(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderItem(header: 'About us',),
                  HeaderItem(header: 'Category',),
                  HeaderItem(header: 'Servise',),
                  HeaderItem(header: 'Request',),
                ],
              ),
            ),
          ),
          Row(
            children: [
              CustomButton(
                text: 'Sign up',
                backColor: Colors.grey,
                textColor: white,
                height: 20,
                width: 40,
                fontSize: 14,
                onPressed: () {},
                borderColor: BottonColor,
              ),
              const SizedBox(width: paddingLarge / 2,),
              CustomButton(
                text: 'Login',
                backColor: Colors.transparent,
                textColor: white,
                height: 20,
                width: 40,
                fontSize: 14,
                onPressed: () {},
                borderColor: BottonColor,
              ),


            ],
          )
        ],
      ),
    );
  }
}