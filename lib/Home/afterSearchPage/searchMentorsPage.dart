import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/model_course.dart';
import '../../model/model_mentor.dart';
import '../../widget/widget_course_completed.dart';
import '../../widget/widget_mentor.dart';

class SearchMentorsPage extends StatefulWidget {
  const SearchMentorsPage({super.key});

  @override
  State<SearchMentorsPage> createState() => _SearchMentorsPageState();
}

class _SearchMentorsPageState extends State<SearchMentorsPage> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: double.infinity,
        child: Column(
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
