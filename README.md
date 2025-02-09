# Morse Code Converter Package

A simple and efficient Dart package for converting between English text and Morse code. This package provides utilities to encode text to Morse code and decode Morse code back to text, with support for punctuation and enhanced error handling.

## Features

- **Text to Morse Conversion:** Convert English text (including spaces and punctuation) to Morse code.
- **Morse to Text Conversion:** Decode valid Morse code sequences to readable English text.
- **Punctuation Support:** Supports common punctuation characters like `. , ? !`.
- **Error Handling:** Alerts when encountering unsupported characters or invalid Morse sequences.
- **Validation Functions:**
  - `isValidText()` ensures input contains only convertible characters.
  - `isValidMorse()` checks if Morse input follows valid patterns.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  morse_code_converter: ^1.0.0
```

Then, run:

```bash
flutter pub get
```

## Usage

### Import the Package

```dart
import 'package:morse_code_converter/morse_code_converter.dart';
```

### Encode Text to Morse

```dart
void main() {
  String text = "HELLO, WORLD!";
  String morseCode = textToMorse(text);
  print("Morse Code: $morseCode");
}
```

### Decode Morse to Text

```dart
void main() {
  String morseCode = ".... . .-.. .-.. --- / .-- --- .-. .-.. -..";
  String decodedText = morseToText(morseCode);
  print("Decoded Text: $decodedText");
}
```

### Validation Example

```dart
void main() {
  String text = "HELLO!";
  if (isValidText(text)) {
    print("Valid for Morse Conversion");
  } else {
    print("Invalid characters in text.");
  }
}
```

## API Reference

### Functions

- `String textToMorse(String text)`
  - Converts English text to Morse code.
- `String morseToText(String morse)`
  - Converts Morse code to English text.
- `bool isValidText(String text)`
  - Validates if the text can be converted to Morse code.
- `bool isValidMorse(String morse)`
  - Checks if the Morse code input is valid.

## Supported Characters

- **Alphabets:** A-Z (case-insensitive)
- **Digits:** 0-9
- **Punctuation:** `. , ? !`
- **Spaces:** Represented as `/` in Morse

## Example Output

```
Input Text: HELLO
Morse Code: .... . .-.. .-.. ---
```

```
Input Morse: .... . .-.. .-.. ---
Decoded Text: HELLO
```

## License

This package is licensed under the MIT License. See [LICENSE](LICENSE) for details.

---

Happy Coding with Morse!
