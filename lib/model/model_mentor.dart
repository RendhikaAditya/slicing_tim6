
import 'dart:convert';

import 'package:http/http.dart' as http;

class ModelMentor {
  final String imageUrl;
  final String name;

  ModelMentor({required this.imageUrl, required this.name});
}

Future<List<ModelMentor>> fetchUsers() async {
  final response = await http.get(Uri.parse('https://randomuser.me/api/?results=10'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<ModelMentor> users = [];

    for (var result in data['results']) {
      final String imageUrl = result['picture']['large'];
      final String name = '${result['name']['first']} ${result['name']['last']}';
      users.add(ModelMentor(imageUrl: imageUrl, name: name));
    }

    return users;
  } else {
    throw Exception('Failed to load users');
  }
}