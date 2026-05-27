library agrovida_content_pack;

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

const String kAgrovidaContentPackAssetPath =
    'packages/agrovida_content_pack/assets/agrovida_content_pack_v2.json';

Future<String> loadContentPackJson() {
  return rootBundle.loadString(kAgrovidaContentPackAssetPath);
}

Future<Map<String, dynamic>> loadContentPackDecoded() async {
  final raw = await loadContentPackJson();
  return jsonDecode(raw) as Map<String, dynamic>;
}
