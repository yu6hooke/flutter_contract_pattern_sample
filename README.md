# contract_pattern_sample

Original Architecture Sample For Flutter

## Getting Started

```
fvm install
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

