import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:this_is_me/home/about-me/about-me.view.dart';
import 'package:this_is_me/home/certificates/certificates.views.dart';
import 'package:this_is_me/home/contact-me/contact-me.views.dart';
import 'package:this_is_me/home/funcionalities/funcionalities.views.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Tab> myTabs = const <Tab>[
    Tab(
      text: 'Sobre Mim',
    ),
    Tab(
      text: 'Certificações',
    ),
    Tab(
      text: 'Funcionalidades',
    ),
    Tab(
      text: 'Contato',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPop,
      child: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: _buildBody(context),
        ),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context),
        _buildTabsContents(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.31,
      width: size.width,
      color: const Color.fromRGBO(243, 243, 244, 1),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: size.width,
            height: size.height * 0.2,
            child: Image.asset(
              'assets/images/header_wallpaper.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.05,
            child: const CircleAvatar(
              radius: 63,
              backgroundColor: Color.fromRGBO(243, 243, 244, 1),
              child: CircleAvatar(
                radius: 58,
                backgroundImage: AssetImage(
                  'assets/images/profile_image.jpeg',
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.205,
            left: size.width * 0.45,
            child: const Text(
              'Bernardo Cardoso',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.277,
            child: SizedBox(
              height: size.height * 0.031,
              width: size.width,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                tabs: myTabs,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabsContents(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          AboutMeTab(),
          CertificatesTab(),
          FuncionalitiesTab(),
          ContactMeTab(),
        ],
      ),
    );
  }

  Future<bool> _willPop() async {
    final shouldPop = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Você deseja sair?"),
              content: const Text("Você está certo disso?"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text(
                    'Não',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (Platform.isIOS) {
                      exit(0);
                    } else if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else {
                      Navigator.of(context).pop(true);
                    }
                  },
                  child: const Text(
                    'Sim',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ));
    return shouldPop ?? false;
  }
}
