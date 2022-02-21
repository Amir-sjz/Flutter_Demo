// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_flutter/xzc_list_demo.dart';

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 使用 MaterialApp，封装了APP常用的东西
    return MaterialApp(
      title: '测试Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      // home 设置当前APP的根视图
      home: const DingCard(),
    );
  }
}

class DingCard extends StatelessWidget {
  const DingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 40,
              ),
            ),
            const Divider(
              height: 60,
              color: Colors.green,
            ),
            const Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            // 间隔
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Li Ming',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Favorite',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            // 间隔
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Food',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                SizedBox(width: 10),
                Text(
                  'liming@email.com',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 18, letterSpacing: 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 使用的是可变Widget, 会自动创建一个State，方便更改内容
class TestDemoPage extends StatefulWidget {
  const TestDemoPage({Key? key}) : super(key: key);

  @override
  _TestDemoPageState createState() => _TestDemoPageState();
}

class _TestDemoPageState extends State<TestDemoPage> {
  @override
  Widget build(BuildContext context) {
    // 使用 Scaffold，里面有appBar 等内容
    return Scaffold(
      // 设置APPBar，已经封装好了，只需要对值进行设置就好了。
      appBar: AppBar(
        title: const Text('测试demo'),
        centerTitle: true,
        // 设置颜色，颜色的数值代表颜色的强度 900最大
        backgroundColor: Colors.red[400],
      ),
      // 核心内容，展示
      body: _buildSuggestions(),
      // 悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: const Text(
          'Next',
          style: TextStyle(
            fontFamily: 'OdibeeSans', // 字体需要下载，目前没有配置，所以没有生效
          ),
        ),
        backgroundColor: Colors.red,
        onPressed: () {
          // ignore: avoid_print
          print('object');
          // Navigator.push(context, Route());
        },
      ),
    );
  }

  // 创建主视图，写成一个单独的Widget
  Widget _buildSuggestions() {
    return _testExpanded();
    // return _testColumn();
    // return const _testRow();
    // return const _testPadding1();
    // return const _testPadding();
    // return const _centerIconButton(); // 居中带icon的按钮
    // return const _centerImg(); // 图片
    // return const _textCenter(); // 文字
  }
}

class _testExpanded extends StatelessWidget {
  const _testExpanded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Expanded 自动计算比例，还有填满剩余空间等功能
        const Expanded(
          child: Text('00000'),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            child: const Text(
              '1111',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Expanded(
          flex: 1, // 比例
          child: Text('3333'),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.amber,
            child: const Text('44444'),
          ),
        ),
      ],
    );
  }
}

class _testColumn extends StatelessWidget {
  const _testColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // 设置同Row 只是方向不同
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[Text('hello'), Text('world')],
        ),
        Container(
          color: Colors.red,
          padding: EdgeInsets.all(10),
          child: Text('One'),
        ),
        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(20),
          child: Text('Two'),
        ),
        Container(
          color: Colors.pink,
          padding: EdgeInsets.all(30),
          child: Text('Three'),
        ),
      ],
    );
  }
}

class _testRow extends StatelessWidget {
  const _testRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // 横向坐标
      mainAxisAlignment: MainAxisAlignment.spaceAround, // 当前row里所有内容平铺
      // mainAxisAlignment:
      //     MainAxisAlignment.spaceBetween, // 当前row里所有内容之间有空隙，边界没有空隙
      // mainAxisAlignment: MainAxisAlignment.end, // 当前row里所有内容居右
      // mainAxisAlignment: MainAxisAlignment.start, // 当前row里所有内容居左
      // mainAxisAlignment: MainAxisAlignment.center, // 当前row里所有内容居中
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // 竖向坐标
      // crossAxisAlignment: CrossAxisAlignment.start, // 顶对齐
      // crossAxisAlignment: CrossAxisAlignment.end, // 底部对齐
      // crossAxisAlignment: CrossAxisAlignment.center, // 居中对齐
      crossAxisAlignment: CrossAxisAlignment.stretch, // 整个竖向全部占满
      // crossAxisAlignment: CrossAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text('Hello, world'),
        Container(
          margin: EdgeInsets.all(5),
          color: Colors.red,
          child: TextButton(
              onPressed: () {
                print('click me');
              },
              child: Text('click me')),
        ),
        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(30),
          child: Text('This is a container'),
        ),
      ],
    );
  }
}

class _testPadding1 extends StatelessWidget {
  const _testPadding1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      margin: const EdgeInsets.all(20),
      color: Colors.grey,
      child: const Text('Hello'),
    );
  }
}

// ignore: unused_element
class _testPadding extends StatelessWidget {
  const _testPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      // padding: EdgeInsets.all(90),
      child: Text('data'),
    );
  }
}

// ignore: unused_element
class _centerIconButton extends StatelessWidget {
  const _centerIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: (() {
          // ignore: avoid_print
          print('iconButton');
        }),
        icon: const Icon(Icons.access_alarm),
        color: Colors.cyanAccent,
      ),
    );
  }
}

// ignore: unused_element
class _textCenter extends StatelessWidget {
  const _textCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello, world!\nhahaha~',
        style: TextStyle(
          color: Colors.lightBlueAccent,
          fontSize: 20.0,
          fontWeight: FontWeight.bold, // 字体宽度
          letterSpacing: 2, // 字母间距离
          fontFamily: 'OdibeeSans',
        ),
      ),
    );
  }
}

// ignore: unused_element
class _centerImg extends StatelessWidget {
  const _centerImg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      // child: Image.network(
      //     'https://cdn.pixabay.com/photo/2020/02/15/13/48/nature-4851004_1280.jpg'),
      child: Image(
        // image: AssetImage('assetName'),
        image: NetworkImage(
            'https://cdn.pixabay.com/photo/2020/02/15/13/48/nature-4851004_1280.jpg'),
      ),
    );
  }
}
