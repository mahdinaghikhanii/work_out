import 'package:work_out/common/constans/images.dart';

class HomeEntity {
  final String title;
  final String categoty;
  final String image;
  final double rate;

  HomeEntity(
      {required this.title,
      required this.categoty,
      required this.image,
      required this.rate});
}

List<HomeEntity> trandingCource = [
  HomeEntity(
      title: 'Personal Trainer',
      categoty: "Fitness",
      image: Images.homeImageFirst,
      rate: 4.9),
  HomeEntity(
      title: "Sport Nutrition'",
      categoty: "Nutrition",
      image: Images.homeImageSecound,
      rate: 4.8)
];
