import 'package:flutter/material.dart';
import 'package:flutter_sec_10/models/onBoardingModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  PageController pageController = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/image.png", title: "First Page"),
    OnBoardingModel(image: "assets/images/image.png", title: "Second Page"),
    OnBoardingModel(image: "assets/images/image.png", title: "Third Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, int index) { 
          return Column(children: [
            Image.asset(onBoardingList[index].image.toString()),
            Text(onBoardingList[index].title.toString(),style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),),
            ElevatedButton(onPressed: (){}, child: Text("Next")),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  onBoardingList.length,
                effect:  ExpandingDotsEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            )
          ],);
        },),

    );
  }
}
