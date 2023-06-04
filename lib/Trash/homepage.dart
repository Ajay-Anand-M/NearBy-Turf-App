

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
   const Homepage({Key? key}) : super(key: key);



  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<String> turfs = [
    "Asma Turf Ground",
  "Greens Kickoff - Football Turf",
  "Seven’s Football Turf-Moulana college of pharmacy",
  "Goal Town Turf",
  "Sporthood Greens Kickoff"
  ];

  List<String> address = [
    "Al Shifa Hospital Rd, Valiyangadi, Perintalmanna, Kerala 679322",
    "Pattambi Rd, near Post Office, Shanti Nagar, Perintalmanna, Kerala 679322",
    "X6J6+PHP, Angadipuram, Kerala 679322",
    "Goal Town Turf, Valamboor Poopalam Rd, Perintalmanna, Kerala 679322",
    "X6FG+FQ3, Shanti Nagar, Perintalmanna, Kerala 679322",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: ListView.builder(
          itemCount: turfs.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  child: Text(turfs[index][0]),
                ),
                title: Text(turfs[index]),
                subtitle: Text(address[index]),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {  },
                ),
              );
            }
        ),
      ),
    );
  }
}
