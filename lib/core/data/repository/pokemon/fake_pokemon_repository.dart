import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import 'pokemon.dart';
import 'pokemon_repository.dart';

part 'fake_pokemon_repository.freezed.dart';

@freezed
class FakePokemonRepositoryState with _$FakePokemonRepositoryState {
  factory FakePokemonRepositoryState({
    @Default([]) List<Pokemon> pokemonList,
  }) = _FakePokemonRepositoryState;

  static final samplePokemonList = [
    Pokemon(
        id: 1,
        name: 'bulbasaur',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png',
        types: ['grass', 'poison']),
    Pokemon(
        id: 2,
        name: 'ivysaur',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png',
        types: ['grass', 'poison']),
    Pokemon(
        id: 3,
        name: 'venusaur',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
        types: ['grass', 'poison']),
    Pokemon(
        id: 4,
        name: 'charmander',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png',
        types: ['fire']),
  ];
}

class FakePokemonRepository implements PokemonRepository {
  const FakePokemonRepository._(this.fakeState, this.handler);

  factory FakePokemonRepository.from(
      BehaviorSubject<FakePokemonRepositoryState> fakeState) {
    return FakePokemonRepository._(fakeState, FakePokemonHandler(fakeState));
  }

  final BehaviorSubject<FakePokemonRepositoryState> fakeState;
  final FakePokemonHandler handler;

  @override
  Stream<List<Pokemon>> get pokemonList =>
      fakeState.map((state) => state.pokemonList);

  @override
  Future<void> fetchPokemonList({
    required int page,
  }) async {
    await handler.fetchPokemonList(page);
  }
}

class FakePokemonHandler {
  FakePokemonHandler(this.fakeState);

  final BehaviorSubject<FakePokemonRepositoryState> fakeState;

  late Future<void> Function(int page) fetchPokemonList = (page) async {
    fakeState.add(fakeState.value
        .copyWith(pokemonList: FakePokemonRepositoryState.samplePokemonList));
  };
}
