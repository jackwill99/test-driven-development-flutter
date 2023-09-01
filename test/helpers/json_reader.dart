import 'dart:convert';
import 'dart:io';

Map<String, dynamic> readJson(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }
  return json
      .decode(File('$dir/test/helpers/dummy_data/$name').readAsStringSync());
}
