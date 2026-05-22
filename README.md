# agrovida_content_pack

Offline bundled Agrovida content pack for FlutterFlow custom code.

## What this package does

- bundles a static JSON asset at `assets/agrovida_content_pack_v1.json`
- exposes a small Dart API for loading that asset at runtime
- keeps the heavy payload out of FlutterFlow custom code

## Files

- `assets/agrovida_content_pack_v1.json`: the bundled content pack payload
- `lib/agrovida_content_pack.dart`: asset-path constant and loader helpers

## Usage

Add the package as a Git dependency in FlutterFlow custom dependencies:

```yaml
agrovida_content_pack:
  git:
    url: https://github.com/bakerhans/agrovida_content_pack.git
    ref: v0.1.0
```

Then import and use it from FlutterFlow custom code:

```dart
import 'package:agrovida_content_pack/agrovida_content_pack.dart';

Future<void> loadContentPackFromAsset() async {
  final jsonString = await loadContentPackJson();
  await loadContentPack(jsonString);
}
```

## Release flow

1. Commit the repo to GitHub.
2. Create a Git tag such as `v0.1.0`.
3. Point FlutterFlow at that tag.
