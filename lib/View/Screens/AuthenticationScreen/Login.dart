import 'package:flutter/material.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';
import 'package:petology/View/Component/Card/Card_TFF.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';

import '../../../Constant/Constant.dart';
class Login extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body:SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children: [
          Header(),
          SizedBox(
            height: 250,
          ),

          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
        decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
                color:white,
                border: Border.all(color: black,width: 1)
        ),
        constraints: BoxConstraints(
              maxWidth: 700,
        ),
        child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                  children: [
                    Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login",
                style:
                TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
        ),
                    SizedBox(
                      height:SizedBoxHigh,
                    ),
                    Custom_Card_TTF(
                      title: "Email",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },

                    ),
                    SizedBox(
                      height:SizedBoxHigh,
                    ),
                    Custom_Card_TTF(
                      title: "Password",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },

                    ),
                    SizedBox(
                      height:SizedBoxHigh,
                    ),
                    Container(
                      width: double.infinity,
                      child: CustomButton(
                        text: 'Sent',
                        backColor: BottonColor,
                        textColor: white,
                        height: 25,
                        width: 40,
                        fontSize: 18,
                        onPressed: () {},
                        borderColor: white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      alignment:Alignment.centerRight ,
                      child: Text(
                        "Forget password",
                        style: TextStyle(
                            color: black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    SizedBox(
                      height:SizedBoxHigh,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            height: 2,
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        Container(
                            alignment: Alignment.topCenter,
                            padding: const EdgeInsets.only(
                                right: 10, left: 10, bottom: 10),
                            child: Text(
                              'or',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: Colors.black,
                              ),

                            )),
                        const Expanded(
                          child: Divider(
                            height: 2,
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:SizedBoxHigh,
                    ),
                    Row(
                      children:
                      [
                        Expanded(
                          child: CustomButton(
                            text: 'Facebook',
                            textColor: white,
                            backColor: Color(0xff2F4582),
                            width: 15,
                            height: 25,
                            onPressed: (){},
                            borderColor: white,
                            fontSize: 20,
                            image: 'Assets/Icons/FaceBook.png',

                          ),
                        ),
                        const SizedBox(
                          width: paddingLarge/4,
                        ),
                        Expanded(
                          child: CustomButton(
                            text: 'Google',
                            textColor: black,
                            backColor: white,
                            width: 15,
                            height: 25,
                            onPressed: (){},
                            borderColor: BottonColor,
                            fontSize: 20,
                            image: 'Assets/Icons/Google.png',

                          ),
                        ),


                      ],

                    ),
                    SizedBox(
                      height:SizedBoxHigh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text(
                          'Dont have an account?', style: Theme
                            .of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up', style: Theme
                              .of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.black),
                          ),
                        )
                      ],
                    ),

    ]
              ),
    ),
    ),
              Positioned(
                left: 0,
                right: 0,
                top: -145,
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'Assets/Images/Dog paw-cuate.png',
                        ),
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height:40 ,
          ),
          footerBuilder(),
  ]
        ),
        ),
    ),
    );
  }
}
