import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

// import 'common_image.dart';

const List<String> defaultImages = [
  // 图片宽度为1080，高度为810
  'https://is3-ssl.mzstatic.com/image/thumb/PurpleSource125/v4/7f/46/09/7f460980-aeac-72d4-eb73-164f0cb1d80c/978bd9ce-6ae4-47c8-a2da-4631a693e09e_5.5-01.png/406x228bb.png',
  'https://img0.baidu.com/it/u=3272976743,2244856248&fm=253&fmt=auto&app=138&f=JPEG?w=733&h=367',
  'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fb00b2913-4e9d-46d9-b6f0-82b32f77b81e%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1715861123&t=ff5d9a2294bf0fd5baa0d492f26298ae'
];

var imagesWidth = 1080.0;
var imagesHeight = 810.0;

class CommonSwiper extends StatelessWidget {
  final List<String> images;

  const CommonSwiper({super.key, this.images = defaultImages});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imagesWidth * imagesHeight;
    return SizedBox(
        height: height / 1.5,
        child: Swiper(
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            // return CommonImage(
            return Image.network(
              images[index],
              fit: BoxFit.fill,
              width: null,
            );
          },
          itemCount: images.length,
          pagination: const SwiperPagination(),
        ));
  }
}
