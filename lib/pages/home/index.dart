import 'package:flutter/material.dart';
import 'package:flutter_2/pages/home/tab_index/index.dart';
import 'package:flutter_2/components/page_content.dart';

List<Widget> tabViews = [
  const TabIndex(),
  const PageContent(name: '翻译'),
  const PageContent(name: 'AI'),
  const PageContent(name: '我的')
];

List<BottomNavigationBarItem> bottomNavigationBarItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
  const BottomNavigationBarItem(icon: Icon(Icons.translate), label: '翻译'),
  const BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: 'AI'),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的')
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViews[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: bottomNavigationBarItems,
        currentIndex: _selectIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
