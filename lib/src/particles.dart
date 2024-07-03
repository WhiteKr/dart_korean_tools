import 'package:characters/characters.dart';

/// Extension for Korean grammatical particles.
extension KoreanParticleExtension on String {
  /// Returns the object particle ('을' or '를').
  String get objectParticle => _getParticle('을', '를');

  /// Returns the subject particle ('이' or '가').
  String get subjectParticle => _getParticle('이', '가');

  /// Returns the topic particle ('은' or '는').
  String get topicParticle => _getParticle('은', '는');

  /// Returns the possessive particle ('의').
  String get possessiveParticle => '의';

  /// Returns the instrumental particle ('으로' or '로').
  String get instrumentalParticle => isEmpty
      ? ''
      : (characters.last.codeUnitAt(0) - 0xAC00) % 28 > 0
          ? '으로'
          : '로';

  /// Returns the comitative particle ('과' or '와').
  String get comitativeParticle => _getParticle('과', '와');

  String _getParticle(String consonantEnding, String vowelEnding) {
    if (isEmpty) return '';
    final lastCharCode = characters.last.codeUnitAt(0);
    return (lastCharCode - 0xAC00) % 28 > 0 ? consonantEnding : vowelEnding;
  }
}
