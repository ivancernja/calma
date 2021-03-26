import 'package:calma_meditation/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF253334),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Transform.scale(
                    scale: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('hamburger.png'),
                    ),
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: 3.5,
                    child: ImageIcon(
                      AssetImage('logo.png'),
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('profile_icon.png'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back, Ivan',
                  style: GoogleFonts.alegreya(textStyle: kHeadlineText),
                ),
                Text(
                  'How are you feeling today?',
                  style: GoogleFonts.alegreya(textStyle: kDescriptionText),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            // Refactor w/ text
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.scale(
                  scale: 2.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('anxious.png'),
                  ),
                ),
                Transform.scale(
                  scale: 2.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('calm.png'),
                  ),
                ),
                Transform.scale(
                  scale: 2.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('focus.png'),
                  ),
                ),
                Transform.scale(
                  scale: 2.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('relax.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                    height: 170,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFF7F3F0),
                    ),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Meditation 101',
                                      style: GoogleFonts.alegreya(
                                        textStyle: kCardHeadlineText,
                                      ),
                                    ),
                                    Text(
                                      'Techniques, Benefits, and a Beginner’s How-To',
                                      style: GoogleFonts.alegreya(
                                        textStyle: kCardDescriptionText,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      color: Color(0xFF253334),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Text(
                                        'watch now',
                                        style: GoogleFonts.alegreya(
                                            textStyle: kCardButtonText),
                                      ),
                                    ),
                                  ]),
                            )),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              'meditation_illustration.png',
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    height: 170,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFF7F3F0),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cardio Meditation',
                                  style: GoogleFonts.alegreya(
                                    textStyle: kCardHeadlineText,
                                  ),
                                ),
                                Text(
                                  'Basics of Yoga for Beginners',
                                  style: GoogleFonts.alegreya(
                                    textStyle: kCardDescriptionText,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xFF253334),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    'watch now',
                                    style: GoogleFonts.alegreya(
                                        textStyle: kCardButtonText),
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          child: Image.asset(
                            'cardio_illustration.png',
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('logo.png'),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('sounds_inactive.png'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('profile_inactive.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
