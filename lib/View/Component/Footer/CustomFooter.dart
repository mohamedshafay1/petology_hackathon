import 'dart:js';

import 'package:flutter/material.dart';
import '../../../Constant/Constant.dart';
import 'ContactItemBuilder.dart';

class footerBuilder extends StatelessWidget {
  const footerBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.maxFinite,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            colors: gradient
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
                 Image(image:AssetImage("Assets/Images/FooterBackground.png"),
                    width: 90,

                ),


              // Positioned(
              //     right: 5  ,
              //     top: 8,
              //     child:Transform.scale(
              //       scale:2 ,
              //       child: Image.asset("Assets/Images/FooterBackgoung.png",
              //       width: 90),
              //     )
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'For any questions',
                    style: const TextStyle(
                      color: Color(0xFFFFE3C5),
                      fontSize: 30,
                    ),
                  ),
                  ContactItemBuilder(
                    icon: Icons.email,
                    spaceBetween: 10,
                    text: 'Email@petology.com',
                    iconColor: const Color(0xFFAE957B),
                    textStyle: const TextStyle(color:Color(0xFFAE957B) ,fontSize: 20 ),
                  ),
                  ContactItemBuilder(
                    icon: Icons.phone,
                    spaceBetween: 10,
                    text: '(+2)0123456789',
                    iconColor: const Color(0xFFAE957B),
                    textStyle: const TextStyle(color:const Color(0xFFAE957B) ,fontSize: 20 ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [

                Image(image:AssetImage("Assets/Images/FooterBackground.png"),
                  width: 90,

                ),

              // Positioned(
              //     right: 0  ,
              //     top: 0,
              //     child:Transform.rotate(
              //       angle: 80.0 ,
              //       child: Image.asset("Assets/Images/FooterBackgoung.png",
              //       width: 90),
              //     )
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'We are waiting you',
                    style: const TextStyle(
                      color: Color(0xFFFFE3C5),
                      fontSize: 30,
                    ),
                  ),
                  ContactItemBuilder(
                    icon: Icons.location_on_rounded,
                    spaceBetween: 10,
                    text: 'First settlement/Cairo',
                    iconColor: const Color(0xFFAE957B),
                    textStyle: const TextStyle(color:const Color(0xFFAE957B) ,fontSize: 20 ),
                  ),
                  ContactItemBuilder(
                    icon: Icons.location_on_rounded,
                    spaceBetween: 10,
                    text: 'Cairo/Egypt',
                    iconColor: const Color(0xFFAE957B),
                    textStyle: const TextStyle(color:const Color(0xFFAE957B) ,fontSize: 20 ),
                  ),
                ],
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'Assets/Images/FooterDog.png',
                width: 300,
              )
            ],
          ),
        ],
      ),
    );
  }
}

