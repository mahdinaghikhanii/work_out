class DetailModel {
  final String title;
  final String time;
  final bool private;

  DetailModel({required this.title, required this.time, required this.private});
}

List<DetailModel> detailModel = [
  DetailModel(title: "Introduction", time: "13:02", private: false),
  DetailModel(title: "First steps", time: "21:39", private: true),
  DetailModel(title: "Mental preparation", time: "11:39", private: true),
  DetailModel(title: "Tactis", time: "23:02", private: true)
];
