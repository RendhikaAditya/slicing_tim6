import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});
  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // implementasi aksi tombol kembali di sini
              },
            ),
            Text("Inbox"),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // implementasi aksi pencarian di sini
              },
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // Sesuaikan ketinggian sesuai kebutuhan
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // implementasi aksi tombol chat di sini
                },
                child: Text('Chat'),
              ),
              ElevatedButton(
                onPressed: () {
                  // implementasi aksi tombol call di sini
                },
                child: Text('Call'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Jumlah card yang ingin ditampilkan
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      // Ganti dengan gambar profil sesuai kebutuhan
                      backgroundImage: AssetImage('assets/images/imageprofile.png'),
                    ),
                    title: Text('Title $index'), // Judul
                    subtitle: Text('Subtitle $index'), // Subjudul
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
