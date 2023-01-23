import 'package:flutter/material.dart';
import 'package:flutter/src/material/slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Transfort(),
    );
  }
}

class Transfort extends StatefulWidget {
  const Transfort({Key? key}) : super(key: key);

  @override
  State<Transfort> createState() => _TransfortState();
}

class _TransfortState extends State<Transfort> {
  double valr =0 ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      child : Scaffold(
        appBar: AppBar( title: Text("Trn"),),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Center(
                child:Transform.rotate( angle: valr , origin: Offset(100 ,100),
                  child: Container(  height: 200,width: 100,     color: Colors.green,         ),) ,
              ) ,
              Slider( value: valr,onChanged: (val){
                       setState((){
                          valr  = val;
                         });
              }, min: 0,max: 200000000000000000 * 3.14,
                  inactiveColor: Colors.pinkAccent,
              ) ,
              Text("${valr}")
            ],
          ),
        ),
      ),);
  }
}





