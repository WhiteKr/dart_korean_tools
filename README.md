# dart_korean_tools

A Dart package providing utilities for working with Korean language, particularly focusing on grammatical particles.

## Features

- Determine the correct Korean particle to use based on the ending of a word
- Support for various Korean grammatical particles:
  - Object particle (을/를)
  - Subject particle (이/가)
  - Topic particle (은/는)
  - Possessive particle (의)
  - Instrumental particle (으로/로)
  - Comitative particle (과/와)
- Check if a string contains Korean characters

## Getting started

To use this package, add `dart_korean_tools` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  dart_korean_tools: ^1.0.0
```

Then run `dart pub get` or `flutter pub get` to install the package.

## Usage

Here are some examples of how to use the `dart_korean_tools` package:

```dart
import 'package:dart_korean_tools/dart_korean_tools.dart';

void main() {
  final word1 = '사과';
  final word2 = '바나나';

  print(word1.objectParticle); // Output: 를
  print(word2.objectParticle); // Output: 를

  print(word1.subjectParticle); // Output: 가
  print(word2.subjectParticle); // Output: 가

  print(word1.topicParticle); // Output: 는
  print(word2.topicParticle); // Output: 는

  print(word1.possessiveParticle); // Output: 의
  print(word2.possessiveParticle); // Output: 의

  print(word1.instrumentalParticle); // Output: 로
  print(word2.instrumentalParticle); // Output: 로

  print(word1.comitativeParticle); // Output: 와
  print(word2.comitativeParticle); // Output: 와

  print(word1.isKorean); // Output: true
  print('apple'.isKorean); // Output: false
}
```

## Additional information

For more detailed information on Korean particles and their usage, you can refer to Korean language learning resources or grammatical guides.

If you encounter any issues or have suggestions for improvements, please file an issue on the package's GitHub repository. Contributions are welcome!

For more examples and detailed usage, check the `/example` folder in the package repository.
