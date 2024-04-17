import 'package:flutter/material.dart';
import 'package:flutter_2/pages/home/tab_index/index_recommend_item_widget.dart';

import '../tab_index/index_recommend_data.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> dataList;

  const IndexRecommend({super.key, this.dataList = indexRecommendItemList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          color: Color(0x08000000),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0))),
      child: Column(children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('推荐',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
            Text('更多', style: TextStyle(color: Colors.black45))
          ],
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children:
                dataList.map((item) => IndexRecommendItemWidget(item)).toList())
      ]),
    );
  }
}
