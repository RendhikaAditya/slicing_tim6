import 'dart:convert';
import 'dart:math'; // Impor library dart:math untuk menghasilkan nomor acak

import 'package:http/http.dart' as http;

class ModelMentor {
  final String imageUrl;
  final String name;
  final String kelas; // Menambahkan properti kelas

  ModelMentor({required this.imageUrl, required this.name, required this.kelas});
}

Future<List<ModelMentor>> fetchUsers() async {
  final response = await http.get(Uri.parse('https://randomuser.me/api/?results=10'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<String> kelasList = [ // Daftar kelas yang tersedia
      '3D Design',
      'Web Programmer',
      'Mobile Developer',
      'Personal Development',
      'Office Productivity'
    ];
    final List<ModelMentor> users = [];

    for (var result in data['results']) {
      final String imageUrl = result['picture']['large'];
      final String name = '${result['name']['first']} ${result['name']['last']}';
      final String randomKelas = kelasList[Random().nextInt(kelasList.length)]; // Ambil kelas secara acak
      users.add(ModelMentor(imageUrl: imageUrl, name: name, kelas: randomKelas));
    }

    return users;
  } else {
    throw Exception('Failed to load users');
  }
}
