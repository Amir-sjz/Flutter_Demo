import 'package:flutter/material.dart';
import 'loading.dart';
import 'change_location.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      initialRoute: '/', // 设置初始路径
      routes: {
        '/': ((context) => Loading()),
        '/home': ((context) => Home()),
        '/location': ((context) => ChangeLocation()),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context)?.settings.arguments;
    // print(data);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              // image: Image(Ic);
              ),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Row(
                children: const <Widget>[
                  Icon(Icons.edit_location),
                  Text(
                    'Edit Location',
                    style: TextStyle(
                      fontSize: 16,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.black),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
