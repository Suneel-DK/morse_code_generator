# morse_code_converter

A Flutter package to convert between English text and Morse code.

## Features

- Convert English text to Morse code.
- Convert Morse code to English text.

## Getting Started
- Convert text to Morse code:
  String text = "Hello World";
  String morse = textToMorse(text);
  print("Morse Code: $morse");

- Convert Morse code to text:
  String morse = ".... . .-.. .-.. --- / .-- --- .-. .-.. -..";
  String decodedText = morseToText(morse);
  print("Decoded Text: $decodedText");
  


### Installation

Add the dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  morse_code_converter: #Latest Version
    
