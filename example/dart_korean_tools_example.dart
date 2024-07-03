import 'package:dart_korean_tools/dart_korean_tools.dart';

void main() {
  print('사과'.objectParticle); // 를
  print('책'.subjectParticle); // 이
  print('학교'.topicParticle); // 는
  print('친구'.possessiveParticle); // 의
  print('차'.instrumentalParticle); // 로
  print('형'.comitativeParticle); // 과

  // Add examples for non-Korean strings
  print('apple'.objectParticle); // null
  print('book'.subjectParticle); // null
  print(''.possessiveParticle); // null

  // Add an example with mixed Korean and non-Korean
  print('Sam의 컴퓨터'.objectParticle); // 를
}
