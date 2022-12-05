import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_app/intropage.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({Key? key}) : super(key: key);

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(Duration(seconds: 3), () {});
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => IntroPage()));
    Get.to(
      IntroPage(),
      transition: Transition.fadeIn,
      duration: Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset('assets/animations/43461-youtube-logo.json',
            width: Get.width * 0.5),
      ),
    );
  }
}
