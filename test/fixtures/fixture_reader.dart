import 'dart:io';

String fixture(String feature, String name) =>
    File('test/fixtures/$feature/$name.json').readAsStringSync();

class FixtureNames {
  static const String ROVER_PHOTOS = 'rover_photos';
  static const String ROVER = 'rover';
  static const String PHOTO = 'photo';
}
