class Movie {
  final String title;
  final String director;
  final int year;
  String? poster;
  String? plot;
  String? sinopse;

  Movie({required this.title,
    required this.director,
    required this.year,
    this.plot,
    this.poster,
    this.sinopse});

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year, poster: $poster, plot: $plot}';
  }
}
