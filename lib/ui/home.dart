import 'package:flutter/material.dart';
import 'package:arabyy/sizeConfig.dart';

class Home extends StatelessWidget {
  static String routeName = '/Home';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return new Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.adb), title: Text("test")),
            BottomNavigationBarItem(icon: Icon(Icons.call), title: Text("us")),
            BottomNavigationBarItem(
                icon: Icon(Icons.map), title: Text("visit")),
          ],
        ),
        appBar: new AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: new Image.asset(
            "images/mm.jpg",
            height: getProportionateScreenHeight(60.00),
            width: getProportionateScreenWidth(800.00),
          ),
          leading: new IconButton(
              icon: new Icon(Icons.note),
              color: Colors.grey,
              onPressed: () => debugPrint("Icon Pressed")),
          elevation: 0,
          actions: [
            new IconButton(
                icon: new Icon(Icons.search),
                color: Colors.grey,
                onPressed: () => debugPrint("Icon Pressed")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              new Container(
                color: Colors.white,
                child: new Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              new Image.asset("images/mm.jpg",
                                  height: getProportionateScreenHeight(200.00),
                                  width: getProportionateScreenWidth(400.00)),
                              new Text("test"),
                              new Text("50.00"),
                              new Text("instock"),
                              new Image.asset("images/mm.jpg",
                                  height: getProportionateScreenHeight(200.00),
                                  width: getProportionateScreenWidth(400.00)),
                              new Text("test"),
                              new Text("50.00"),
                              new Text("instock"),
                            ],
                          ),
                        ),
                        IconButton(
                            icon: new Icon(Icons.favorite),
                            color: Colors.grey,
                            onPressed: () => debugPrint("Icon Pressed")),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
