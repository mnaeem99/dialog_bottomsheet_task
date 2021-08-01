import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 500,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                  image: AssetImage('images/k2.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                )),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: const Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('41'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SimpleDialog(
                              title: Text('Do you really want to call?'),
                              children: [
                                SimpleDialogOption(
                                  onPressed: () {},
                                  child: Text('YES'),
                                ),
                                SimpleDialogOption(
                                  onPressed: () {},
                                  child: Text('NO'),
                                ),
                              ],
                            );
                          });
/*
                      */
                    },
                    child: Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'CALL',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: new Text(
                                    "Do you really want to change Route? "),
                                actions: [
                                  Row(
                                    children: [
                                      FlatButton(
                                          onPressed: () {},
                                          child: Text('Yes')),
                                      FlatButton(
                                          onPressed: () {},
                                          child: Text('No')),],
                                  )
                                ],
                              );
                            });

                      },
                      child: Icon(Icons.near_me, color: Colors.blue)),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'ROUTE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        shareBottomSheet(context);
                      },
                      child: Icon(Icons.share, color: Colors.blue)),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'SHARE',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
            ),
          )
        ],
      ),
    );
  }
  void shareBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.email),
                    title: new Text('Share via Email'),
                    onTap: () => {}),
                new ListTile(
                  leading: new Icon(Icons.mail),
                  title: new Text('Share via Gmail'),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.bluetooth),
                  title: new Text('Share via Bluetooth'),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.message),
                  title: new Text('Share via SMS'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }

}
