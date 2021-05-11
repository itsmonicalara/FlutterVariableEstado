import 'dart:math';

import 'package:flutter/material.dart';
//Crea el stateful
class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HelloState();
  }
}
//Crea el estado
class HelloState extends State<HelloStateful>{
  int variable_estado = -1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Hope Star Wars Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado: ",
              style: TextStyle(fontSize: 28, color: Colors.deepPurpleAccent),),
            Text('$variable_estado',
              style: TextStyle(fontSize: 40, color: Colors.deepOrange),)
          ],
        ),
      ),
      floatingActionButton: crea_botones(),
    );
  }
  Widget crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child : Icon(Icons.exposure_zero_rounded), onPressed: funcion_zero),
        FloatingActionButton(child : Icon(Icons.plus_one), onPressed: funcion_aumentar),
        FloatingActionButton(child : Icon(Icons.exposure_minus_1_rounded), onPressed: funcion_disminuir),
        FloatingActionButton(child : Icon(Icons.all_inclusive_rounded), onPressed: funcion_aleatorio),
        FloatingActionButton(child : Icon(Icons.arrow_back_rounded), onPressed: funcion_original),
      ],
    );
  }
  void funcion_zero(){
    setState(() {
      variable_estado = 0;
    });
  }
  void funcion_aumentar(){
    setState(() {
      variable_estado += 1;
    });
  }
  void funcion_disminuir(){
    setState(() {
      variable_estado -= 1;
    });
  }
  void funcion_aleatorio(){
    Random random = new Random();
    int randomNumber = random.nextInt(100);
    setState(() {
      variable_estado = randomNumber;
    });
  }
  void funcion_original(){
    setState(() {
      variable_estado = -1;
    });
  }
}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.amber,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
              "Flutter Rule!",
              style: TextStyle(fontSize: 40.0, color: Colors.white70, fontFamily: 'Arial'),
          ),
        ),
      ),
    );
  }

}

void main() {
  runApp(
    MaterialApp(
      title: "Hope: Star Wars App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HelloStateful(),
      ),
    )
  );
}

