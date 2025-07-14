import 'package:alert_box_plus/alert_box_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              smartAlertDialog3(
                  context, );
            }, child: Text('DialogAction with One Button')
            ),
            ElevatedButton(onPressed: (){
              smartAlertDialog2(
                  context, button1Text: 'yes',
                  button2Text: 'no');
            }, child: Text('DialogActions with Two Buttons')
            ),
            ElevatedButton(onPressed: (){
              smartAlertDialog(
                  context, textEditingController);
            }, child: Text('DialogActions')
            ),
          ],
        ),
      )
    );
  }
}
