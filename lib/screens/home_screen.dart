import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:filmes_com_api/component/movie_card.dart';
import '../model/movieProvider.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MovieProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0d0e0f),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF53088c),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16, left: 8, right: 8),
            child: Image(image: NetworkImage('url'), height: 80,),
          ),
          SizedBox(
            height: 500,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieProvider.movies.length,
              itemBuilder: (context, index) {
                final movie = movieProvider.movies[index];
                return SizedBox(
                  width: 200,
                  child: MovieCard(movie: movie, index: index,),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
