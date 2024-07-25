import 'package:flutter/material.dart';
import 'package:morse_code_generator/morse_code_generator.dart';

void main() {
  runApp(const MorseCodeApp());
}

class MorseCodeApp extends StatelessWidget {
  const MorseCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Morse Code Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MorseCodeHomePage(),
    );
  }
}

class MorseCodeHomePage extends StatefulWidget {
  const MorseCodeHomePage({super.key});

  @override
State<MorseCodeHomePage> createState() => _MorseCodeHomePageState();
}

class _MorseCodeHomePageState extends State<MorseCodeHomePage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _morseController = TextEditingController();
  String _morseCode = '';
  String _decodedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morse Code Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Enter Text',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _morseCode = textToMorse(_textController.text);
                });
              },
              child: const Text('Convert to Morse'),
            ),
            const SizedBox(height: 16),
            Text('Morse Code: $_morseCode'),
            const SizedBox(height: 16),
            TextField(
              controller: _morseController,
              decoration: const InputDecoration(
                labelText: 'Enter Morse Code',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _decodedText = morseToText(_morseController.text);
                });
              },
              child: const Text('Convert to Text'),
            ),
            const SizedBox(height: 16),
            Text('Decoded Text: $_decodedText'),
          ],
        ),
      ),
    );
  }
}
