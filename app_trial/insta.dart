import 'package:flutter/material.dart';

// Deleted the image links to prevent copyright

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var widgets = [
      Container(
        child: Column(children: [
          Card(
            child: Image.network(
              '', // add image link
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              IconButton(icon: Icon(Icons.heart_broken), onPressed: () {}),
              IconButton(icon: Icon(Icons.comment), onPressed: () {}),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          )
        ]),
      ),
      Container(
        child: Column(children: [
          Card(
            child: Image.network(
              '', // add image link
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              IconButton(icon: Icon(Icons.heart_broken), onPressed: () {}),
              IconButton(icon: Icon(Icons.comment), onPressed: () {}),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          )
        ]),
      ),
      Container(
        child: Column(children: [
          Card(
            child: Image.network(
              '', // add image link
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              IconButton(icon: Icon(Icons.heart_broken), onPressed: () {}),
              IconButton(icon: Icon(Icons.comment), onPressed: () {}),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          )
        ]),
      ),
    ];

    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Instagram"),
            actions: [
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
              IconButton(icon: Icon(Icons.anchor), onPressed: () {}),
              IconButton(icon: Icon(Icons.add_chart), onPressed: () {}),
            ],
            bottom: TabBar(
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  icon: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(""), // add image
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.accessibility_new_rounded),
                ),
                Tab(
                  icon: Icon(Icons.add_moderator_sharp),
                )
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return widgets[index];
            },
          ),
        ),
      ),
    );
  }
}