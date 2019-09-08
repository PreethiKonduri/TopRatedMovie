class Movie{
  String Title;
  String Year;
  String Rated;
  String MoviePoster;
  String MovieActors;
  String Genre;
  String Director;
  String Plot;

  Movie.fromJSON(Map<String, dynamic> jsonMap) :
        Title = jsonMap['Title'],
        Year = jsonMap['Year'],
        Rated = jsonMap['Rated'],
        MoviePoster = jsonMap['Poster'].toString().replaceAll("http:", "https:"),
        Plot = jsonMap['Plot'];
}
