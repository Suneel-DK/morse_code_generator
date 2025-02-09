import 'package:flutter/material.dart';
import 'package:morse_code_generator/morse_code_generator.dart';


void main() => runApp(const MorseCodeApp());

class MorseCodeApp extends StatelessWidget {
  const MorseCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MorseCodeHomePage(),
      debugShowCheckedModeBanner: false,
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

  String _textOutput = '';
  String _morseOutput = '';

  void _convertTextToMorse() {
    setState(() {
      _morseOutput = textToMorse(_textController.text);
    });
  }

  void _convertMorseToText() {
    setState(() {
      _textOutput = morseToText(_morseController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morse Code Converter'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Enter Text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _convertTextToMorse,
              child: const Text('Convert to Morse Code'),
            ),
            const SizedBox(height: 10),
            Text(
              'Morse Output: $_morseOutput',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 30, thickness: 2),
            TextField(
              controller: _morseController,
              decoration: const InputDecoration(
                labelText: 'Enter Morse Code (space-separated)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _convertMorseToText,
              child: const Text('Convert to Text'),
            ),
            const SizedBox(height: 10),
            Text(
              'Text Output: $_textOutput',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}