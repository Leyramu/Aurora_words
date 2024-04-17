import 'package:flutter/material.dart';
import 'package:flutter_2/pages/home/info/index.dart';

var textStyle = const TextStyle(color: Colors.black54);

class ItemWidget extends StatelessWidget {
  final InfoItem data;

  const ItemWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        height: 100,
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(children: <Widget>[
          Image.asset(data.imageUrl, width: 120.0, height: 90.0),
          const Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                Text(data.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        data.source,
                        style: textStyle,
                      ),
                      Text(
                        data.time,
                        style: textStyle,
                      )
                    ])
              ]))
        ]));
  }
}
