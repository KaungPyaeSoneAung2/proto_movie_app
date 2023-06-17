import 'package:proto_movie_app/model/actor_detail.dart';
import 'package:proto_movie_app/model/movie.dart';

const place_holder = "assets/images/place_holder.jpg";

const List<String> categoryList =[
"Adventure", "Fantasy", "Animation", "Drama", "Horror", "Family"
];

List<ActorDetail> actorList = [
  ActorDetail("Jason Statham", place_holder),
  ActorDetail("Al Pacino", place_holder),
  ActorDetail("Donnie Yen", place_holder)
];
 List<Movie> movieList =[
  Movie("Naruto", 9, 1212, "https://i.pinimg.com/originals/7a/09/64/7a096487a3c52c3010b95a00ea56dd1a.jpg"),
  Movie("Noragami", 10, 382, "https://m.media-amazon.com/images/I/71-E0wQ8LEL.jpg"),
  Movie("Spider-man", 10, 3382, "https://www.movienewsletters.net/photos/309732R1.jpg"),
  Movie("Komi", 8, 382, "https://m.media-amazon.com/images/I/71CluiXXaGL._AC_UF894,1000_QL80_.jpg"),
  Movie("Guardian of the Galaxy", 9, 11382, "https://upload.wikimedia.org/wikipedia/en/7/74/Guardians_of_the_Galaxy_Vol._3_poster.jpg"),
  
];


