import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 10), () {
      Navigator.pushNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            // FadeAnimatedText(
            //   'CR',
            //   textStyle: GoogleFonts.poppins().copyWith(
            //     fontSize: 70.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   duration: Duration(milliseconds: 3000),
            // ),
            FadeAnimatedText(
              'Evaluasi TSA Flutter',
              textStyle: GoogleFonts.poppins().copyWith(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ColorizeAnimatedText(
              'By Rajendra Rakha',
              textStyle: colorizeTextStyle.copyWith(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              colors: colorizeColors,
            ),
            WavyAnimatedText('Politeknik Negeri Malang',
                textStyle: GoogleFonts.poppins().copyWith(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            // ScaleAnimatedText(
            //   'Catatan Rahasia',
            //   textStyle: TextStyle(fontSize: 50.0, fontFamily: 'Poppins'),
            //   duration: Duration(milliseconds: 3000),
            // ),
          ],
        ),
      ),
    );
  }
}
