import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/splash_top1.png"),
            ),
            Positioned(
              top: 0,
              left: 74,
              child: Image.asset("assets/images/splash_top2.png"),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/splash_bottom1.png"),
            ),
            Positioned(
              bottom: 75,
              right: 0,
              child: Image.asset("assets/images/splash_bottom2.png"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/splash_bottom3.png"),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/images/app_icon_white.png",
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "RED BLOOD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(227, 55, 55, 1),
      ),
    );
  }
}
