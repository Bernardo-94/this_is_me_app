import 'package:flutter/material.dart';
import 'package:this_is_me/home/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bernardo Cardoso',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/home',
      routes: {
        // É aqui onde as rotas são definidas.

        '/home': (context) => HomePage(),
      },

      // Vai ficar de exemplo por hora.

/*       initialRoute: decideInitialRoute(),
      routes: {
        //Define a rota aqui.
        '/': (context) => StartPage(),
        '/home': (context) => HomePage(),
        '/channels': (context) => ChannelsListPage(),
        '/courses': (context) => CoursesPage(),
        '/favorites': (context) => FavoritesPage(),,
      }, */
    );
  }
}
