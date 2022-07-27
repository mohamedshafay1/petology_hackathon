import 'package:flutter/material.dart';
import 'package:petology/Constant/Constant.dart';
import 'package:petology/View/Component/Bottom/CustomBotton.dart';



class SectionFour extends StatelessWidget {
  const SectionFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: paddingLarge),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Text(
                'Our friends who  \nlooking for a house',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
                textAlign: TextAlign.center,

              ),
              Container(
                constraints:
                const BoxConstraints(maxHeight: 80, maxWidth: 100 ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'Assets/Images/FooterBackground.png',
                      ),
                    )),
              )

            ],
          ),
          const SizedBox(
            height: paddingLarge / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: paddingLarge / 2),
              padding: EdgeInsets.symmetric(vertical: paddingLarge / 4),
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
                        horizontal: paddingLarge / 2),
                    height: 180,
                    width: double.infinity,
                    child: Image.asset(
                      'Assets/Images/karstenDog.png',
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                  CustomButton(
                    text: 'Read more',
                    fontSize: 15,
                    backColor: white,
                    borderColor: hPrimary,
                    height: 20,
                    width: 40,
                    onPressed: (){},
                    textColor:black,





                  )


                ],
              ),
            )),
          ),
          const SizedBox(
            height: paddingLarge / 2,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * .2,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: hPrimary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                Text(
                  'Show More',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(
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
          ),


        ],
      ),
    );
  }
}