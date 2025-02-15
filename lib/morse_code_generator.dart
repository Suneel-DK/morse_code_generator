library morse_code_converter;

const Map<String, String> _morseCodeMap = {
  'A': '.-',
  'B': '-...',
  'C': '-.-.',
  'D': '-..',
  'E': '.',
  'F': '..-.',
  'G': '--.',
  'H': '....',
  'I': '..',
  'J': '.---',
  'K': '-.-',
  'L': '.-..',
  'M': '--',
  'N': '-.',
  'O': '---',
  'P': '.--.',
  'Q': '--.-',
  'R': '.-.',
  'S': '...',
  'T': '-',
  'U': '..-',
  'V': '...-',
  'W': '.--',
  'X': '-..-',
  'Y': '-.--',
  'Z': '--..',
  '1': '.----',
  '2': '..---',
  '3': '...--',
  '4': '....-',
  '5': '.....',
  '6': '-....',
  '7': '--...',
  '8': '---..',
  '9': '----.',
  '0': '-----',
  ' ': '/',
  ',': '--..--',
  '.': '.-.-.-',
  '?': '..--..',
  '!': '-.-.--'
};

const Map<String, String> _reverseMorseCodeMap = {
  '.-': 'A',
  '-...': 'B',
  '-.-.': 'C',
  '-..': 'D',
  '.': 'E',
  '..-.': 'F',
  '--.': 'G',
  '....': 'H',
  '..': 'I',
  '.---': 'J',
  '-.-': 'K',
  '.-..': 'L',
  '--': 'M',
  '-.': 'N',
  '---': 'O',
  '.--.': 'P',
  '--.-': 'Q',
  '.-.': 'R',
  '...': 'S',
  '-': 'T',
  '..-': 'U',
  '...-': 'V',
  '.--': 'W',
  '-..-': 'X',
  '-.--': 'Y',
  '--..': 'Z',
  '.----': '1',
  '..---': '2',
  '...--': '3',
  '....-': '4',
  '.....': '5',
  '-....': '6',
  '--...': '7',
  '---..': '8',
  '----.': '9',
  '-----': '0',
  '/': ' ',
  '--..--': ',',
  '.-.-.-': '.',
  '..--..': '?',
  '-.-.--': '!'
};

/// Converts English text to Morse code.
/// Throws an [ArgumentError] if any unsupported character is detected.
String textToMorse(String text) {
  final result = text.toUpperCase().split('').map((char) {
    if (!_morseCodeMap.containsKey(char)) {
      throw ArgumentError('Unsupported character: $char');
    }
    return _morseCodeMap[char] ?? '';
  }).join(' ');
  return result;
}

/// Converts Morse code back to English text.
/// Throws an [ArgumentError] if an invalid Morse sequence is found.
String morseToText(String morse) {
  final result = morse.split(' ').map((code) {
    if (!_reverseMorseCodeMap.containsKey(code)) {
      throw ArgumentError('Invalid Morse sequence: $code');
    }
    return _reverseMorseCodeMap[code] ?? '';
  }).join('');
  return result;
}

/// Validates whether the given text contains only valid English characters for Morse conversion.
bool isValidText(String text) {
  return text
      .toUpperCase()
      .split('')
      .every((char) => _morseCodeMap.containsKey(char));
}

/// Validates whether the given Morse code sequence is valid.
bool isValidMorse(String morse) {
  return morse
      .split(' ')
      .every((code) => _reverseMorseCodeMap.containsKey(code));
}
