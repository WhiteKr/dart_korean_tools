import 'package:characters/characters.dart';

/// Extension for Korean grammatical particles.
extension KoreanParticleExtension on String {
  static final _koreanRegex = RegExp(
      r'[\u1100-\u11FF\u3130-\u318F\uA960-\uA97F\uAC00-\uD7AF\uD7B0-\uD7FF]');

  /// Returns the object particle ('을' or '를') if the string is Korean, otherwise returns null.
  String? get objectParticle => _getParticle('을', '를');

  /// Returns the subject particle ('이' or '가') if the string is Korean, otherwise returns null.
  String? get subjectParticle => _getParticle('이', '가');

  /// Returns the topic particle ('은' or '는') if the string is Korean, otherwise returns null.
  String? get topicParticle => _getParticle('은', '는');

  /// Returns the possessive particle ('의') if the string is Korean, otherwise returns null.
  String? get possessiveParticle => isEmpty ? null : (isKorean ? '의' : null);

  /// Returns the instrumental particle ('으로' or '로') if the string is Korean, otherwise returns null.
  String? get instrumentalParticle => _getParticle('으로', '로');

  /// Returns the comitative particle ('과' or '와') if the string is Korean, otherwise returns null.
  String? get comitativeParticle => _getParticle('과', '와');

  /// Checks if the string contains Korean characters.
  bool get isKorean => _koreanRegex.hasMatch(this);

  String? _getParticle(String consonantEnding, String vowelEnding) {
    if (isEmpty) return null;
    if (!isKorean) return null;
    final lastCharCode = characters.last.codeUnitAt(0);
    return (lastCharCode - 0xAC00) % 28 > 0 ? consonantEnding : vowelEnding;
  }
}
