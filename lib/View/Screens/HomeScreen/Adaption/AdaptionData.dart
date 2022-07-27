import 'package:flutter/material.dart';
import 'package:petology/Constant/Constant.dart';
import 'package:petology/View/Component/Footer/CustomFooter.dart';
import 'package:petology/View/Component/Header/CustomHeader.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdaptionDataScreen extends StatelessWidget {
  var pageController = PageController();
  bool isLast = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    maxHeight: 700),
                decoration: const BoxDecoration(
                  gradient:  LinearGradient(
                      colors: gradient
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: paddingLarge,horizontal: paddingLarge),
                      child: Column(

                        children: [
                          Expanded(
                            child: PageView.builder(

                              itemBuilder: (context, index) => const Image(
                                image:   AssetImage(
                                  'Assets/Images/Elsa.png',
                                ),

                              ),
                              itemCount: 3,
                              controller: pageController,
                              onPageChanged: (index) {
                                // if (index == 3 - 1) {
                                //   setState(() {
                                //     isLast = true;
                                //   });
                                // } else {
                                //   setState(() {
                                //     isLast = false;
                                //   });
                                // }
                              },
                            ),
                          ),
                          SmoothPageIndicator(
                              controller: pageController,
                              count: 3,
                              effect:const ExpandingDotsEffect(
                                activeDotColor:  Color(0xffFFE3C5),
                                dotColor: Colors.grey,
                                spacing: 150,
                                radius: 150,
                                dotHeight: 30,
                                dotWidth: 30,
                                expansionFactor: 1.5,

                              ) ),
                        ],
                      ),
                    ),
                    Positioned(child: IconButton(onPressed: ()
                    {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.easeInToLinear);
                    }, icon: const CircleAvatar(
                      backgroundColor:  Color(0xffFFE3C5),
                      radius: 20,
                      child:  Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff674739),),
                    ),),
                      right: 0,
                      top: 0,
                      bottom: 0,
                      width: 80,

                    ),
                    Positioned(child: IconButton(onPressed: ()
                    {
                      pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);

                    }, icon:  const CircleAvatar(
                      radius: 20,
                      backgroundColor:   Color(0xffFFE3C5),
                      child:  Icon(Icons.arrow_back_ios,color: Color(0xff674739),),
                    ),),
                      left: 0,
                      top: 0,
                      bottom: 0,
                      width: 80,

                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: white,
                child: Column(
                  children: [

                    Container(
                      width: double.infinity,
                      color: white,
                      padding: const EdgeInsets.symmetric(vertical: paddingLarge),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: paddingLarge*2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ELSA',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Share by:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                    color: black,
                                  ),
                                ),
                                Text(
                                  'ELSA',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                    color: black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children:
                                  [
                                    const Icon(Icons.phone,color: black,size: paddingLarge,),
                                    const SizedBox(
                                      width: paddingLarge/2,
                                    ),
                                    const Icon(Icons.call,color: black,size: paddingLarge,),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'Domestic Short Hair  Fredericton, NB',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Container(
                              // clipBehavior: Clip.none,
                              color: const Color(0xffF1F1F1),
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: paddingLarge/2,),

                              child: Text(
                                'Adult  Female  Medium  Tabby (Brown / Chocolate)',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: paddingLarge/2
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'About',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'House Train',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            Text(
                              'Yes',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'HEALTH',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            Text(
                              'Vaccinations up to date, spayed / neutered.',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'GOOD IN A HOME WITH \nOther cats',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'PREFERS A HOME WITHOUT \nChildren.',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                color: black,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Container(
                              // clipBehavior: Clip.none,
                              color: const Color(0xffF1F1F1),
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: paddingLarge/2,),

                              child: Row(
                                children: [
                                  const Icon(Icons.notifications_none,color: black,size: paddingLarge,),
                                  const SizedBox(
                                    width: paddingLarge/2,
                                  ),
                                  Text(
                                    'Petfinder recommends that you should always take reasonable \nsecurity steps before making adabtion.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: paddingLarge/2
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'Meet ELSA',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'Hi,\nLorem ipsum dolor sit amet, consetetur sadipscing elitr,'
                                  ' sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,'
                                  ' sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'
                                  ' Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\nkasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea.',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                  color: black,
                                  height: 1.7

                              ),
                            ),






                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const footerBuilder()
            ],
          ),
        ),
      ),
    );
  }
}