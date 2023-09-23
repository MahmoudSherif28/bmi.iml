import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "result.dart";
class bmicalcolator extends StatefulWidget {
  const bmicalcolator({super.key});

  @override
  State<bmicalcolator> createState() => _bmicalcolatorState();
}

class _bmicalcolatorState extends State<bmicalcolator> {
  bool male = true  ;
  int height = 100;
  int weight =50;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2136),
      appBar: AppBar(title:Text("BMI CALCOLATOR"),centerTitle: true,
        backgroundColor:Color(0xff1D2136),
    ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column (children: [
          Expanded(child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(children: [
            Expanded(child:InkWell(
              onTap: (){
              male = true;
              setState(() {
              });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: male ?Colors.blue : Colors.grey.withOpacity(1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                children:
              [Icon(Icons.male,size:100,color:Colors.white,),
                Text("MALE",style:TextStyle(color:Colors.white,fontSize: 25),)
              ],
              ),
              ),
            ),
            ),
           SizedBox(width: 10,),
            Expanded(child:InkWell(
              onTap: (){
                male=false;
                setState(() {});
              },
              child: Container(      decoration: BoxDecoration(
                  color: male? Colors.grey : Colors.blue.withOpacity(1),
                  borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment:MainAxisAlignment.center,
                children:
                [Icon(Icons.female,size:100,color:Colors.white,),
                  Text("FEMALE",style:TextStyle(color:Colors.white,fontSize: 25),)
                ],
              ),
              ),
            ) ),
          ],),)),
          Expanded(child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:
          [
            Text("HEIGHT",style: TextStyle(color:Colors.white,fontSize:25 ),),
            Text(height.toString(),style: TextStyle(color:Colors.white,fontSize:25 ),),
            Slider(min: 0, max: 250, value: height.toDouble(), onChanged:(value){setState(() {
              height=value.round();
            });} )
          ],),)),
          Expanded(child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(children: [
            Expanded(child:Container(
              margin:EdgeInsets.symmetric(vertical: 10) ,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(1),borderRadius:BorderRadius.circular(10)),
              child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("weight",style:TextStyle(color:Colors.white,fontSize: 20),),
                  Text(weight.toString(),style:TextStyle(color:Colors.white,fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                        child: IconButton(onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },icon: Icon(Icons.remove))),
                    SizedBox(width: 10,),
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(onPressed: (){
                          setState(() {
                            weight++;
                          });
                        },icon: Icon(Icons.add))),
                  ],),
                ],
              ),),
            ) ),
              SizedBox(width: 10),
              Expanded(child:Container(
                margin:EdgeInsets.symmetric(vertical: 10) ,
              decoration: BoxDecoration(color: Colors.grey,borderRadius:BorderRadius.circular(10)),
                child:Center(
               child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("age",style:TextStyle(color:Colors.white,fontSize: 20)),
                Text(age.toString(),style:TextStyle(color:Colors.white,fontSize: 30),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(onPressed: (){
                        setState(() {
                          age--;
                        });
                      },icon: Icon(Icons.remove))),
                  SizedBox(width: 10,),
                  CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(onPressed: (){
                        setState(() {
                        age++;
                        });

                      },icon: Icon(Icons.add))),
                ],),
              ],
            ),),) ),
          ],),)),
         MaterialButton(
           height: 50,
           color: Color(0xffE83D66),
           minWidth: double.infinity,
           onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>result(age:age,height: height ,male: male,weight: weight,)));
           },child:Text("calcolator"),)

        ],),
      ),
    );
  }
}
