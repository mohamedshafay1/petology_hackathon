import 'package:flutter/material.dart';
import '../../Constant/Constant.dart';


class CustomCard extends StatefulWidget {
  String title;
  int? index;

  CustomCard({required this.title, required this.image,this.index});

  String image;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isHover=false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {

      },
      onHover: (value)
      {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 20),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: white,
          boxShadow: [if(isHover)
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
          border: Border.all(
            color: Colors.black.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 20, horizontal: 20),
              height: 120,
              width: 120,
              child: Image.asset(
                widget.image,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),


          ],
        ),
      ),
    );
  }
}