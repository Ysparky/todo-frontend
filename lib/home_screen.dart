import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const MainScreen({Key key}) : super(key: key);

  String getCurrentDate() {
    DateTime today = new DateTime.now();
    final day = today.day;
    final year = today.year;
    return '$day de agosto, $year';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF77B67),
      appBar: AppBar(
        title: Center(
          child: Text('TODO'),
        ),
        backgroundColor: Colors.lightBlueAccent.withOpacity(0),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.05),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 3.5),
                  )
                ],
              ),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/android-logo.jpg'),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              child: Text(
                'Hola, Jane.',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              child: Text(
                'Tienes 3 tareas pendientes para hoy.',
                style: TextStyle(color: Colors.white54, fontSize: 16.0),
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              child: Text(
                'hoy: ${getCurrentDate()}'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15.0,
                ),
              ),
            ),
            TasksListView(size: size)
          ],
        ),
      ),
    );
  }
}

class TasksListView extends StatelessWidget {
  const TasksListView({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      width: size.width,
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 30),
        scrollDirection: Axis.horizontal,
        children: [
          CardTask(size: size, icon: Icons.person, nameTask: 'Personal'),
          CardTask(size: size, icon: Icons.work, nameTask: 'Trabajo'),
          CardTask(size: size, icon: Icons.home, nameTask: 'Hogar'),
        ],
      ),
    );
  }
}

class CardTask extends StatelessWidget {
  const CardTask({
    Key key,
    @required this.size,
    @required this.icon,
    @required this.nameTask,
  }) : super(key: key);

  final IconData icon;
  final Size size;
  final String nameTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.75,
      margin: EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0, right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TaskAvatar(icon: icon),
          SizedBox(height: size.height * 0.20),
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
              nameTask,
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: ProgressIndicatorRow(),
          )
        ],
      ),
    );
  }
}

class ProgressIndicatorRow extends StatelessWidget {
  const ProgressIndicatorRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            value: 0.83,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            '83%',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }
}

class TaskAvatar extends StatelessWidget {
  const TaskAvatar({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 20.0),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey[300],
        ),
      ),
      child: CircleAvatar(
        child: Icon(icon),
        backgroundColor: Colors.white,
      ),
    );
  }
}

//#1E319D
//https://lh3.googleusercontent.com/proxy/E_S2GGdh7EqcPpERPKTOqTlFoqFbE6O7RtAZXSsFZL36c4qHHG_9V5rxIzIF4TCG6MMLnhZ4BMZMOfi1qRMak3inxA3cSVP9K6pwrpbL9zypa6ZrKH-A_uV0daQ0Fknq59-C6t5g35AzKkd_9g
