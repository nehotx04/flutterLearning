import "package:first_flutter_app/main.dart";
import "package:flutter/material.dart";

class BWidget extends StatelessWidget {
  const BWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("B page"),
      ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("B page"),
            changeView(context),
          ]),
        )
    );
  }
}


Widget changeView(context){
  return ElevatedButton(
    child:Text("Go To A"),
    onPressed: ()=>{
      Navigator.pop(context)
    }
  );
}