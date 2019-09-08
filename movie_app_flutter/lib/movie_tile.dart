import 'package:flutter/material.dart';
import 'package:movie_app_flutter/movieModel.dart';



class MovieTile extends StatelessWidget {
  final Movie _movie;
  MovieTile(this._movie);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(_movie.Title),
        subtitle: Text(_movie.Rated),
        leading: Container(
            margin: EdgeInsets.only(left: 6.0),
            child: Image.network(_movie.MoviePoster, height: 50.0, fit: BoxFit.fill,)
        ),
      ),
      Divider()
    ],
  );
}