import 'package:flutter/material.dart';
import 'package:flutter_2/components/common_swiper.dart';
import 'package:flutter_2/pages/home/info/data.dart';
import 'package:flutter_2/pages/home/tab_index/index_navigator.dart';
import 'package:flutter_2/pages/home/tab_index/index_recommend.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('首页')),
        body: ListView(children: const <Widget>[
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommend(),
          Info(showTitle: true),
          Text(''),
        ]));
  }
}
