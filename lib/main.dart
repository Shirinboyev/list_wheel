import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: const ListWheelViewExample()));
}

class ListWheelViewExample extends StatefulWidget {
  const ListWheelViewExample({super.key});

  @override
  _ListWievScroolExampleState createState() => _ListWievScroolExampleState();
}

class _ListWievScroolExampleState extends State<ListWheelViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView.useDelegate(
        itemExtent: 75,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
            if (index < 1 || index > 100) {
              return null;
            }
            return ListTile(
              leading: Text(
                '$index',
                style: TextStyle(fontSize: 50),
              ),
              title: Text('Title $index'),
              subtitle: Text('Description here'),
            );
          },
        ),
      ),
    );
  }
}
