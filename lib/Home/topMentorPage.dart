import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/widget_mentor.dart';

import '../model/model_mentor.dart';


class TopMentorPage extends StatefulWidget {

  @override
  State<TopMentorPage> createState() => _TopMentorPageState();
}

class _TopMentorPageState extends State<TopMentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Mentor',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan kode fungsi pencarian di sini
              // Misalnya: Navigator.push untuk menuju layar pencarian
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<List<ModelMentor>>(
                future: fetchUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return WidgetMentor(
                            namaUser: snapshot.data![index].name,
                            imageUrl: snapshot.data![index].imageUrl,
                            section: snapshot.data![index].kelas,
                          );
                        },
                      ),
                    );
                  }
                },
              ),

          )
        ],
      )
    );
  }
}
