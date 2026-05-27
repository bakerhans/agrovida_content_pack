library agrovida_content_pack;

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

const String kAgrovidaContentPackAssetPath =
    'packages/agrovida_content_pack/assets/agrovida_content_pack_v2.json';
const String kAgrovidaContentPackImagePrefix =
    'packages/agrovida_content_pack/assets/images/';

Future<String> loadContentPackJson() {
  return rootBundle.loadString(kAgrovidaContentPackAssetPath);
}

Future<Map<String, dynamic>> loadContentPackDecoded() async {
  final raw = await loadContentPackJson();
  return jsonDecode(raw) as Map<String, dynamic>;
}

String qualifyContentPackImagePath(String? imagePath) {
  final raw = (imagePath ?? '').trim();
  if (raw.isEmpty) {
    return '';
  }
  if (raw.startsWith(kAgrovidaContentPackImagePrefix)) {
    return raw;
  }
  const logicalPrefix = 'assets/images/';
  if (raw.startsWith(logicalPrefix)) {
    return '$kAgrovidaContentPackImagePrefix${raw.substring(logicalPrefix.length)}';
  }
  return raw;
}
