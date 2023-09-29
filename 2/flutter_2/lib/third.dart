import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

Color me_color = const Color.fromRGBO(100, 181, 246, 1);

class ThirdApp extends StatelessWidget {
  const ThirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    //start
                    Container(
                      margin: (EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      width: 30,
                      height: 30,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          weight: 30,
                        ),
                        padding: EdgeInsets.only(left: 8),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: (EdgeInsets.fromLTRB(50, 0, 0, 0)),
                      child: Text(
                        "Organizer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: (EdgeInsets.fromLTRB(130, 0, 0, 0)),
                      width: 30,
                      height: 30,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          weight: 30,
                          color: Colors.blue[800],
                        ),
                        padding: EdgeInsets.only(bottom: 1),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: Image.network(
                              "https://sun9-72.userapi.com/impg/PvWtqfa_1x8rMH2Wx2vHqSrf0CJ8xpjnIun6Ew/bvJdZxzPJEw.jpg?size=240x240&quality=96&sign=af1301c03cd4e761d129d438b476f60d&type=album")
                          .image,
                    )),
              ),
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[300]),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          margin: (EdgeInsets.fromLTRB(20, 0, 20, 0)),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: IconButton(
                            icon: Icon(
                              Icons.person_add_alt_1_rounded,
                              weight: 30,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.only(bottom: 1),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: (EdgeInsets.fromLTRB(0, 0, 20, 0)),
                          child: Text(
                            "Follow",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: me_color,
                            width: 1.0,
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          margin: (EdgeInsets.fromLTRB(20, 0, 20, 0)),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: IconButton(
                            icon: Icon(
                              Icons.message,
                              weight: 30,
                              color: Colors.blue[300],
                            ),
                            padding: EdgeInsets.only(bottom: 1),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: (EdgeInsets.fromLTRB(0, 0, 20, 0)),
                          child: Text(
                            "Messages",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue[300],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: me_color,
                              width: 1.0,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        backgroundColor: MaterialStateProperty.all(me_color),
                      ),
                      onPressed: () {},
                      child: Container(
                        margin: (EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        child: Text(
                          "Messages",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: me_color,
                              width: 1.0,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      child: Container(
                        margin: (EdgeInsets.fromLTRB(18, 10, 18, 10)),
                        child: Text(
                          "Events",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: me_color,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: me_color,
                              width: 1.0,
                            ),
                          ),
                        ),
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      child: Container(
                        margin: (EdgeInsets.fromLTRB(18, 10, 18, 10)),
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: me_color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("About"),
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n" +
                              "sed do eiusmod tempor incididunt ut labore et dolore\n" +
                              "magna aliqua. Ut enim ad minim veniam, quis nostrud \n" +
                              "exercitation ullamco laboris nisi ut Lorem ipsum dolor sit \n" +
                              "amet, consectetur adipiscing elit, sed do eiusmod \n" +
                              "tempor incididunt ut labore et dolore magna aliqua.\n",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "Read more...",
                          style:
                              TextStyle(color: Colors.blue[400], fontSize: 16),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
