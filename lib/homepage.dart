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
      body: Column(
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
            height: Get.height * 0.1,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: Get.height * 0.3,
                  width: Get.width * 0.8,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 18, 44, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Container(
                  height: Get.height * 0.3,
                  width: Get.width * 0.8,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 18, 44, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Container(
                  height: Get.height * 0.3,
                  width: Get.width * 0.8,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 18, 44, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
