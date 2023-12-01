import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:work_out/common/constans/images.dart';

import '../../../common/utils/utils.dart';

class HomeSliderWidgets extends StatelessWidget {
  final PageController _pageController = PageController();
  HomeSliderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2,
        child: Stack(
          children: [
            PageView.builder(
                controller: _pageController,
                itemCount: bannerItem.length,
                physics: defaultScrollPhysics,
                itemBuilder: ((context, index) {
                  return _Slide(bannerItem[index]);
                })),
            Positioned(
              right: 0,
              left: 0,
              bottom: 8,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: bannerItem.length,
                  axisDirection: Axis.horizontal,
                  effect: const WormEffect(
                      spacing: 4.0,
                      radius: 4.0,
                      dotWidth: 20.0,
                      dotHeight: 3.0,
                      paintStyle: PaintingStyle.fill,
                      strokeWidth: 1.5,
                      dotColor: Colors.white,
                      activeDotColor: Color(0xFFE84479)),
                ),
              ),
            )
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String image;
  const _Slide(this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

List<String> bannerItem = [
  Images.corssFit,
  Images.homeImageFirst,
  Images.homeImageSecound
];
