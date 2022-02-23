import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert'; // json解析

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    var url =
        Uri.parse('http://worldtimeapi.org/api/timezone/America/Vancouver');
    var response = await http.get(url);

    String username = await Future.delayed(Duration(seconds: 3), () {
      print('Data is got in 3 seconds.');
      return "Li Ming";
    });

    Map data = jsonDecode(response.body);
    print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'];

    DateTime now = DateTime.parse(datetime);
    int hour = int.parse(offset.substring(0, 3));
    now = now.add(Duration(hours: hour));
    print(now);

    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SpinKitDualRing(
          color: Colors.blue,
          size: 50.0,
        ),
        // child: Text('loading Screen'),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }
}
