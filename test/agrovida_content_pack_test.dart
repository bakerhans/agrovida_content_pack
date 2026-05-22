import 'package:agrovida_content_pack/agrovida_content_pack.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('package asset path matches the Flutter package asset convention', () {
    expect(
      kAgrovidaContentPackAssetPath,
      'packages/agrovida_content_pack/assets/content_pack.json',
    );
  });
}
