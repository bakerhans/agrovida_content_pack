import 'package:agrovida_content_pack/agrovida_content_pack.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('package asset path matches the Flutter package asset convention', () {
    expect(
      kAgrovidaContentPackAssetPath,
      'packages/agrovida_content_pack/assets/agrovida_content_pack_v2.json',
    );
  });
}
