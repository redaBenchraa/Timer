import 'dart:convert';

import 'dart:io';

Map<String, dynamic> fixture(String name) {
  return json.decode(
          File('${Directory.current.path}/fixtures/$name').readAsStringSync())
      as Map<String, dynamic>;
}
