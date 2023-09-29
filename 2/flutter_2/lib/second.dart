import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'third.dart';

Color me_color = Color.fromARGB(255, 235, 235, 235);

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    //start
                    Container(
                      margin: (EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      width: 30,
                      height: 30,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          weight: 30,
                        ),
                        padding: EdgeInsets.only(left: 8),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: (EdgeInsets.fromLTRB(50, 0, 0, 0)),
                      child: Text(
                        "Popular Menu",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: (EdgeInsets.fromLTRB(0, 40, 0, 0)),
                child: Row(
                  children: [
                    //Search
                    Container(
                      margin: (EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      width: 280,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical(y: 1),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(30)),
                            hintText: "Search",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                    Container(
                      margin: (EdgeInsets.fromLTRB(30, 0, 0, 0)),
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        icon: Icon(
                          Icons.density_medium,
                          weight: 20,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdApp()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: (EdgeInsets.fromLTRB(0, 10, 0, 0)),
                child: ListBody(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image(
                                  image: Image.network(
                                "https://sun1-86.userapi.com/impg/2GZ0wrOlbyaSis0RnTC3wPGFYC3l1qVbRaibAQ/cNp_EaQlSIU.jpg?size=128x128&quality=96&sign=62e9e4178c9cd0fe4596ed142e8e2c3e&type=album",
                              ).image),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                    child: Text("Original Salad"),
                                  ),
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 20, 0, 0)),
                                    child: Text(
                                      "Lovy Food",
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: (EdgeInsets.fromLTRB(120, 0, 0, 0)),
                              child: Text(
                                "\$8",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.red[400]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image(
                                  image: Image.network(
                                "https://sun1-86.userapi.com/impg/2GZ0wrOlbyaSis0RnTC3wPGFYC3l1qVbRaibAQ/cNp_EaQlSIU.jpg?size=128x128&quality=96&sign=62e9e4178c9cd0fe4596ed142e8e2c3e&type=album",
                              ).image),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                    child: Text("Original Salad"),
                                  ),
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 20, 0, 0)),
                                    child: Text(
                                      "Lovy Food",
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: (EdgeInsets.fromLTRB(120, 0, 0, 0)),
                              child: Text(
                                "\$8",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.red[400]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image(
                                  image: Image.network(
                                "https://sun1-86.userapi.com/impg/2GZ0wrOlbyaSis0RnTC3wPGFYC3l1qVbRaibAQ/cNp_EaQlSIU.jpg?size=128x128&quality=96&sign=62e9e4178c9cd0fe4596ed142e8e2c3e&type=album",
                              ).image),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                    child: Text("Original Salad"),
                                  ),
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 20, 0, 0)),
                                    child: Text(
                                      "Lovy Food",
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: (EdgeInsets.fromLTRB(120, 0, 0, 0)),
                              child: Text(
                                "\$8",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.red[400]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image(
                                  image: Image.network(
                                "https://sun1-86.userapi.com/impg/2GZ0wrOlbyaSis0RnTC3wPGFYC3l1qVbRaibAQ/cNp_EaQlSIU.jpg?size=128x128&quality=96&sign=62e9e4178c9cd0fe4596ed142e8e2c3e&type=album",
                              ).image),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                    child: Text("Original Salad"),
                                  ),
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 20, 0, 0)),
                                    child: Text(
                                      "Lovy Food",
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: (EdgeInsets.fromLTRB(120, 0, 0, 0)),
                              child: Text(
                                "\$8",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.red[400]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image(
                                  image: Image.network(
                                "https://sun1-86.userapi.com/impg/2GZ0wrOlbyaSis0RnTC3wPGFYC3l1qVbRaibAQ/cNp_EaQlSIU.jpg?size=128x128&quality=96&sign=62e9e4178c9cd0fe4596ed142e8e2c3e&type=album",
                              ).image),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                    child: Text("Original Salad"),
                                  ),
                                  Container(
                                    margin: (EdgeInsets.fromLTRB(20, 20, 0, 0)),
                                    child: Text(
                                      "Lovy Food",
                                      style: TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: (EdgeInsets.fromLTRB(120, 0, 0, 0)),
                              child: Text(
                                "\$8",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.red[400]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                margin: (EdgeInsets.fromLTRB(30, 0, 0, 0)),
                                height: 50,
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  color: Colors.red[100],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.density_medium,
                                        weight: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                    Text(
                                      "Home",
                                      style: TextStyle(color: Colors.red[300]),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: (EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.shopping_basket_rounded,
                                    weight: 20,
                                    color: Colors.red[300],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                margin: (EdgeInsets.fromLTRB(10, 0, 0, 0)),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.message,
                                    weight: 20,
                                    color: Colors.red[300],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                margin: (EdgeInsets.fromLTRB(10, 0, 0, 0)),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    weight: 20,
                                    color: Colors.red[300],
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
