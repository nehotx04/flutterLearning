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
      body: appBody(),
    );
  }
}

Widget appBody() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1536195892759-c8a3c8e1945e?q=80&w=1227&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          name(),
          userField(),
          passwordField(),
          SizedBox(height: 10,),
          submitButton(),

        ],
      )
    ),
  );
}

Widget name() {
  return Text(
    "Sign in",
    style: TextStyle(
        color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
  );
}

Widget userField(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical:5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Username",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget passwordField(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled:true
      ),
    ),
  );
}


Widget submitButton(){
  return 	ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onSurface: Colors.white,
      padding: EdgeInsets.symmetric(horizontal:100,vertical: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
    ),


    onPressed: (){return print("clicked");},
    child: Text("Sign in",style:TextStyle(
        fontSize:25,
        color: Colors.white,
      )
    ),
  );
}