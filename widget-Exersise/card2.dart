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
            leading: Image.assets('assets/img1.jpg'),
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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Card2(),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back),
              Icon(Icons.search),
              Icon(Icons.delivery_dining),
              Icon(Icons.notification_add)
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/img1.jpg'),
            const Card(
                child: Column(
              children: [
                ListTile(
                  title: Text('86'),
                  trailing: Icon(Icons.favorite),
                ),
                Text('BARD|Smart LIght bulb lamp bplham led'),
                Row(
                  children: [Icon(Icons.star), Text('5.0(354) | 540 Scale | ')],
                )
              ],
            )),
            Card(
              child: Column(
                children: [
                  Text('Variant'),
                  Text('size:XS'),
                  Row(
                    children: [
                      Container(
                        color: Colors.blue,
                        margin: const EdgeInsets.all(10),
                        width: 30.0,
                        height: 30.0,
                        child: Text('XS'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 2.0,
                          ),
                        ),
                        child: Text('S'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 2.0,
                          ),
                        ),
                        child: Text('M'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 2.0,
                          ),
                        ),
                        child: Text('L'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 2.0,
                          ),
                        ),
                        child: Text('XL'),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 2.0,
                          ),
                        ),
                        child: Text('XXL'),
                      ),
                    ],
                  ),
                  Text('Color:Red'),
                  Row(children: [
                    Container(
                      color: Colors.blue,
                      margin: const EdgeInsets.all(10),
                      width: 30.0,
                      height: 30.0,
                      child: Text('Red'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                      ),
                      child: Text('Black'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                      ),
                      child: Text('Green'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                      ),
                      child: Text('White'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                          width: 2.0,
                        ),
                      ),
                      child: Text('Blue'),
                    ),
                  ]),
                ],
              ),
            ),
            Card(
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Add to Shopping Cart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}