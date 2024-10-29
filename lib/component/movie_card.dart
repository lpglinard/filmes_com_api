import 'package:flutter/material.dart';
import '../model/movie.dart';
import '../screens/filmeView.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final int index;

  const MovieCard({
    super.key,
    required this.movie,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FilmeView(movie: movie),
          ),
        );
      },
      child: Card(
        color: Colors.black54,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Exibindo apenas a imagem do filme
            Image.network(
              movie.posterPath,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            // Exibindo apenas o título do filme
            Text(
              movie.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
