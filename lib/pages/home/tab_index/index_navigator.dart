import 'package:flutter/material.dart';

// import '../../../components/common_image.dart';
import 'index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: indexNavigatorItemList
                .map((item) => InkWell(
                    onTap: () {
                      item.onTap(context);
                    },
                    child: Column(
                      children: <Widget>[
                        // CommonImage(item.imageUrl, width: 47.5),
                        Image.asset(item.imageUrl, width: 47.5),
                        Text(item.title,
                            style: const TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w500))
                      ],
                    )))
                .toList()));
  }
}
