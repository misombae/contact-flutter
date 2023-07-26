import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: MyHomePage(),
      );
    }
  }

  class MyHomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
    int _currentIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // 왼쪽 아이콘을 눌렀을 때 동작할 코드
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 검색 아이콘을 눌렀을 때 동작할 코드
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // 설정 아이콘을 눌렀을 때 동작할 코드
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}