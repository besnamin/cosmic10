import 'package:cosmic10/models/cosmic_model.dart';
import 'package:cosmic10/models/populars_medel.dart';
import 'package:get/get.dart';

class CosmicProvider extends GetConnect {


// final String _apikey   = 'f3590619f35d9842fae181598786e2b2';
// final String _url      = 'api.themoviedb.org';
// final String _language = 'es-ES';
@override
void onInit(){

}

Future<List<Result>> getCosmic() async{

  // final url = Uri.https(_url, '3/movie/now_playing', {
  //   'api_key'  : _apikey,
  //   'language' : _language
  // });

  final resp = await get('https://api.themoviedb.org/3/movie/now_playing?api_key=f3590619f35d9842fae181598786e2b2&language=es-ES&page=1');
  final cosmicResponse = Cosmicresponse.fromMap(resp.body);
  // final pelicula = moviesResponse.results[1];
  
  return cosmicResponse.results;

}


Future<List<Populars>> getCosmicPopulars() async{

  // final url = Uri.https(_url, '3/movie/now_playing', {
  //   'api_key'  : _apikey,
  //   'language' : _language
  // });

  final resp = await get('https://api.themoviedb.org/3/movie/popular?api_key=f3590619f35d9842fae181598786e2b2&language=es-ES&page=1');
  final popularResponse = PopularsResponse.fromMap(resp.body);
  // final pelicula = moviesResponse.results[1];
  
  return popularResponse.results;

}

}