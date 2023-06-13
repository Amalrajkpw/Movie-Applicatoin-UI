import 'dart:convert';
 

import 'package:http/http.dart' as http;
import 'package:movie_mod_application/const/api_constants.dart';
// import 'package:movie_mod_application/domain/models/movie_list_model.dart';
 
class MoviesApi{
  List  movies=[];
  List popularMovies=[];
Future< dynamic> fetchData() async {
  final baseUrl = ApiConst.baseUrl;
  final apiKey = ApiConst.apiKey;
  http.Response response;
  try {
  final responce = await http.get(Uri.parse(
      "$baseUrl/movie/upcoming?api_key=$apiKey&language=en-US&page=1"));
  if (responce.statusCode == 200) {
    Map data = json.decode(responce.body);
   
    movies = data['results'];
    return movies;
  } else {
    return [];
  }
} on Exception catch (e) {
  print(e);
  return [];
}
   
}

Future< dynamic> fetchDataPopular() async {
  final baseUrl = ApiConst.baseUrl;
  final apiKey = ApiConst.apiKey;
  http.Response response;
  try {
  final responce = await http.get(Uri.parse(
      "$baseUrl/movie/now_playing?api_key=$apiKey&language=en-US&page=1"));
  if (responce.statusCode == 200) {
    Map data = json.decode(responce.body);
     
    movies = data['results'];
    return movies;
  } else {  
    return [];
  }
} on Exception catch (e) {
  print(e);
  return [];
}
   
}


}