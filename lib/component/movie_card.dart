import 'package:filmes_com_api/model/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.network('src',)),
              const SizedBox(height: 8,),
              Text(
            movie.title,
            style: const TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
            ),
            overflow: TextOverflow.fade,
          ),
          const SizedBox(height: 8),
          Text(
            movie.director,
            style: const TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
            ),
            overflow: TextOverflow.fade,
          ),
          const SizedBox(height: 8),
          Text(
            movie.year.toString(),
            style: const TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
            ),
          ),
            ],
          )
        ],
      ),
    );
  }
}
