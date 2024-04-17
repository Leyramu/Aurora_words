// import 'package:flutter/material.dart';
// import 'package:flutter_advanced_networkimage_2/provider.dart';
//
// final networkUrlRef = RegExp('^http');
// final localUrlRef = RegExp('^static');
//
// class CommonImage extends StatelessWidget {
//   final String src;
//   final double? width;
//   final double? height;
//   final BoxFit? fit;
//
//   const CommonImage(this.src,
//       {super.key, required this.width, this.height, this.fit});
//
//   @override
//   Widget build(BuildContext context) {
//     if (networkUrlRef.hasMatch(src)) {
//       return Image(
//         image: AdvancedNetworkImage(
//           src,
//           useDiskCache: true,
//           cacheRule: const CacheRule(maxAge: Duration(days: 7)),
//           timeoutDuration: const Duration(seconds: 20),
//         ),
//         width: width,
//         height: height,
//         fit: fit,
//       );
//     } else if (localUrlRef.hasMatch(src)) {
//       return Image.asset(
//         src,
//         width: width,
//         height: height,
//         fit: fit,
//       );
//     }
//     assert(false, '图片地址错误');
//     return const Placeholder();
//   }
// }
