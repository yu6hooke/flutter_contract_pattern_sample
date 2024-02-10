// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonDetailNotifierHash() =>
    r'2f072cf026befeb3430d3919b2eb64e84a4be4cb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PokemonDetailNotifier
    extends BuildlessAutoDisposeNotifier<PokemonDetailUiState> {
  late final int id;

  PokemonDetailUiState build(
    int id,
  );
}

/// See also [PokemonDetailNotifier].
@ProviderFor(PokemonDetailNotifier)
const pokemonDetailNotifierProvider = PokemonDetailNotifierFamily();

/// See also [PokemonDetailNotifier].
class PokemonDetailNotifierFamily extends Family<PokemonDetailUiState> {
  /// See also [PokemonDetailNotifier].
  const PokemonDetailNotifierFamily();

  /// See also [PokemonDetailNotifier].
  PokemonDetailNotifierProvider call(
    int id,
  ) {
    return PokemonDetailNotifierProvider(
      id,
    );
  }

  @override
  PokemonDetailNotifierProvider getProviderOverride(
    covariant PokemonDetailNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonDetailNotifierProvider';
}

/// See also [PokemonDetailNotifier].
class PokemonDetailNotifierProvider extends AutoDisposeNotifierProviderImpl<
    PokemonDetailNotifier, PokemonDetailUiState> {
  /// See also [PokemonDetailNotifier].
  PokemonDetailNotifierProvider(
    int id,
  ) : this._internal(
          () => PokemonDetailNotifier()..id = id,
          from: pokemonDetailNotifierProvider,
          name: r'pokemonDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonDetailNotifierHash,
          dependencies: PokemonDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              PokemonDetailNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  PokemonDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  PokemonDetailUiState runNotifierBuild(
    covariant PokemonDetailNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(PokemonDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PokemonDetailNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PokemonDetailNotifier,
      PokemonDetailUiState> createElement() {
    return _PokemonDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonDetailNotifierRef
    on AutoDisposeNotifierProviderRef<PokemonDetailUiState> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PokemonDetailNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PokemonDetailNotifier,
        PokemonDetailUiState> with PokemonDetailNotifierRef {
  _PokemonDetailNotifierProviderElement(super.provider);

  @override
  int get id => (origin as PokemonDetailNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
