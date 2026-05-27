# agrovida_content_pack

Offline bundled Agrovida content pack for FlutterFlow custom code.

## What this package does

- bundles a static JSON asset at `assets/agrovida_content_pack_v2.json`
- bundles all referenced images under `assets/images/`
- exposes a small Dart API for loading that asset at runtime
- exposes a helper for converting logical image paths into package asset paths
- keeps the heavy payload out of FlutterFlow custom code

## Files

- `assets/agrovida_content_pack_v2.json`: the bundled content pack payload
- `assets/images/`: the bundled content pack image files
- `lib/agrovida_content_pack.dart`: asset-path constant and loader helpers

## Usage

Add the package as a Git dependency in FlutterFlow custom dependencies:

```yaml
agrovida_content_pack:
  git:
    url: https://github.com/bakerhans/agrovida_content_pack.git
    ref: v0.1.1
```

Then import and use it from FlutterFlow custom code:

```dart
import 'package:agrovida_content_pack/agrovida_content_pack.dart';

Future<void> loadContentPackFromAsset() async {
  final jsonString = await loadContentPackJson();
  await loadContentPack(jsonString);
}
```

When parsing image blocks from the content pack, normalize logical paths like
`assets/images/example.png` to package asset paths using:

```dart
final assetPath = qualifyContentPackImagePath('assets/images/example.png');
```

## Release flow

1. Commit the repo to GitHub.
2. Create a Git tag such as `v0.1.2`.
3. Point FlutterFlow at that tag.
