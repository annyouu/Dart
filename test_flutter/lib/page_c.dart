import 'package:flutter/material.dart';
import 'page_b.dart';
import 'api_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _food = '何にする？';
  String _apiTitle = '未取得';
  final ApiService _apiService = ApiService();

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

  void _fetchFormApi() async {
    try {
      final album = await _apiService.fetchAlbum();
      setState(() {
        _apiTitle = album.title;
      });
    } catch (e) {
      setState(() {
        _apiTitle = 'エラーが発生しました';
      });
    }
  }

  // アプリケーションの詳細設計を書く
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
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _goToPageB,
              child: const Text('食べ物を選ぶ'),
            ),

            // 境界線を追加
            const Divider(height: 50, thickness: 2, color: Color.fromARGB(255, 0, 224, 19)),

            // APIセクション
            const Text('APIから取得したデータ'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                _apiTitle,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _fetchFormApi,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue[50]),
              child: const Text('ネットから取得'),
            ),
          ],
        ),
      ),
    );
  }
}