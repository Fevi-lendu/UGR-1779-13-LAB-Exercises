import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Card1(),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.question_answer),
              Text('ijTracker'),
              Icon(Icons.notification_add),
              Icon(Icons.settings)
            ]),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset('assets/download.jpg'),
            title: const Text('Robert Steven'),
            subtitle: const Text('Car Rental'),
            trailing: const Text("Log Out"),
            onTap: () {
              // Add your onTap logic here
            },
          ),
          Container(
            color: Colors.blue,
            child: const Text("online | Battery: 90%"),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3, // Number of columns in the grid
              children: List.generate(15, (index) {
                return Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(10),
                  child: const Center(
                    child: Icon(Icons.location_city),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
