import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:this_is_me/shared/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactMeTab extends StatelessWidget {
  const ContactMeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.02,
        ),
/*         Text(
          '\t Este App foi criado com o intuito de, além de servir como um currículo meu, mostrar minhas habilidades no desenvolvimento mobile',
          style: GoogleFonts.caveat(
            textStyle: TextStyle(
              fontSize: 20,
            ),
          ),
        ), */
        Text(
          'Ficou a fim de trocar uma idéia ou de me contratar para algum projeto?',
          textAlign: TextAlign.center,
          style: GoogleFonts.teko(
            textStyle: TextStyle(
              fontSize: 35,
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
          height: size.height * 0.14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialButton(
              icon: FontAwesomeIcons.linkedin,
              color: const Color.fromRGBO(42, 102, 188, 1),
              onClicked: () => share(SocialMedia.linkedin),
            ),
            buildSocialButton(
              icon: FontAwesomeIcons.instagramSquare,
              color: const Color.fromRGBO(225, 42, 130, 1),
              onClicked: () => share(SocialMedia.instagram),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.2,
        ),
        Text(
          'Entre em contato comigo em alguma das redes acima!',
          textAlign: TextAlign.center,
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 20,
              shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(5, 5),
                    blurRadius: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future share(SocialMedia platform) async {
  final urls = {
    SocialMedia.instagram: (myInstagram),
    SocialMedia.linkedin: (myLinkedin),
  };
  final url = urls[platform]!;
  await launch(url);
}

enum SocialMedia { instagram, linkedin }

Widget buildSocialButton(
        {required IconData icon,
        Color? color,
        required Function() onClicked}) =>
    InkWell(
      child: Container(
        width: 90,
        height: 90,
        child: Center(child: FaIcon(icon, color: color, size: 75)),
      ),
      onTap: onClicked,
    );
