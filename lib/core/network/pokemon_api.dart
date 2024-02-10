import 'package:contract_pattern_sample/core/model/pokemon_list_response.dart';
import 'package:contract_pattern_sample/core/model/pokemon_response.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_api.g.dart';

final pokemonApiClientProvider = Provider((ref) {
  final options = BaseOptions(baseUrl: 'https://pokeapi.co/api/v2');
  final dio = Dio(options)..interceptors.add(PrettyDioLogger());
  return PokemonApi(dio);
});

@RestApi()
abstract class PokemonApi {
  factory PokemonApi(Dio dio) => _PokemonApi(dio);

  @GET('/pokemon')
  Future<PokemonListResponse> getPokemons({
    @Query('offset') required int offset,
    @Query('limit') required int limit,
  });

  @GET('/pokemon/{id}')
  Future<PokemonResponse> getPokemon({
    @Path('id') required String id,
  });
}
