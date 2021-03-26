import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'home_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF253334),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(
              FocusNode(),
            );
          },
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LogoWidget(),
                  LoginHeadlineWidget(),
                  LoginFormWidget(),
                  LoginSignupWidget(),
                  DecorationImageWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: 100,
            child: Image.asset('logo.png'),
          ),
        ],
      ),
    );
  }
}

class LoginHeadlineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: GoogleFonts.alegreya(
                textStyle: kHeadlineText,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Sign in now to access your exercises and music.',
              style: GoogleFonts.alegreya(
                textStyle: kDescriptionText,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
        child: Column(
          children: [
            TextField(
              decoration: kEmailTextFieldDecoration,
              cursorColor: Colors.white,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: kPasswordTextFieldDecoration,
              obscureText: true,
              cursorColor: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.alegreya(
                      textStyle: kForgotPasswordText,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginSignupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
      child: Column(
        children: [
          MaterialButton(
            minWidth: double.infinity,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text(
              'LOGIN',
              style: GoogleFonts.alegreya(
                textStyle: kRaisedButtonText,
              ),
            ),
            color: Color(0xFF7C9A92),
            height: 61,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: GoogleFonts.alegreya(
                  textStyle: kSubtitleText,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign up now.',
                  style: GoogleFonts.alegreya(textStyle: kTextButtonText),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DecorationImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('bottombg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
