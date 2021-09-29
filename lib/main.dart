import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: NewApp()));
}

class NewApp extends StatefulWidget {
  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  int My_level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent[400],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            My_level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/mizan.jpg'),
                radius: 30,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Tanvirul Islam',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Current level',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$My_level',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.amber,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'tancirul.cse.diu@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.amber,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'Mirpur-1, house-3, road-10, block-C',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
