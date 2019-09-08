import 'package:flutter/material.dart';
import 'package:movie_app_flutter/movieModel.dart';

class DetailMovieUI extends StatelessWidget {
  final Movie movie;

  // In the constructor, require a Todo.
  DetailMovieUI({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 400.0,
                height: 500.0,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage(movie.MoviePoster),
//                          image: ExactAssetImage("images/s.jpeg"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                        offset: Offset(0.0, 10.0))
                  ]),
            ),
            Padding(padding: const EdgeInsets.all(15.0)),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    movie.Title,
//                            "Title",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontFamily: 'Arvo'),
                  )),
                  Text(
                    movie.Year,
                    style: TextStyle(
                        color: Colors.blue, fontSize: 15.0, fontFamily: 'Arvo'),
                  )
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(2.0)),
            Text(
              movie.Plot,
              style: TextStyle(
                  color: Colors.grey, fontSize: 20.0, fontFamily: 'Arvo'),
            ),

          ],
        ),
      ),
    ));
  }
}
