import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'second.dart';

Color me_color = Color.fromARGB(255, 235, 235, 235);

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image(
                      width: 392.7,
                      image: NetworkImage(
                          'https://sun9-15.userapi.com/impg/ENX5hBpigkfBtogYVp8TNCmucZfnCg6xNdRIGw/T55GuM5CHQ0.jpg?size=933x796&quality=96&sign=c23031e3ca51d83d81b8bb5a3a185865&type=album'),
                    ),
                  ),
                ),
                Container(
                  margin: (EdgeInsets.fromLTRB(0, 250, 0, 0)),
                  child: Container(
                    width: 372.7,
                    height: 520,
                    child: ClipPath(
                      clipper: OvalTopBorderClipper(),
                      child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: me_color,
                          ),
                          child: Column(
                            children: [],
                          )),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  margin: (EdgeInsets.fromLTRB(0, 220, 0, 0)),
                  decoration: BoxDecoration(
                    color: me_color, // border color
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondApp()));
                      },
                      elevation: 2.0,
                      fillColor: Colors.orange[300],
                      child: Icon(
                        Icons.play_arrow,
                        color: me_color,
                        size: 30.0,
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: (EdgeInsets.fromLTRB(0, 320, 0, 0)),
                  child: Text(
                    "Secrets of Atlantis",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
                  ),
                ),
                Container(
                  margin: (EdgeInsets.fromLTRB(0, 360, 0, 0)),
                  width: 140,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            color: Colors.orange,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 180,
                  margin: (EdgeInsets.fromLTRB(0, 420, 0, 0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                      ),
                      child: Stack(
                        children: [
                          //block
                          Container(
                            height: 120,
                            color: Colors.blue[600],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 70,
                            margin: (EdgeInsets.fromLTRB(0, 220, 0, 0)),
                            decoration: BoxDecoration(
                              color: Colors.amber, // border color
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 110,
                  margin: (EdgeInsets.fromLTRB(0, 620, 0, 0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange[300],
                      ),
                      child: Stack(
                        children: [
                          //block
                          Container(
                              margin: (EdgeInsets.fromLTRB(170, 0, 0, 0)),
                              child: Row(
                                children: [
                                  Text(
                                    "Invite your\n friends to join",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                  Icon(Icons.share_outlined)
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
