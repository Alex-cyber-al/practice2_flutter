import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PracticeScreen()));

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});
  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  String _text = "Початковий текст";
  bool _changeType = false;

  void _updateState() {
    setState(() {
      _text = "Текст змінено!";
      _changeType = true; // Наступний клік оновить і тип віджета
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _changeType 
          ? Container(child: Text(_text)) // Був тип Center -> став Container
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_text),
                ElevatedButton(
                  onPressed: _updateState, 
                  child: const Text("Натисни мене"),
                ),
              ],
            ),
      ),
    );
  }
}
