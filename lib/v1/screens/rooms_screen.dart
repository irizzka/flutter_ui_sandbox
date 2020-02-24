import 'package:flutter/material.dart';
import 'package:flutter_ui_sandbox/v1/widgets/room_card.dart';
import 'package:flutter_ui_sandbox/v1/widgets/room_navigation_bar.dart';

class RoomsScreen extends StatelessWidget {

  static const routeName = '/rooms-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Rooms'),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.dehaze),
          )
        ],
      ),
      body: RoomCard(),

      bottomNavigationBar: RoomNavigationBar(),
    );
  }
}
