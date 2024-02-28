import 'package:contract_pattern_sample/core/data/repository/pokemon/fake_pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/without_stream/without_stream_pokemon_repository.dart';

class FakeWithoutStreamPokemonRepository
    extends WithoutStreamPokemonRepository {
  late final handler =
      FakeWithoutPokemonHandler(updater: (newState) => state = newState(state));

  @override
  Future<void> fetchPokemonList({required int page}) async {
    await handler.fetchPokemonList(page);
  }
}

class FakeWithoutPokemonHandler {
  FakeWithoutPokemonHandler({required this.updater});

  final void Function(PokemonRepositoryState Function(PokemonRepositoryState))
      updater;

  late Future<void> Function(int page) fetchPokemonList = (page) async {
    updater(
      (state) => state.copyWith(
        pokemonList: FakePokemonRepositoryState.samplePokemonList,
      ),
    );
  };
}
