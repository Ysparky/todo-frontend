import 'package:flutter/material.dart';
import 'package:todofrontend/home_screen.dart';
// import 'package:todofrontend/home_screen.dart';
// import 'package:todofrontend/login_screen.dart';
// import 'package:todofrontend/register_screen.dart';
// import 'package:todofrontend/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TaskDetailScreen(),
    );
  }
}

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black45),
        backgroundColor: Colors.lightBlueAccent.withOpacity(0),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskAvatar(icon: Icons.work),
              SizedBox(height: size.height * 0.05),
              Container(
                margin: EdgeInsets.only(left: 20.0, bottom: 8.0),
                child: Text(
                  '9 tasks',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, bottom: 30.0),
                child: Text(
                  'Personal',
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: ProgressIndicatorRow(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
