import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:work_out/common/constans/images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.splashImage), fit: BoxFit.cover)),
            child: SafeArea(
              child: Animate(
                delay: const Duration(seconds: 1),
                autoPlay: true,
                effects: const [FadeEffect(), ScaleEffect()],
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text("Meet Our Expert\nInstructors",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                        "Learn with fitness experts, at\n your own pace, and 100%\n updated content.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white.withOpacity(0.9))),
                  ),
                  SizedBox(
                    width: 234,
                    height: 46,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE84479)),
                        onPressed: () {},
                        child: const Center(
                            child: Text("Get started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)))),
                  ),
                  const SizedBox(height: 24),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have account?",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        SizedBox(width: 5),
                        Text("Log In",
                            style: TextStyle(
                                color: Color(0xFFEF87AA), fontSize: 16))
                      ]),
                  const SizedBox(height: 10)
                ]),
              ).move(delay: 300.ms, duration: 1500.ms),
            )));
  }
}
