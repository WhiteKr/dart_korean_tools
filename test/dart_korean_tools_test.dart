import 'package:dart_korean_tools/dart_korean_tools.dart';
import 'package:test/test.dart';

void main() {
  group('Korean Particles', () {
    test('Object particle', () {
      expect('사과'.objectParticle, equals('를'));
      expect('책'.objectParticle, equals('을'));
    });

    test('Subject particle', () {
      expect('나무'.subjectParticle, equals('가'));
      expect('꽃'.subjectParticle, equals('이'));
    });

    test('Topic particle', () {
      expect('학교'.topicParticle, equals('는'));
      expect('산'.topicParticle, equals('은'));
    });

    test('Possessive particle', () {
      expect('친구'.possessiveParticle, equals('의'));
    });

    test('Instrumental particle', () {
      expect('차'.instrumentalParticle, equals('로'));
      expect('펜'.instrumentalParticle, equals('으로'));
    });

    test('Comitative particle', () {
      expect('형'.comitativeParticle, equals('과'));
      expect('누나'.comitativeParticle, equals('와'));
    });
  });
}
