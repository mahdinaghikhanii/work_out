import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_out/data/entity/home_model.dart';
import 'package:work_out/pages/detail/detail.dart';

class TranfingListView extends StatelessWidget {
  const TranfingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 24),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: trandingCource.length,
          itemBuilder: (context, index) {
            return _Item(trandingCource[index]);
          }),
    );
  }
}

class _Item extends StatelessWidget {
  final HomeEntity homeEntity;
  const _Item(this.homeEntity);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailPage())),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 240,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(homeEntity.image), fit: BoxFit.cover),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 12, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        homeEntity.categoty,
                        style: const TextStyle(color: Color(0xFF9CA3AF)),
                      ),
                      Text(
                        homeEntity.title,
                        style: const TextStyle(
                          color: Color(0xFF1F2E45),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFFFAC37),
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        Text(homeEntity.rate.toString()),
                        const SizedBox(width: 14),
                        const Icon(
                          CupertinoIcons.clock_solid,
                          color: Color(0xFF9CA3AF),
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '5h 30m',
                          style: TextStyle(
                            color: Color(0xFF9CA3AF),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                            letterSpacing: -0.28,
                          ),
                        )
                      ])
                    ]))
          ],
        ),
      ),
    );
  }
}
