import 'package:calma_meditation/screens/authentication_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home_screen.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: AuthenticationScreen(),
      imageBackground: AssetImage('background.png'),
      image: Image.asset('logo.png'),
      photoSize: 200,
      useLoader: false,
    );
  }
}
