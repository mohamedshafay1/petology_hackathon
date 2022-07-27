import 'dart:html';
import 'package:flutter/material.dart';
import 'package:petology/Constant/Constant.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';
import 'package:petology/View/Component/Card/Card_TFF.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';


class RequestPage extends StatelessWidget {
  var nameController = TextEditingController();
  var categoryController = TextEditingController();
  var monthController = TextEditingController();
  var yearController = TextEditingController();
  var sizeController = TextEditingController();
  var breedController = TextEditingController();
  var genderController = TextEditingController();
  var hairController = TextEditingController();
  var careController = TextEditingController();
  var houseController = TextEditingController();
  var colorController = TextEditingController();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();
  var descriptionController = TextEditingController();
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
                height: paddingLarge,
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
                        height:paddingLarge,
                      ),
                      Image(
                        image: AssetImage(
                            "Assets/Images/RequestImage.jpg"
                        ),
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Custom_Card_TTF(
                        title: 'Name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        type: TextInputType.text,
                        onTap: () {},
                        titleController: nameController,
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Custom_Card_TTF(
                        title: 'Category',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        type: TextInputType.text,
                        onTap: () {},
                        titleController: categoryController,
                        readonly: true,
                        suffixIcon: DropdownButton<String>(
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              onTap: () {
                                categoryController.text = value;
                              },
                              value: value,
                              child: Text(value),
                            );

                          }).toList(),
                          icon: Icon(Icons.arrow_drop_down),
                          elevation: 0,
                          autofocus: false,
                          underline: Container(),




                          onChanged: (_) {},

                        ),
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Row(
                        children:
                        [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Year',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: yearController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      yearController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),
                          SizedBox(
                            width: paddingLarge,
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'month',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: monthController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      monthController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Row(
                        children:
                        [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Size',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: sizeController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      sizeController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),
                          SizedBox(
                            width: paddingLarge,
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Breed',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: breedController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      breedController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Row(
                        children:
                        [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Gender',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: genderController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      genderController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),
                          SizedBox(
                            width: paddingLarge,
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Breed',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: breedController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      breedController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Row(
                        children:
                        [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Hair Lenght',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: hairController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      hairController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),
                          SizedBox(
                            width: paddingLarge,
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Care',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: careController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      careController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Row(
                        children:
                        [
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'House Trained',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: houseController,
                              readonly: true,
                              suffixIcon: DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      houseController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );

                                }).toList(),
                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),




                                onChanged: (_) {},

                              ),
                            ),
                          ),
                          SizedBox(
                            width: paddingLarge,
                          ),
                          Expanded(
                            child: Custom_Card_TTF(
                              title: 'Color',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: colorController,
                              readonly: true,

                            ),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: paddingLarge,vertical: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Detect your current location',
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Custom_Card_TTF(
                        title: 'Location',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        type: TextInputType.streetAddress,
                        onTap: () {},
                        titleController: locationController,
                        readonly: true,
                        suffixIcon: DropdownButton<String>(
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              onTap: () {
                                locationController.text = value;
                              },
                              value: value,
                              child: Text(value),
                            );

                          }).toList(),
                          icon: Icon(Icons.arrow_drop_down),
                          elevation: 0,
                          autofocus: false,
                          underline: Container(),




                          onChanged: (_) {},

                        ),
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Custom_Card_TTF(
                        title: 'Phone Number',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        type: TextInputType.phone,
                        onTap: () {},
                        titleController: phoneController,
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Container(
                        height: 130,
                        child: Custom_Card_TTF(
                          title: 'description',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          type: TextInputType.text,
                          onTap: () {},
                          titleController: descriptionController,
                        ),
                      ),
                      SizedBox(
                        height: paddingLarge,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: paddingLarge,vertical: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Vaccinated (up to date )',
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: CustomButton(
                          text: 'Send',
                          backColor: BottonColor,
                          textColor: white,
                          height: 30,
                          width: 40,
                          fontSize: 18,
                          onPressed: () {},
                          borderColor: white,
                        ),
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