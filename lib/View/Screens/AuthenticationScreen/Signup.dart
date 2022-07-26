import 'package:flutter/material.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';
import 'package:petology/View/Component/Card/Card_TFF.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';

import '../../../Constant.dart';
class Signup extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              const SizedBox(
                height: 200,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [

                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 700,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(paddingLarge/2),
                        border: Border.all(color: black, width: 2),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(paddingLarge/2),
                      child: Column(
                        children: [
                          Text(
                            'Sign Up',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: hPrimary),
                          ),
                          const SizedBox(
                            height: paddingLarge/3,
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
                          const SizedBox(
                            height: paddingLarge/4,
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
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Custom_Card_TTF(
                            title: 'First Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter First name';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            titleController: firstNameController,
                          ),
                          const SizedBox(
                            height: paddingLarge/2,
                          ),
                          Custom_Card_TTF(
                            title: 'Last Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Last Name';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            titleController: lastNameController,
                          ),
                          const SizedBox(
                            height: paddingLarge/2,
                          ),
                          Custom_Card_TTF(
                            title: 'Email',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter emailAddress';
                              }
                              return null;
                            },
                            type: TextInputType.emailAddress,
                            onTap: () {},
                            titleController: emailController,
                          ),
                          const SizedBox(
                            height: paddingLarge/2,
                          ),
                          Custom_Card_TTF(
                            title: 'password',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            type: TextInputType.visiblePassword,
                            onTap: () {},
                            titleController: passwordController,
                          ),
                          const SizedBox(
                            height: paddingLarge/2,
                          ),
                          Custom_Card_TTF(
                            title: 'Re-password',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            type: TextInputType.visiblePassword,
                            onTap: () {},
                            titleController: rePasswordController,
                          ),
                          const SizedBox(
                            height: paddingLarge/2,
                          ),
                          Custom_Card_TTF(
                            title: 'Country',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter country';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            titleController: countryController,
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: BottonColor,
                            ),
                          ),
                          const SizedBox(
                            height: paddingLarge/2,
                          ),
                          Container(
                            width: double.infinity,
                            child: CustomButton(
                              text: 'Sign Up',
                              backColor: BottonColor,
                              textColor: white,
                              height: 25,
                              width: 40,
                              fontSize: 18,
                              onPressed: () {},
                              borderColor: white,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text(
                                'Already have an Account', style: Theme
                                  .of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign in', style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.black),
                                ),
                              )
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -12,
                    left: 0,
                    child: Container(
                      constraints:
                      const BoxConstraints(maxHeight: 70, maxWidth: 70),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/SignupBackground.png',
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: 0,
                    child: Container(
                      constraints:
                      const BoxConstraints(maxHeight: 100, maxWidth: 100),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/SignupBackground.png',
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 400,
                    left: 500,
                    child: Container(
                      constraints:
                      const BoxConstraints(maxHeight: 300, maxWidth: 300),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/SignupBackground2.png',
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 600,
                    child: Container(
                      constraints:
                      const BoxConstraints(maxHeight: 300, maxWidth: 300),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/SignupBackground2.png',
                            ),
                          )),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: paddingLarge*2  ,
              ),
          footerBuilder(),

            ],
          ),
        ),
      ),
    );
  }
}
