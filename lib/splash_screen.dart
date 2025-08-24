import 'package:flutter/material.dart';
import 'package:todo_app/Core/routes/pages.dart';
import 'package:todo_app/Core/utils/color_palette.dart';
import 'package:todo_app/Core/utils/font_sizes.dart';
import 'components/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushNamedAndRemoveUntil(context, Pages.home, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash_screen.png', width: 250),

            const SizedBox(height: 20),
            buildText(
              'Task Mate',
              kWhiteColor,
              textBold,
              FontWeight.w600,
              TextAlign.center,
              TextOverflow.clip,
            ),
            const SizedBox(height: 10),
            buildText(
              'Control Your Tasks',
              kWhiteColor,
              textTiny,
              FontWeight.normal,
              TextAlign.center,
              TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
