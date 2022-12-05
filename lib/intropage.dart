import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_app/homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            child: Lottie.asset('assets/animations/youtube2.json'),
          ),
          SizedBox(
            height: Get.height * 0.2,
          ),
          Row(
            children: [
              Text(
                'Continue with Google',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Container(
                  height: Get.height * 0.08,
                  width: Get.width * 0.7,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(250, 0, 23, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Positioned(
                          right: 1,
                          bottom: 0.6,
                          child: Container(
                            height: Get.height * 0.04,
                            width: Get.width * 0.13,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(10))),
                          )),
                      Positioned(
                          left: 60,
                          bottom: 20,
                          child: Text(
                            'Click to login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )),
                      Positioned(
                          right: 10,
                          bottom: 5,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Powered by nathan',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
