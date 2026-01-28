import 'dart:convert';
import 'package:http/http.dart' as http;

// データの箱
class Album {
  final String title;
  Album({required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(title: json['title']);
  }
}

// 通信機能
class ApiService {
  Future<Album> fetchAlbum() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    );

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('APIリクエストに失敗しました');
    }
  }
}