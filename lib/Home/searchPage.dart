import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/Home/afterSearchPage/searchCoursesPage.dart';
import 'package:slicing_tim6/Home/afterSearchPage/searchMentorsPage.dart';
import 'package:slicing_tim6/widget/search_only.dart';

import '../inbox/call.dart';
import '../inbox/chat.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with SingleTickerProviderStateMixin{
  bool _onSearch = false;
  late TabController _tabController;
  TextEditingController txtSearch = TextEditingController();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna AppBar
        title: Text(
          'Search',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Memberikan ruang kiri kanan pada badan halaman
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white10, width: 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: txtSearch,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Here",
                  prefixIcon: _onSearch ? Icon(Icons.search,color: Colors.white,):Icon(Icons.close_rounded, color: Colors.white,),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _onSearch=!_onSearch;
                        if(!_onSearch){
                          txtSearch.text = "";
                        }
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blue
                      ),
                      child: _onSearch ? Icon(Icons.close_rounded, color: Colors.white,) : Icon(Icons.search,color: Colors.white,)
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !_onSearch,
              child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recent Searches',
                              style: TextStyle(
                                fontFamily: 'Jost',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'SEE ALL >',
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF0961F5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.symmetric(vertical: 5), // Tambahkan padding vertical di dalam ListView
                          children: [
                            KalimatWithX(kalimat: '3D Design'),
                            KalimatWithX(kalimat: 'Graphic Design'),
                            KalimatWithX(kalimat: 'Programming'),
                            KalimatWithX(kalimat: 'SEO & Marketing'),
                            KalimatWithX(kalimat: 'Web Development'),
                            KalimatWithX(kalimat: 'Office Productivity'),
                            KalimatWithX(kalimat: 'Personal Development'),
                            KalimatWithX(kalimat: 'Finance & Accounting'),
                            KalimatWithX(kalimat: 'HR Management'),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Visibility(
              visible: _onSearch,
              child: Expanded(
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10),
                        TabBar(
                          controller: _tabController,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.green[700],
                          ),
                          dividerColor: Color(0xFFF5F9FF),
                          tabs: [
                            Tab(
                              text: 'Courses',
                            ),
                            Tab(
                              text: 'Mentors',
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Jost',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Result For "',
                                    ),
                                    TextSpan(
                                      text: '${txtSearch.text}',
                                      style: TextStyle(
                                        color: Colors.blue, // Ubah warna teks untuk variabel ini
                                      ),
                                    ),
                                    TextSpan(text: '"')
                                  ],
                                ),
                              ),
                              Text(
                                '2480 Found >',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF0961F5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          SearchCoursesPage(),
                          SearchMentorsPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

class KalimatWithX extends StatelessWidget {
  final String kalimat;

  const KalimatWithX({required this.kalimat});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              kalimat,
              style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA0A4AB),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          IconButton(
            onPressed: () {
              // Tambahkan logika yang diinginkan ketika tombol 'x' ditekan
            },
            icon: Icon(
              Icons.close,
              color: Color(0xFF472D2D),
              size: 11, // Ubah ukuran ikon 'x'
            ),
          ),
        ],
      ),
    );
  }
}
