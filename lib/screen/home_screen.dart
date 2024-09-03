import 'package:filmes_com_api/model/movie.dart';
import 'package:filmes_com_api/component/movie_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var exampleMovies = [
    Movie(title: "O sexto sentido", director: "M. Night S.", year: 1999),
    Movie(title: "Matrix", director: "Lana Wachowski, Lilly Wachowski", year: 1999),
    Movie(title: "Clube da Luta", director: "David Fincher", year: 1999),
    Movie(title: "Forrest Gump", director: "Robert Zemeckis", year: 1994),
    Movie(title: "O Poderoso Chefão", director: "Francis Ford Coppola", year: 1972),
    Movie(title: "Pulp Fiction", director: "Quentin Tarantino", year: 1994),
    Movie(title: "A Origem", director: "Christopher Nolan", year: 2010),
    Movie(title: "Interestelar", director: "Christopher Nolan", year: 2014),
    Movie(title: "O Senhor dos Anéis: A Sociedade do Anel", director: "Peter Jackson", year: 2001),
    Movie(title: "Star Wars: Episódio IV - Uma Nova Esperança", director: "George Lucas", year: 1977)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: exampleMovies.length,
            itemBuilder: (context, index) {
              return MovieCard(movie: exampleMovies[index]);
            })
      ),
      );
  }
}