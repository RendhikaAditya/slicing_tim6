import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:slicing_tim6/Home/homePage.dart';

class BottomNavigation extends StatefulWidget {
  final String initialRoute;

  BottomNavigation(this.initialRoute);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    var logger = Logger();
    logger.d("Data dari push :: ${widget.initialRoute}");

    // Pengecekan nilai initialRoute
    if (widget.initialRoute == "Home") {
      setState(() {
        _selectedIndex = 0;
      });
    } else if (widget.initialRoute == "My Courses") {
      setState(() {
        _selectedIndex = 1;
      });
    } else if (widget.initialRoute == "Inbox") {
      setState(() {
        _selectedIndex = 2;
      });
    } else if (widget.initialRoute == "Transaction") {
      setState(() {
        _selectedIndex = 3;
      });
    } else if (widget.initialRoute == "Profile") {
      setState(() {
        _selectedIndex = 4;
      });
    }
  }

  final List<Widget> _pages = [
    HomePage(),
    MyCoursesPage(),
    InboxPage(),
    TransactionPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.blue[900] : Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: _selectedIndex == 1 ? Colors.blue[900] : Colors.grey),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox, color: _selectedIndex == 2 ? Colors.blue[900] : Colors.grey),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on, color: _selectedIndex == 3 ? Colors.blue[900] : Colors.grey),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _selectedIndex == 4 ? Colors.blue[900] : Colors.grey),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
      ),
    );
  }
}


class MyCoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'My Courses Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Inbox Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Transaction Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}


