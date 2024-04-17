import 'package:flutter/material.dart';

import 'index_recommend_data.dart';

var textStyle = const TextStyle(
    fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w500);

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommendItemWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, data.navigateUrl);
      },
      child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
          padding: const EdgeInsets.all(10.0),
          height: 100.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(data.title, style: textStyle),
                    Text(data.subTitle, style: textStyle)
                  ],
                ),
                Image.asset(
                  data.imageUrl,
                  width: 55.0,
                )
              ])),
    );
  }
}
