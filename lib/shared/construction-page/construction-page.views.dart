import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstructionPage extends StatelessWidget {
  const ConstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.03,
        ),
        Center(
          child: Image.asset('assets/images/em_construcao.png'),
        ),
        SizedBox(
          height: size.height * 0.07,
        ),
        Text(
          'Em Construção!',
          style: GoogleFonts.pressStart2p(
            textStyle: const TextStyle(
                fontSize: 20, color: Color.fromRGBO(103, 93, 169, 1)),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
          'Em breve uma nova área para explorar neste App',
          style: GoogleFonts.teko(
            textStyle: const TextStyle(
                fontSize: 25, color: Color.fromRGBO(231, 109, 171, 1)),
          ),
        ),
      ],
    );
  }
}
