import 'package:flutter/material.dart';
import 'package:flutter_2/config/routes.dart';

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('当前页面：$name')),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
              child: const Text(Routes.home),
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              }),
          ElevatedButton(
              child: const Text(Routes.login),
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              }),
          ElevatedButton(
              child: const Text('房屋详情页，ID：22'),
              onPressed: () {
                Navigator.pushNamed(context, '/room/22');
              }),
          ElevatedButton(
              child: const Text('页面不存在'),
              onPressed: () {
                Navigator.pushNamed(context, '/404');
              })
        ],
      ),
    );
  }
}
