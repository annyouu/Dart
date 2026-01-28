import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page B')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop('ラーメン'),
              child: const Text('ラーメン'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop('カレー'),
              child: const Text('カレー'),
            ),
          ],
        ),
      ),
    );
  }
}