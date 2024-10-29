import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'movie.dart';

class MovieProvider with ChangeNotifier {
  final List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  Future<void> fetchMovies(String query) async {
    final apiKey = '8b5b114df0d5caf4540f4d29744d8b73'; // Substitua pela sua API Key
    final url =
        'https://api.themoviedb.org/3/search/movie?api_key=$apiKey&query=$query';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List results = data['results'];

        _movies.clear(); // Limpa a lista antes de adicionar novos filmes
        _movies.addAll(results.map((movieData) => Movie.fromJson(movieData)));
        notifyListeners();
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (error) {
      print('Erro ao buscar filmes: $error');
    }
  }
}
