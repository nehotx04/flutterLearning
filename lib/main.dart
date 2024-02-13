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

bool _agree =true;

class Starter extends StatefulWidget {
  const Starter({super.key});

  @override
  State<Starter> createState() => StarterState();
}


class StarterState extends State<Starter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
          Text("Homepage"),
          alertD(context),
          SizedBox(height:20,),
          Text(
            _agree ? "Yes" : "No",
            ),  
          ],
        )
      ),
    );
  }


Widget alertD(context){
  return ElevatedButton(
    child:Text("Agree?"),
    onPressed:()=>{_showAlert(context)},
  );
}

void _showAlert(BuildContext context){
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title:Text("Hi"),
        content: Text("this is an alert"),
        actions: [
          TextButton(child: Text("Si"),onPressed: () =>{
            Navigator.pop(context),
             setState((){
            _agree = true;
            }),
          },
          ),
          TextButton(child: Text("No"),onPressed: () =>{
            Navigator.pop(context),
            setState((){
            _agree = false;
            }),
          },
          
          ),
        ],
        ); 
      }, 
    );
}

}