import 'dart:html';

import 'package:flutter/material.dart';

import '../Constant.dart';
class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Request",
              style:
          TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        Image(image: AssetImage(
          "Assets/Images/RequestImage.jpg"
        ),
        ),
        TextFormField(

          decoration: InputDecoration(
            hintText:"Name",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(Dpadding)),
              borderSide: BorderSide(color:Colors. red,width: 0.5),
            ),
            fillColor: white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(

          decoration: InputDecoration(
            hintText:"Category",
            suffixIcon:Icon(Icons.arrow_downward_outlined),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(Dpadding)),
              borderSide: BorderSide(color:Colors. red,width: 0.5),
            ),
            fillColor: white,
          ),
        ),

      ],
    );
  }
}
