import 'package:contract_pattern_sample/core/util/contract/base_contract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';

part 'pokemon_detail_contract.freezed.dart';

typedef PokemonDetailContract = BaseContract<PokemonDetailUiState,
    PokemonDetailAction, PokemonDetailEffect>;

@freezed
class PokemonDetailUiState with _$PokemonDetailUiState {
  const factory PokemonDetailUiState({
    Pokemon? item,
  }) = _PokemonDetailUiState;
}

@freezed
sealed class PokemonDetailAction with _$PokemonDetailAction {
  const factory PokemonDetailAction.closeButtonClicked() = CloseButtonClicked;
}

@freezed
sealed class PokemonDetailEffect with _$PokemonDetailEffect {
  const factory PokemonDetailEffect.none() = None;
  const factory PokemonDetailEffect.close() = Close;
}
