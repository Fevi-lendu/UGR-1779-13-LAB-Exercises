import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order Details',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50], // Very light grey background
      ),
      home: OrderDetailsPage(),
    );
  }
}

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // White app bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Order Details',
          style: TextStyle(
            color: Colors.black, // Black title color
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30, // Smaller circular avatar
                      backgroundColor: Colors.green, // Green circular avatar
                      child: Icon(
                        Icons.check_circle_outline,
                        size: 25,
                        color: Colors.white, // White check icon
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Order completed 04 April 2024',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Spacer(), // Add spacer to push the icon to the right
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order ID:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '#524120',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order date:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Purchased Items',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      title: Text('Blue t-shirt'),
                      subtitle: Text('Size: L, Color: Yellow'),
                      trailing: Text('\$50.00'),
                    ),
                    ListTile(
                      title: Text('Hoodie Rose'),
                      subtitle: Text('Size: L, Color: Yellow'),
                      trailing: Text('\$50.00'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Shipping Information',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      title: Text('Jacob Jones'),
                      subtitle: Text('(105) 555-3652\n61480 Sunbrook Park, PC 5679'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Payment Information',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      title: Text('Cash On Delivery'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}