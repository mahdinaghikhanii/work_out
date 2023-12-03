import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';
import 'package:work_out/common/constans/images.dart';
import 'package:work_out/pages/detail/deatail_model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset(Images.movieCrossFit));
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  late TabController tabController;

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
          width: MediaQuery.sizeOf(context).width,
          height: 48,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE84479)),
              onPressed: () {},
              child: Center(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Enroll Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(left: 8),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(Icons.arrow_forward_ios,
                          size: 12, color: Color(0xFFE84479)))
                ],
              ))),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 240,
                  child: FlickVideoPlayer(
                    flickManager: flickManager,
                    flickVideoWithControls: const FlickVideoWithControls(
                      closedCaptionTextStyle: TextStyle(fontSize: 8),
                      controls: FlickPortraitControls(),
                      videoFit: BoxFit.fitHeight,
                    ),
                    flickVideoWithControlsFullscreen:
                        const FlickVideoWithControls(
                      videoFit: BoxFit.fitHeight,
                      controls: FlickLandscapeControls(),
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 20,
                  child: SvgPicture.asset(Images.settingsIcon),
                ),
                Positioned(
                  left: 5,
                  top: 8,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  left: 48,
                  top: 21,
                  child: Text(
                    "Introduction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Personal Trainer",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color(0xFF14172D),
                              fontWeight: FontWeight.w700)),
                      SvgPicture.asset(Images.saveIcon,
                          colorFilter: const ColorFilter.mode(
                              Colors.grey, BlendMode.srcIn))
                    ])),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFFAC37),
                    size: 20,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '4.9 (231 reviews)',
                    style: TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.28,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.clock_solid,
                    color: Color(0xFF9CA3AF),
                    size: 18,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '5h 30m',
                    style: TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.28,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              width: MediaQuery.sizeOf(context).width,
              child: const Text(
                'You will learn how to put together professional training plans to apply to specific goals of your own or those you will train in the future.',
                style: TextStyle(
                  color: Color(0xFF9CA3AF),
                  fontSize: 14,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.28,
                ),
              ),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              padding: const EdgeInsets.only(right: 24, left: 24),
              labelPadding: const EdgeInsets.only(right: 0),
              onTap: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              indicatorPadding: const EdgeInsets.only(left: 0),
              controller: tabController,
              unselectedLabelColor: const Color(0xFF9CA3AF),
              indicatorColor: const Color(0xFFE84479),
              labelColor: const Color(0xFFE84479),
              tabs: const [
                Tab(
                  iconMargin: EdgeInsets.zero,
                  child: Text(
                    "Lessons content",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 50,
                  child: Tab(
                    iconMargin: EdgeInsets.zero,
                    child: Text(
                      "Support",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Tab(
                  iconMargin: EdgeInsets.zero,
                  child: Text(
                    "Comments",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Expanded(
                child: IndexedStack(
              index: pageIndex,
              children: const [LessonsContent(), Support(), Comments()],
            ))
          ],
        ),
      ),
    );
  }
}

class LessonsContent extends StatelessWidget {
  const LessonsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: detailModel.length,
        itemBuilder: (context, index) {
          return Container(
            width: 327,
            height: 46,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFEEF2F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        detailModel[index].private == true
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: SvgPicture.asset("assets/lock.svg"))
                            : Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      detailModel[index].title,
                      style: const TextStyle(
                        color: Color(0xFF14172D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 13),
                Text(
                  detailModel[index].time,
                  style: const TextStyle(
                    color: Color(0xFF14172D),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.32,
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            width: 327,
            height: 46,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFEEF2F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        detailModel[index].private == true
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: SvgPicture.asset("assets/lock.svg"))
                            : Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      detailModel[index].title,
                      style: const TextStyle(
                        color: Color(0xFF14172D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 13),
                Text(
                  detailModel[index].time,
                  style: const TextStyle(
                    color: Color(0xFF14172D),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.32,
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            width: 327,
            height: 46,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFEEF2F5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        detailModel[index].private == true
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: SvgPicture.asset("assets/lock.svg"))
                            : Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      detailModel[index].title,
                      style: const TextStyle(
                        color: Color(0xFF14172D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 13),
                Text(
                  detailModel[index].time,
                  style: const TextStyle(
                    color: Color(0xFF14172D),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.32,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
