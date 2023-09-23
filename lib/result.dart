
import 'package:bmi/bmi.dart';
import 'package:flutter/material.dart';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';
class result extends StatelessWidget {
  final  bool male ;
  final int height ;
  final int weight ;
  final int age ;
  const result({super.key, required this.male, required this.height, required this.weight, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xff1D2136),
     appBar: AppBar(title: Text("your result",style:TextStyle(color:Colors.white,fontSize:30)),backgroundColor: Color(0xff1D2136),),
      body: Center(child: Column(children: [
        Text("normal",style: TextStyle(color: Colors.green),),
        MaterialButton(
          height: 50,
          color: Color(0xffE83D66),
          minWidth: double.infinity,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>bmicalcolator()));
          },child:Text("recalcolator"),)
      ],),),
    );
  }
}
