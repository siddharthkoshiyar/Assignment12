import 'package:assigment12/ModelClass/model.dart';
import 'package:flutter/material.dart';

class Tabview1 extends StatefulWidget {
  Tabview1({Key? key}) : super(key: key);

  @override
  _Tabview1State createState() => _Tabview1State();
}

class _Tabview1State extends State<Tabview1> {
  List<Student> arrData = arrStudents();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: arrData.length,
            itemBuilder: (contxt, index) {
              return Card(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Image.network(
                        arrData[index].image ?? '',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('Name: ${arrData[index].name ?? ""}'),
                    Text('Standard: ${arrData[index].standard.toString()}'),
                    Text('School: ${arrData[index].schoolname.toString()}'),
                  ],
                ),
              );
            }));
  }
}
