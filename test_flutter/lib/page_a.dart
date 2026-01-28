import 'package:flutter/material.dart';
import 'page_b.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _food = '何にする?';

  void _goToPageB() async {
    final String? result = await Navigator.of(context).push<String?>(
      MaterialPageRoute(builder: (context) => const PageB()),
    );

    if (result != null) {
      setState(() {
        _food = result;
      });
    }
  }

  // アプリケーションの詳細設計を書いている
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('今日のランチは: $_food'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _goToPageB,
              child: const Text('食べ物を選ぶ'),
            ),
          ],
        ),
      ),
    );
  }
}