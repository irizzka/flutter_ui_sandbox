import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RoomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
               // colors: [Color(0xFF8360c3), Color(0xFF2ebf91),Color(0xFF4e54c8)],
              colors: [Color(0xFF4286f4), Color(0xFF8360c3)],
            ),
          ),
          // color: Colors.blueAccent,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black.withOpacity(0.35),
                      child: Text('24/02 1.01PM'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Night Rally',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://mir-s3-cdn-cf.behance.net/user/115/39eb23241954597.5cba1b16ba712.jpg'),
                            ),
                            Positioned(
                              left: 28,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://mir-s3-cdn-cf.behance.net/user/115/f80d2c2473669.5b9d5a89204ea.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 56,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://mir-s3-cdn-cf.behance.net/user/115/6c8df111316951.598af09567b97.jpg'),
                              ),
                            )
                          ],
                        ),
                      ),
                      /*  CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),*/
                      Container(
                       margin: EdgeInsets.symmetric(horizontal: 4),
                        width: 130,
                        child: Text(
                          'You, Anna Jen, Alex Bohdan and 13 other',
                          maxLines: 2,
                        ),
                      ),
                      Spacer(),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        onPressed: () {},
                        child: Text('More'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
