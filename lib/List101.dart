import 'package:flutter/material.dart';
import 'package:flutter_project103/form.dart';
import 'package:flutter_project103/main.dart';

class List102 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Basic List View'),
      // ),
      body: GetListView(),
    );
  }
}

class GetListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Profile1"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Scaffold(
                      appBar: AppBar(
                        title: Text("First Profile"),
                      ),
                      body: FirstScreen())),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscap"),
          subtitle: Text('Beatiful View !'),
          trailing: Icon(Icons.wb_sunny),
        ),
      ],
    );
  }
}

// Widget getListView(BuildContext context) {
//   var listView = 0;
//   return listView;
// }
