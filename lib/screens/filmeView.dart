import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/movieProvider.dart';

class FilmeView extends StatelessWidget {
  final int index;

  const FilmeView({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MovieProvider>(context);
    final movie = movieProvider.movies[index];

    return Scaffold(
      backgroundColor: const Color(0xFF0d0e0f),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            movie.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF53088c),
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('')),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              movie.sinopse?.isNotEmpty == true
                  ? movie.sinopse!
                  : 'Texto não encontrado',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
