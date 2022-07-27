import 'package:flutter/material.dart';
import 'package:petology/Constant/Constant.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';


class CustomContainer extends StatelessWidget {
  Color? backColor;
  String? dogName;
  String? sharedName;
  CustomContainer({this.backColor, this.dogName, this.sharedName});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: paddingLarge / 4),
      height: 350,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backColor,
        border: Border.all(
          color: Colors.black.withOpacity(0.3),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash-removebg-preview.png')
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '$dogName',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'Read more',
            fontSize: 15,
            backColor: hPrimary,
            borderColor: hPrimary,
            height: 30,
            width: 60,
            onPressed: () {},
            textColor: const Color(0xffFFE3C5),
            borderRadius: 50,

          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '${sharedName}',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: BottonColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          if(sharedName !=null)
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffFFE3C5),
                borderRadius: BorderRadius.circular(30),
              ),
              height: 8,
              width: 80,
            )
        ],
      ),
    );
  }
}