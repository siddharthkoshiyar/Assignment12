import 'package:assigment12/ModelClass/model.dart';
import 'package:flutter/material.dart';

class Tabview2 extends StatefulWidget {
  const Tabview2({Key? key}) : super(key: key);

  @override
  _Tabview2State createState() => _Tabview2State();
}

class _Tabview2State extends State<Tabview2> {
  List<Student> arrData = arrStudents();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: arrData.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(arrData[index].image ?? '')),
                    Text('Name: ${arrData[index].name ?? ""}'),
                    Text('Standard: ${arrData[index].standard.toString()}'),
                    Text('School: ${arrData[index].schoolname.toString()}'),
                  ],
                ),
              );
            }));
  }
}
