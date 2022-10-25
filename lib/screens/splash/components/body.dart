import 'package:cloning_ecommerce_youtube/constants.dart';
import 'package:cloning_ecommerce_youtube/screens/sign_in/sign_in_screen.dart';
import 'package:cloning_ecommerce_youtube/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to V-Shop, Be King of the World",
      "image": "https://i.ibb.co/V9MtCcg/splash-1-Copy.png"
    },
    {
      "text": "We help you to buy anything, Around Indonesia",
      "image": "https://i.ibb.co/xqPRjhC/splash-2.png"
    },
    {
      "text": "Explore the world, Buy anything",
      "image": "https://i.ibb.co/sscS7XV/splash-3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length, (index) => buildDot(index: index)),
                      ),
                      Spacer(flex: 3,),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionScreenHeight(56),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )
                          )
                        ),
                          onPressed: () {
                            Navigator.pushNamed(context, SignInScreen.routeName);
                          } ,
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                fontSize: getProportionScreenWidth(10),
                                color: Colors.white),
                          )),
                    ),
                      Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: getProportionScreenWidth(5)),
      height: 6,
      width: currentPage == index ? 21 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
