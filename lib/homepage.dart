import 'package:anim_search_bar/anim_search_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  final videoUrl = "https://www.youtube.com/watch?v=KHwYM7xff3Q";

  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimSearchBar(
                  suffixIcon: Icon(Icons.search),
                  textController: textController,
                  width: 200,
                  onSuffixTap: () {
                    setState(() {});
                  },
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/youtube1.png'),
                      Text(
                        'Youtube',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () => debugPrint('Ready'),
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                    playedColor: Color.fromRGBO(250, 0, 23, 1),
                    handleColor: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Won Da Mo (Mavins, Boy Spyce, Ayra Star)',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '190k',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.timelapse_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '1 Day ago',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Get.height * 0.08,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 19, 42, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.thumb_down_alt_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.comment_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_add_outlined,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 0.3,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/mavins.png'),
                ),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Text(
                  'Mavins Records',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: Get.width * 0.08,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: Get.height * 0.06,
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 0, 23, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Subscribe',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 0.3,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      height: Get.height * 0.3,
                      width: Get.width * 0.65,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(17, 18, 44, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 10,
                              right: 6,
                              child: Image.asset('assets/images/godzilla.png')),
                          Positioned(
                              bottom: 60,
                              left: 10,
                              child: RichText(
                                  text: TextSpan(
                                      text: 'Creating a movie landing page\n',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                      children: [
                                    TextSpan(
                                        text: 'website',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold))
                                  ]))),
                          Positioned(
                              bottom: 36,
                              left: 20,
                              child: Row(
                                children: [
                                  Text(
                                    'Tech City',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.redAccent,
                                  )
                                ],
                              )),
                          Positioned(
                              bottom: 10,
                              left: 30,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '500k',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.timelapse_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '1 mon ago',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ))
                        ],
                      )),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  Container(
                    height: Get.height * 0.3,
                    width: Get.width * 0.7,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(17, 18, 44, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 6,
                          child: Container(
                              height: 150,
                              child: Image.asset(
                                'assets/images/flutter_tut.png',
                              )),
                        ),
                        Positioned(
                            bottom: 60,
                            left: 10,
                            child: RichText(
                                text: TextSpan(
                                    text: 'Build apps from scratch with \n',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                    children: [
                                  TextSpan(
                                      text: 'flutter',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ]))),
                        Positioned(
                            bottom: 36,
                            left: 20,
                            child: Row(
                              children: [
                                Text(
                                  'Dave Andrew',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Colors.redAccent,
                                )
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            left: 30,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '845k',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.timelapse_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '2 yrs ago',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  Container(
                    height: Get.height * 0.3,
                    width: Get.width * 0.7,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(17, 18, 44, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 10,
                            right: 6,
                            child: Container(
                                height: 150,
                                child:
                                    Image.asset('assets/images/phones.png'))),
                        Positioned(
                            bottom: 60,
                            left: 10,
                            child: RichText(
                                text: TextSpan(
                                    text: 'Checking out the best phones\n',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                    children: [
                                  TextSpan(
                                      text: 'in 2021',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ]))),
                        Positioned(
                            bottom: 36,
                            left: 20,
                            child: Row(
                              children: [
                                Text(
                                  'Mobile World',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Colors.redAccent,
                                )
                              ],
                            )),
                        Positioned(
                            bottom: 10,
                            left: 30,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '2.3M',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.timelapse_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '1 yr ago',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
