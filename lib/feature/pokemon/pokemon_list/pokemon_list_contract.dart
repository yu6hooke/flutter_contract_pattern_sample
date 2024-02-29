import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:contract_pattern_sample/core/util/contract/base_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_contract.freezed.dart';

typedef PokemonListContract
    = BaseContract<PokemonListUiState, PokemonListAction, PokemonListEffect>;

@freezed
class PokemonListUiState with _$PokemonListUiState {
  const factory PokemonListUiState({
    @Default(false) bool isLoading,
    @Default([]) List<Pokemon> pokemonList,
  }) = _PokemonListUiState;
}

@freezed
sealed class PokemonListAction with _$PokemonListAction {
  const factory PokemonListAction.onAppear() = OnAppear;
  const factory PokemonListAction.itemClicked({
    required Pokemon pokemon,
  }) = ItemClicked;
}

@freezed
sealed class PokemonListEffect with _$PokemonListEffect {
  const factory PokemonListEffect.none() = None;
  const factory PokemonListEffect.goDetail({
    required int id,
  }) = GoDetail;
  const factory PokemonListEffect.showAlert({
    required AlertState state,
  }) = ShowAlert;
}
