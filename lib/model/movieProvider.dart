import 'package:flutter/material.dart';
import 'movie.dart';

class MovieProvider with ChangeNotifier {
  List<Movie> _movies = [
    Movie(title: "O sexto sentido", director: "M. Night S.", year: 1999),
    Movie(title: "Matrix", director: "Lana Wachowski, Lilly Wachowski", year: 1999, sinopse: 'A história é sobre um futuro distante, em que os humanos foram dominados pelas máquinas e vivem ligados a um mundo chamado Matrix. Na luta entre máquinas e humanos, Neo (Keanu Reeves) é o humano escolhido, ou seja, é o único que pode vencer a realidade virtual e mostrar o caminho da salvação para os outros.'),
    Movie(title: "Clube da Luta", director: "David Fincher", year: 1999, sinopse: 'Clube da Luta é uma reflexão crítica acerca da sociedade de consumo na qual vivemos e os efeitos que ela provoca nos indivíduos. O filme começa nos mostrando várias marcas famosas e o modo como o protagonista e os demais consomem esses produtos com o objetivo de preencher um vazio interior.'),
    Movie(title: "Forrest Gump", director: "Robert Zemeckis", year: 1994),
    Movie(title: "O Poderoso Chefão", director: "Francis Ford Coppola", year: 1972),
    Movie(title: "Pulp Fiction", director: "Quentin Tarantino", year: 1994),
    Movie(title: "A Origem", director: "Christopher Nolan", year: 2010),
    Movie(title: "Interestelar", director: "Christopher Nolan", year: 2014),
    Movie(title: "O Senhor dos Anéis: A Sociedade do Anel", director: "Peter Jackson", year: 2001),
    Movie(title: "Star Wars: Episódio IV - Uma Nova Esperança", director: "George Lucas", year: 1977)
  ];

  List<Movie> get movies => _movies;

  void addMovie(Movie movie) {
    _movies.add(movie);
    notifyListeners();
  }
}
