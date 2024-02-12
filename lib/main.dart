import "package:first_flutter_app/pages/B.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Starter(),
    );
  }
}

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
          Text("Homepage"),
          changeView(context),
          ],
        )
      ),
    );
  }
}

Widget changeView(context){
  return ElevatedButton(
    child:Text("Go To B"),
    onPressed: ()=>{
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context)=>BWidget())
      )
    }
  );
}