import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int clickTimes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      appBar: AppBar(
        title: Text(
            'CLICK',
            style: TextStyle(
              color: Colors.yellow,
              letterSpacing: 25.0,
              fontSize: 30.0,
              fontFamily: 'HoboStd',
              fontWeight: FontWeight.w800,
            )),
        centerTitle: true,
        backgroundColor: Colors.red,
        // elevation: 1.0, //dropShadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickTimes += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              'Hey Dude',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                letterSpacing: 3.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 10.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images.jpeg'
                ),
                radius: 60.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Click the button below',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
                letterSpacing: 3.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 40.0,
            ),
            Text(
              'You have clicked',
              style: TextStyle(
                color: Colors.orange[300],
                letterSpacing: 3.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$clickTimes ',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3.0,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MATURASC',
                  ),
                ),
                Text(
                  'times',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    letterSpacing: 3.0,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PRISTINA',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}