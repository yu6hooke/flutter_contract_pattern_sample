import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository_impl.dart';
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'pokemon_usecase.freezed.dart';

@freezed
class PokemonUseCaseException
    with _$PokemonUseCaseException
    implements Exception {
  const factory PokemonUseCaseException.alert({
    required AlertState state,
  }) = Alert;
}

final pokemonUseCaseProvider = Provider.autoDispose((ref) {
  return PokemonUseCase(
    pokemonRepository: ref.watch(pokemonRepositoryProvider),
  );
});

class PokemonUseCase {
  const PokemonUseCase({
    required PokemonRepository pokemonRepository,
  }) : _pokemonRepository = pokemonRepository;

  final PokemonRepository _pokemonRepository;
  Stream<List<Pokemon>> get pokemonList => _pokemonRepository.pokemonList;

  Future<void> fetch({
    required int page,
  }) async {
    try {
      await _pokemonRepository.fetchPokemonList(page: page);
    } on PokemonRepositoryException catch (e) {
      e.when(other: (detail) {
        throw const PokemonUseCaseException.alert(
            state: AlertState.dialogState(message: 'エラー'));
      });
    }
  }
}
