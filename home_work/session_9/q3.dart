// Q3 Create a class Movie with attributes title and rating.
// In main(), create a list of 4 movies. Print
// only the movies with a rating above 7.
void main() {
  List<Movie> movie = [
    Movie('The Shawshank Redemption', 9.3),
    Movie('Inception', 8.8),
    Movie('The Godfather', 6.9),
    Movie('Twilight', 5.2),
  ];

  for (var i = 0; i < movie.length; i++) {
    if (movie[i].rating > 7) {
      print('${movie[i].title} - Rating: ${movie[i].rating}');
    }
  }
}

class Movie {
  String title;
  num rating;

  Movie(this.title, this.rating);
}
