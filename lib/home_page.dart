import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Responsive(
        mobile: Center(
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
        tablet: Center(
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
        desktop: Center(
          child: Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
