import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Icard(),
    );
  }
}

class Icard extends StatefulWidget {
  const Icard({super.key});

  @override
  State<Icard> createState() => _IcardState();
}

class _IcardState extends State<Icard> {
  var level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              level += 10;
            },
          );
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/image.jpg"),
                radius: 60,
              ),
            ),
            const Divider(
              height: 80,
              color: Colors.white,
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Nirali",
              style: TextStyle(
                color: Colors.amber[50],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "LEVEL",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "$level",
              style: TextStyle(
                color: Colors.amber[50],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "savaliyanirali41@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    letterSpacing: 1,
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
