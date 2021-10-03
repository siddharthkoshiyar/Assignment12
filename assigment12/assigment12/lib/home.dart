import 'package:assigment12/tabview1.dart';
import 'package:assigment12/tabview2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Assignemnt 12"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.list_alt),
                text: 'List One',
              ),
              Tab(
                icon: Icon(Icons.list_alt),
                text: 'List Two',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [Tabview1(), const Tabview2()]),
      ),
    );
  }
}
