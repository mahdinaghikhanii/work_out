import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:work_out/common/constans/images.dart';
import 'package:work_out/pages/home/widgets/silder.dart';

import '../../data/entity/home_model.dart';
import 'widgets/text_input.dart';
import 'widgets/tranding_listview.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          actions: [
            Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(Images.notificationIcon,
                    width: 31.63, height: 35)),
            Container(
                margin: const EdgeInsets.only(right: 24, left: 12),
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Images.profileImage))))
          ],
          leading: Container(
              margin: const EdgeInsets.only(left: 24),
              alignment: Alignment.center,
              child: SvgPicture.asset(Images.logo, width: 30, height: 30)),
        ),
        body: Column(children: [
          const TextInput(),
          Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 40),
              child: HomeSliderWidgets()),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending courses",
                  style: TextStyle(
                      color: Color(0xFF1F2E45),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("See all",
                      style: TextStyle(color: Color(0xFFE84479))),
                )
              ],
            ),
          ),
          const TranfingListView(),
          const SizedBox(height: 30),
          Stack(
            children: [
              SvgPicture.asset(Images.diss),
              Positioned(
                  left: -17,
                  bottom: 10,
                  child:
                      Image.asset(Images.alarm, width: 105.13, height: 52.10)),
              Positioned(
                  right: -17,
                  bottom: 4,
                  child: Image.asset(Images.dumbbell,
                      width: 105.13, height: 52.10))
            ],
          )
        ]));
  }
}
