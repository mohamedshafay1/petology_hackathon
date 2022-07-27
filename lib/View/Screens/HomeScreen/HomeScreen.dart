import 'package:flutter/material.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';
import 'package:petology/View/Component/CustomCard.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';

import '../../../Constant/Constant.dart';

class HomeScreen extends StatelessWidget {
  List<String> title = [
    'Dogs',
    'Cats',
  ];
  List<String> image = [
    'Assets/Images/dog.png',
    'Assets/Images/cat.png',
    'Assets/Images/Caty.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
               Header(),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width, maxHeight: 600),
                //color: hPrimary,
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                      colors: gradient
                  ),
                ),
                child: Row(children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(paddingLarge * 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Not only people \nNeed A house',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 33, height: 1.7),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                            maxLines: 5,
                            style:
                            Theme.of(context).textTheme.headline6!.copyWith(
                              height: 1.4,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * .2,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(flex: 2),
                                Text(
                                  'Help Them',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: black,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          height: 250,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black.withOpacity(.1),
                              //     blurRadius: 15,
                              //     offset: const Offset(5, 3),
                              //   ),
                              // ],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'Assets/Images/AboutUsImage.png',

                                  ),

                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                ),
              ),
              Container(
                color: white,
                padding: const EdgeInsets.all(paddingLarge),
                constraints: const BoxConstraints(
                    maxWidth: double.infinity, maxHeight: 600),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Assets/Images/Dog&Car.png",
                              height: 500, width: 500,)

                            // Positioned(
                            //   top: 80,
                            //   left: 50 ,
                            //   bottom: 50,
                            //   child: Container(
                            //     constraints: const BoxConstraints(
                            //         maxHeight: 400, maxWidth: 400),
                            //     decoration: const BoxDecoration(
                            //         image: DecorationImage(
                            //           image: AssetImage(
                            //             'Assets/Images/Dog&Car.png',
                            //           ),
                            //         )),
                            //   ),
                            // )
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Petology',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(height: 1.4, color: black),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                color: const Color(0xffF1F1F1),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
                child: Column(
                  children: [
                    Text(
                      'Lets get this right ....',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Text(
                      'What kind of friend you looking for?',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: black.withOpacity(.5), fontSize: 20),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(title.length, (index) => CustomCard(title: title[index], image: image[index]),)
                    ),

                  ],
                ),
              ),
              Container(
                color: const Color(0xffffffff),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Our friends who",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                      textAlign: TextAlign.center,),
                    SizedBox(height: 20),

                    Text(
                      'looking for a house',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: paddingLarge / 2),
                        padding: EdgeInsets.symmetric(vertical: paddingLarge / 2),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: paddingLarge / 3, horizontal: paddingLarge / 2),
                              height: 160,
                              width: 120,
                              child: Image.asset(
                                'Assets/Images/cat.png',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'roy',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: CustomButton(
                                text: 'Read more',
                                fontSize: 15,
                                backColor: white,
                                borderColor: hPrimary,
                                height: 15,
                                width: 40,
                                onPressed: (){},
                                textColor:black,





                              ),
                            )


                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                  color: const Color(0xffF1F1F1),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
                  child: Column(
                    children: [
                      Text("How to care of",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                        textAlign: TextAlign.center,),
                      SizedBox(height: SizedBoxWidth),
                      Text(
                        'your friends ? ',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: SizedBoxWidth),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage("Assets/Icons/food.png"),height: 150,width: 150,),
                          Image(image: AssetImage("Assets/Icons/transport.png"),height: 150,width: 150,),
                          Image(image: AssetImage("Assets/Icons/toys.png"),height: 150,width: 150,),
                          Image(image: AssetImage("Assets/Icons/bowls.png"),height: 150,width: 150,),
                        ],
                      ),
                      SizedBox(height: SizedBoxWidth),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage("Assets/Icons/inoculation.png"),height: 150,width: 150,),
                          Image(image: AssetImage("Assets/Icons/sleeping area.png"),height: 150,width: 150,),
                          Image(image: AssetImage("Assets/Icons/vitamins.png"),height: 150,width: 150,),
                        ],
                      ),


                    ],
                  )

              ),
              // Container(
              //   color: const Color(0xffF1F1F1),
              //   width: double.infinity,
              //   padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Stack(
              //         children: [
              //           Text(
              //             'How to take care of  \nyour friends? ',
              //             style: Theme.of(context).textTheme.headline1!.copyWith(
              //                 color: black,
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 35),
              //             textAlign: TextAlign.center,
              //           ),
              //           // Positioned(
              //           //   top: 0,
              //           //   right: 0,
              //           //   child: Container(
              //           //     constraints:
              //           //     const BoxConstraints(maxHeight: 80, maxWidth: 100 ),
              //           //     decoration: const BoxDecoration(
              //           //         image: DecorationImage(
              //           //           image: AssetImage(
              //           //             'assets/images/Icon material444-pets.png',
              //           //           ),
              //           //         )),
              //           //   ),
              //           // )
              //
              //         ],
              //       ),
              //       const SizedBox(
              //         height: paddingLarge / 2,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: List.generate(3, (index) => Container(
              //           margin: EdgeInsets.symmetric(horizontal: paddingLarge / 2),
              //           padding: EdgeInsets.symmetric(vertical: paddingLarge / 2),
              //           height: 300,
              //           width: 200,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(25),
              //             color: white,
              //             border: Border.all(
              //               color: Colors.black.withOpacity(0.3),
              //               width: 2,
              //             ),
              //           ),
              //           child: Column(
              //             children: [
              //               Container(
              //                 padding: EdgeInsets.symmetric(
              //                     vertical: paddingLarge / 3, horizontal: paddingLarge / 2),
              //                 height: 160,
              //                 width: 120,
              //                 child: Image.asset(
              //                   'Assets/Images/dog.png',
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 'roy',
              //                 style: Theme.of(context)
              //                     .textTheme
              //                     .headline4!
              //                     .copyWith(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Expanded(
              //                 child: CustomButton(
              //                   text: 'Read more',
              //                   fontSize: 15,
              //                   backColor: white,
              //                   borderColor: hPrimary,
              //                   height: 15,
              //                   width: 40,
              //                   onPressed: (){},
              //                   textColor:black,
              //
              //
              //
              //
              //
              //                 ),
              //               )
              //
              //
              //             ],
              //           ),
              //         )),
              //       ),
              //       const SizedBox(
              //         height: paddingLarge / 2,
              //       ),
              //       // Container(
              //       //   alignment: Alignment.center,
              //       //   width: MediaQuery.of(context).size.width * .2,
              //       //   padding: const EdgeInsets.symmetric(vertical: 10),
              //       //   decoration: BoxDecoration(
              //       //     borderRadius: BorderRadius.circular(30),
              //       //     color: hPrimary,
              //       //   ),
              //       //   child: Row(
              //       //     mainAxisAlignment: MainAxisAlignment.center,
              //       //     children: [
              //       //       const Spacer(flex: 2),
              //       //       Text(
              //       //         'Show More',
              //       //         style: Theme.of(context)
              //       //             .textTheme
              //       //             .headline6!
              //       //             .copyWith(
              //       //             fontWeight: FontWeight.bold,
              //       //             fontSize: 20),
              //       //       ),
              //       //       const Spacer(),
              //       //       IconButton(
              //       //         onPressed: () {},
              //       //         icon: const Icon(
              //       //           Icons.arrow_forward_ios,
              //       //           color: black,
              //       //           size: 20,
              //       //         ),
              //       //       ),
              //       //     ],
              //       //   ),
              //       // ),
              //
              //
              //     ],
              //   ),
              // ),


              footerBuilder()

            ]
      ),

      )
      )
    );
  }
}