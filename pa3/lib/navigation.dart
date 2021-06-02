import 'package:flutter/material.dart';
import 'package:pa3/vaccine.dart';
import 'package:pa3/death.dart';

class Navigation extends StatelessWidget {
  final Map<String, String> arguments;
  Navigation(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Menu')),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Death(),
                        ));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.coronavirus_outlined,
                        color: Colors.grey[700],
                      ),
                      SizedBox(width: 10),
                      Text("Cases/Deathes",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800]))
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Vaccine(),
                        ));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_hospital,
                        color: Colors.grey[700],
                      ),
                      SizedBox(width: 10),
                      Text("Vaccine",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800])),
                    ],
                  )),
              SizedBox(
                height: 400,
              ),
              Text("Welcome! ${arguments['id']}",
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
              Text("Previous : ${arguments['previous']}",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
            ],
          ),
        ));
  }
}
