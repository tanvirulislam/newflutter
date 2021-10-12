import 'package:flutter/material.dart';
import 'package:test/main.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Registration()));
}

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ragistration'),
      ),
      drawer: Drawer(
        child: Row(
          children: [
            
            ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewApp()),
            );
          },
          child: Text('submit'),
        ),
          ],
        ),
      ),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                    onChanged: (val) {}),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    onChanged: (val) {}),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.password),
                      hintText: 'Enter a password',
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    onChanged: (val) {}),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewApp()),
                    );
                  },
                  child: Text('submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
