import 'package:flutter/material.dart';

class ChangeLocation extends StatefulWidget {
  const ChangeLocation({Key? key}) : super(key: key);

  @override
  _ChangeLocationState createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      print('Data is got in 3 seconds.');
      return "Li Ming";
    });

    print('username = $username.');

    Future.delayed(Duration(seconds: 2), () {
      print('Data is got in 2 seconds.');
    });

    print('Go through');
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('build Call');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Choose a location'),
      ),
      body: SafeArea(
        // 立体的按钮 textButton是文字按钮 outlinebutton是边框按钮
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('counter is $counter')),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('disposeCall');
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    print('initStateCall');
    super.initState();

    getData();
  }
}
