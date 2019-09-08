import 'package:flutter/material.dart';
import 'package:movie_app_flutter/apiHelper.dart';
import 'package:movie_app_flutter/detailMoviePage.dart';
import 'package:movie_app_flutter/movieModel.dart';
import 'package:movie_app_flutter/movie_tile.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeUI> {
  List<Movie> _movie = <Movie>[];

  @override
  void initState() {
    super.initState();
    listenForMovies();
  }

  void listenForMovies() async {
    final Stream<Movie> stream = await getMovie();
    stream.listen((Movie movie) => setState(() => _movie.add(movie)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Top Movie"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.arrow_downward), onPressed: (){
            listenForMovies();
          }),
          new IconButton(icon: new Icon(Icons.close), onPressed: null)
        ],
      ),
      body: ListView.builder(
          itemCount: _movie.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
//              Navigator.pushNamed(context, '/detailMovie');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailMovieUI(
                              movie: _movie[index],
                            )));
              },
              child: getDataModel(_movie, index))),
    );
  }

  MovieTile getDataModel(List<Movie> movie, int index) {
    if (_movie.length > index) return MovieTile(_movie[index]);
  }
}
