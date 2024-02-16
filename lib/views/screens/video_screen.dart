import 'package:_tiktok_clone_app/views/widgets/video_player_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  _buildProfile(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        children: [
          Positioned(
              left: 5,
              child: Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                    child: Image(
                  image: NetworkImage(profilePhoto),
                  fit: BoxFit.cover,
                )),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
          itemCount: 1,
          controller: PageController(initialPage: 0, viewportFraction: 1),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                // VideoPlayerItem(videoUrl: videoUrl),
                Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Expanded(
                        child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Username",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Caption",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.music_note,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "song name",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                        Container(
                          width: 100,
                          margin: EdgeInsets.only(top: size.height / 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildProfile("string url"),
                              Column(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.favorite,
                                        size: 40,
                                        color: Colors.red,
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "2,200",
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.comment,
                                        size: 40,
                                        color: Colors.white,
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "200",
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.message,
                                        size: 40,
                                        color: Colors.white,
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "0",
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.reply,
                                        size: 40,
                                        color: Colors.white,
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "2",
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              //  CircleAnimation(child: buildMusicAlbum('profilePhoto'))
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                )
              ],
            );
          }),
    );
  }
}
