import 'dart:html';

import 'package:flutter/material.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';
import 'package:petology/View/Component/Card/Card_TFF.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';

import '../../../Constant/Constant.dart';
class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
                  // child: Row(
                  //   children: [
                  //     Image(image:AssetImage(
                  //         "Assets/Images/Petology.png"
                  //     ) ),
                  //     SizedBox(
                  //       width: SizedBoxWidth,
                  //     ),
                  //     TextButton(
                  //       onPressed: (){
                  //
                  //       },
                  //       child:Text(
                  //         "About us",
                  //         style: TextStyle(
                  //           color: white,
                  //           fontSize: 20,
                  //         ),
                  //
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: SizedBoxWidth,
                  //     ),
                  //     TextButton(
                  //       onPressed: (){
                  //
                  //       },
                  //       child:Text(
                  //         "Category",
                  //         style: TextStyle(
                  //           color: white,
                  //           fontSize: 20,
                  //         ),
                  //
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: SizedBoxWidth,
                  //     ),
                  //     TextButton(
                  //       onPressed: (){
                  //
                  //       },
                  //       child:Text(
                  //         "Servise",
                  //         style: TextStyle(
                  //           color: white,
                  //           fontSize: 20,
                  //         ),
                  //
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: SizedBoxWidth,
                  //     ),
                  //     TextButton(
                  //       onPressed: (){
                  //
                  //       },
                  //       child:Text(
                  //         "Request",
                  //         style: TextStyle(
                  //           color: white,
                  //           fontSize: 20,
                  //         ),
                  //
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: SizedBoxWidth,
                  //     ),
                  //     ElevatedButton(onPressed: (){},
                  //         child:
                  //         Text("Sign Up")
                  //     ),
                  //     SizedBox(
                  //       width: 20.0,
                  //     ),
                  //     ElevatedButton(onPressed: (){},
                  //         child:
                  //         Text("Login")
                  //     ),
                  //
                  //
                  //   ],
              SizedBox(
                height: SizedBoxHigh,
              ),
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
                          "Request",
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
                      Image(
                        image: AssetImage(
                            "Assets/Images/RequestImage.jpg"
                        ),
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Custom_Card_TTF(
                        title: "Name",

                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Custom_Card_TTF(
                        title: "Category",
                        suffixIcon:ArrowIcon,
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Year",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                          SizedBox(
                             width:SizedBoxWidth
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Month",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Size",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                          SizedBox(
                              width:SizedBoxWidth
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Bread",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Gender",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                          SizedBox(
                              width:SizedBoxWidth
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Bread",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Haie lenght",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                          SizedBox(
                              width:SizedBoxWidth
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Care & Behavior",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "House Traind",
                              suffixIcon: ArrowIcon,
                            ),
                          ),
                          SizedBox(
                              width:SizedBoxWidth
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: "Color",

                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                        alignment:Alignment.centerLeft ,
                        child: Text(
                          "Detect Your Current Location",
                          style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Custom_Card_TTF(
                        title: "Location",
                        suffixIcon: Icon(Icons.location_on),
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Custom_Card_TTF(
                        title: "Phone Number",
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
                      ),
                      Container(
                        height: 200.0,
                        child: Custom_Card_TTF(
                          title: "Description",


                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                        alignment:Alignment.centerLeft ,
                        child: Text(
                          "Vaccinate (up to date)",
                          style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizedBoxHigh,
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
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:40 ,
              ),
              footerBuilder(),
            ],

          ),
        ),
      ),
    );
  }
}
