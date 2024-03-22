import 'package:flutter/material.dart';
import 'package:slicing_tim6/inbox/inbox.dart';
import 'package:slicing_tim6/myCourse/myCourse.dart';
import 'package:slicing_tim6/profile/profile.dart';
import 'package:slicing_tim6/transaction/transaction_page.dart';
import '../Home/homePage.dart';

class PageBottomBar extends StatefulWidget {
  const PageBottomBar({Key? key}) : super(key: key);

  @override
  State<PageBottomBar> createState() => _PageBottomBarState();
}

class _PageBottomBarState extends State<PageBottomBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const[
          HomePage(),
          MyCourse(),
          Inbox(),
          TransactionPage(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const [
            Tab(
              text: "Home",
              icon: Icon(Icons.home_outlined),
            ),
            Tab(
              text: "My Course",
              icon: Icon(Icons.menu_book_outlined),
            ),
            Tab(
              text: "Inbox",
              icon: Icon(Icons.chat_outlined),
            ),
            Tab(
              text: "Transaction",
              icon: Icon(Icons.account_balance_wallet_outlined),
            ),
            Tab(
              text: "Profile",
              icon: Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}
