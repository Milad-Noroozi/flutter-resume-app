import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyProfile(),
  ));
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu_rounded,
                color: Colors.white,
                size: 35.0,
              ),
              Text(
                "Mohammad dev",
                style: TextStyle(
                    color: Colors.white, fontFamily: "ARLRDBD", fontSize: 15.0),
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 22, 22, 30),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home-bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // name and text writer
                Expanded(
                  // name and text animated
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(500.0),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Image.asset(
                                  "assets/images/ben-sweet-2LowviVHZ-E-unsplash.jpg",fit: BoxFit.cover,),
                            )),
                        const Text(
                          "MOHAMMAD DEV",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "ARLRDBD",
                              fontSize: 45),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'ARLRDBD',
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText('Flutter programmer'),
                              TyperAnimatedText('site designer'),
                              TyperAnimatedText('Photoshop Designer'),
                              TyperAnimatedText('WordPress developer'),
                            ],
                          ),
                        ),
                      ]),
                ),
                // Social Networks icon
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/svg/youtube.svg",
                              // ignore: deprecated_member_use
                              color: Colors.white,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/svg/twitter-alt-circle.svg",
                              // ignore: deprecated_member_use
                              color: Colors.white,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/svg/square-phone-hangup.svg",
                              // ignore: deprecated_member_use
                              color: Colors.white,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              "assets/svg/instagram.svg",
                              // ignore: deprecated_member_use
                              color: Colors.white,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
