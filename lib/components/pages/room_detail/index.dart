import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;

  const RoomDetailPage({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoomID: $roomId'),
      ),
      body: Center(
        child: Text('Room Detail: $roomId'),
      ),
    );
  }
}
