import 'package:flutter/material.dart';
import 'package:flutter_2/pages/home/info/item_widget.dart';

import 'index.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      if (showTitle)
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(10.0),
          child: const Text('每日英语',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
        ),
      Column(
        children: dataList.map((item) => ItemWidget(item)).toList(),
      )
    ]);
  }
}
