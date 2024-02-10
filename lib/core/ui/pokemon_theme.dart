import 'package:flutter/material.dart';

class FontFamilyExt {
  const FontFamilyExt._();

  static const String hiraginoKakuGothicPro = 'Hiragino Kaku Gothic Pro';
}

extension PokemonColorScheme on ColorScheme {
  Color get hydreigonBlue => const Color(0XFF5A83CD);
  Color get seelWhite => const Color(0XFFE6E6F6);

  Color get normal => const Color(0XFFA8A77A);
  Color get fire => const Color(0XFFEE8130);
  Color get water => const Color(0XFF6390F0);
  Color get electric => const Color(0XFFF7D02C);
  Color get grass => const Color(0XFF7AC74C);
  Color get ice => const Color(0XFF96D9D6);
  Color get fighting => const Color(0XFFC22E28);
  Color get poison => const Color(0XFFA33EA1);
  Color get ground => const Color(0XFFE2BF65);
  Color get flying => const Color(0XFFA98FF3);
  Color get psychic => const Color(0XFFF95587);
  Color get bug => const Color(0XFFA6B91A);
  Color get rock => const Color(0XFFB6A136);
  Color get ghost => const Color(0XFF735979);
  Color get dragon => const Color(0XFF6F35FC);
  Color get dark => const Color(0XFF705746);
  Color get steel => const Color(0XFFB7B7CE);
  Color get fairy => const Color(0XFFD685AD);

  Color type({required String from}) => switch (from) {
        'normal' => normal,
        'fire' => fire,
        'water' => water,
        'electric' => electric,
        'grass' => grass,
        'ice' => ice,
        'fighting' => fighting,
        'poison' => poison,
        'ground' => ground,
        'flying' => flying,
        'psychic' => psychic,
        'bug' => bug,
        'rock' => rock,
        'ghost' => ghost,
        'dragon' => dragon,
        'dark' => dark,
        'steel' => steel,
        'fairy' => fairy,
        _ => throw UnimplementedError(),
      };
}

extension PokemonTypography on TextTheme {
  TextStyle get text16 => const TextStyle(
        fontSize: 16,
        fontFamily: FontFamilyExt.hiraginoKakuGothicPro,
        leadingDistribution: TextLeadingDistribution.even,
      );
  TextStyle get text14 => const TextStyle(
        fontSize: 16,
        fontFamily: FontFamilyExt.hiraginoKakuGothicPro,
        leadingDistribution: TextLeadingDistribution.even,
      );
  TextStyle get text24 => const TextStyle(
        fontSize: 24,
        fontFamily: FontFamilyExt.hiraginoKakuGothicPro,
        leadingDistribution: TextLeadingDistribution.even,
      );
}

extension PokemonTextStyle on TextStyle {
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
}
