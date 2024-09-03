class Movie {
  final String title;
  final String director;
  final int year;
  String? poster;
  String? plot;

  Movie({required this.title,
    required this.director,
    required this.year});

  @override
  String toString() {
    return 'Movie{title: $title, director: $director, year: $year, poster: $poster, plot: $plot}';
  }
}
