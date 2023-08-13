import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';
import 'main.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; 
    });
  }

  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create:(context) => ModelProvider() ,
      child:Scaffold(
      appBar: AppBar(
      title: Text("hello"),
      ),
      body: Consumer<ModelProvider>(
        builder:(context,_ModelProvider,child)
        {
return Column(
       children: [
        Center(
        child: 
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${_ModelProvider.counter}',
            ),
          ],
        )
        ),
         MaterialButton(
        onPressed: Provider.of<ModelProvider>(context, listen: false).increment,
        child: const Icon(Icons.add),
      ),
       ], 
      ); 
        })
      
      
      
     // This trailing comma makes auto-formatting nicer for build methods.
    ), 
    );
  }
}
 class ModelProvider extends ChangeNotifier
 {
int counter = 0 ;
get show => counter;
increment (){
  print(counter);
  counter++;
  notifyListeners();
}
 }
