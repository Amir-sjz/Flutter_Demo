import 'package:flutter/material.dart';
import 'loading.dart';
import 'change_location.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      initialRoute: '/home', // 设置初始路径
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            child: Row(
              children: const <Widget>[
                Icon(Icons.edit_location),
                Text('Edit Location'),
              ],
            )),
      ),
    );
  }
}
