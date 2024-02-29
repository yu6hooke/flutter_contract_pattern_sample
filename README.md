# contract_pattern_sample

Architecture Sample For Flutter

Demo
https://yu6hooke.github.io/flutter_contract_pattern_sample/

## Getting Started

```
fvm use
```

## VSCode

#### 実行 (launch.json)

「Run And Debug」メニューから
=> debug, profile, release

#### 設定 (settings.json)

自動生成ファイルは畳む

```json
{
...
  "explorer.fileNesting.enabled": true,
  "explorer.fileNesting.expand": false,
  "explorer.fileNesting.patterns": {
    "*.dart": "$(capture).freezed.dart, $(capture).g.dart"
  }
}
```

<img width="40%" src="https://github.com/yu6hooke/flutter_contract_pattern_sample/assets/17083696/7ee99ef2-e2ef-43f7-a9c0-acfcacdfe010" />


#### Snippet

```json
"contract": {
  "prefix": "cont",
  "body": [
    "import 'package:freezed_annotation/freezed_annotation.dart';",
    "",
    "part '$TM_FILENAME_BASE.freezed.dart';",
    "",
    "@freezed",
    "class $1UiState with _\\$$1UiState {",
    "  const factory $1UiState({",
    "    ",
    "  }) = _$1UiState;",
    "}",
    "",
    "@freezed",
    "sealed class $1Action with _\\$$1Action {",
    "  const factory $1Action.sampleAction() = SampleAction;",
    "}",
    "",
    "@freezed",
    "sealed class $1Effect with _\\$$1Effect {",
    "  const factory $1Effect.none() = None;",
    "}",
  ]
}
```