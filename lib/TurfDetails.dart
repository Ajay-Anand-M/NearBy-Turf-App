import 'package:flutter/material.dart';
import 'package:nearbyturfs/TurfDataModel.dart';

class TurfDetails extends StatelessWidget {
  final TurfDataModel turfDataModel;


  const TurfDetails({Key? key, required this.turfDataModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(turfDataModel.name),
      ),
      body: Column(

        children: [
        SizedBox(height:5),
          Image.network(turfDataModel.imgurl),
          Center(
            child: Text(turfDataModel.desc,style: const TextStyle(
              fontSize: 20,
            )),
          ),

          const Text("Location :",style:  TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,

          ),),
          Icon(Icons.location_pin,color: Colors.red),

          Center(child: Text(turfDataModel.address)),
        ],
      ),
    );
  }
}
