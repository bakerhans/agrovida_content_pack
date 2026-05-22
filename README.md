# agrovida_content_pack

Offline bundled Agrovida content pack for FlutterFlow custom code.

## What this package does

- bundles a static JSON asset at `assets/content_pack.json`
- exposes a small Dart API for loading that asset at runtime
- keeps the heavy payload out of FlutterFlow custom code

## Files

- `assets/content_pack.json`: the bundled content pack payload
- `lib/agrovida_content_pack.dart`: asset-path constant and loader helpers

## Usage

Add the package as a Git dependency in FlutterFlow custom dependencies:

```yaml
agrovida_content_pack:
  git:
    url: https://github.com/YOUR_GITHUB_USER_OR_ORG/agrovida_content_pack.git
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

1. Replace the placeholder `assets/content_pack.json` with the real payload.
2. Update the `repository:` field in `pubspec.yaml`.
3. Commit the repo to GitHub.
4. Create a Git tag such as `v0.1.0`.
5. Point FlutterFlow at that tag.

