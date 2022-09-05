import 'package:flutter/material.dart';
import 'package:this_is_me/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeTab extends StatelessWidget {
  const AboutMeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              paragraph1,
              style: GoogleFonts.viga(
                textStyle: TextStyle(
                  fontSize: 27,
                  shadows: [
                    Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(5, 5),
                        blurRadius: 15),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Text(
              paragraph2,
              style: TextStyle(
                fontSize: 20,
                shadows: [
                  Shadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(5, 5),
                      blurRadius: 15),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.018,
            ),
            Text(
              paragraph3,
              style: GoogleFonts.commissioner(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            Text(
              paragraph4,
              style: GoogleFonts.commissioner(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            Text(
              paragraph5,
              style: GoogleFonts.commissioner(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            Text(
              paragraph6,
              style: GoogleFonts.commissioner(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            Text(
              paragraph7,
              style: GoogleFonts.commissioner(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.007,
            ),
            Text(
              paragraph8,
              style: GoogleFonts.commissioner(
                textStyle: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.022,
            ),
            const Text(
              paragraph9,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              paragraph10,
              style: GoogleFonts.anton(
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.12,
            )
          ],
        ),
      ),
    );
  }
}
