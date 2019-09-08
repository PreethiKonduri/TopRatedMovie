import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_flutter/detailMoviePage.dart';

import 'homePage.dart';

class Routes extends StatelessWidget {
  String initialRoute = "/";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes(context),
      initialRoute: initialRoute,
    );
  }

  static routes(BuildContext context) {
    return <String, WidgetBuilder>{
      '/': (context) => HomeUI(),
      '/detailMovie': (context) => DetailMovieUI()
    };
  }
}