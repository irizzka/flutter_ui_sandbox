import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UiHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              // height: 200,
              width: MediaQuery.of(context).size.width - 100,
              child: Text(
                'Latest topics',
                maxLines: 2,
                style: TextStyle(
                    fontSize: 45, fontWeight: FontWeight.w500, height: 0.9),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 400,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/6eb64c74565807.5cc19e418dc71.png'),
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            children: <Widget>[
                              Spacer(),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.red,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: const Text('New'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              color: Colors.black.withOpacity(0.3),
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://mir-s3-cdn-cf.behance.net/user/115/f80d2c2473669.5b9d5a89204ea.jpg'),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'CCTV Cameras',

                                            style: TextStyle(
                                              fontSize: 20
                                            ),
                                            maxLines: 2,
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text('2/24 3:02PM',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontSize: 12,

                                          ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
