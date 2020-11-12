import 'dart:convert';

import 'dart:io';

Map<String, dynamic> fixture(String name) =>
    json.decode(File('test/fixtures/$name').readAsStringSync())
        as Map<String, dynamic>;
