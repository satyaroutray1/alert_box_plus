<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
alert_box_plus

Inbuilt container is a custom container which can be used in your Flutter app.
Installation

    Add the latest version of package to your pubspec.yaml (and rundart pub get):

dependencies:
alert_box_plus: ^0.0.1

    Import the package and use it in your Flutter App.

import 'package:alert_box_plus/alert_box_plus.dart';

Example

There are a number of properties that you can modify:

    button name
    title
    description
    image


Code
```dart
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
                smartAlertDialog(
                    context, textEditingController);
              }, child: Text('DialogActions')
              ),
              ElevatedButton(onPressed: (){
                smartAlertDialog2(
                    context, button1Text: 'yes',
                    button2Text: 'no');
              }, child: Text('DialogActions with Two Buttons')
              ),

              ElevatedButton(onPressed: (){
                smartAlertDialog3(
                  context, );
              }, child: Text('DialogAction with One Button')
              ),
            ],
          ),
        )
    );
  }
}

```

![Alt text](images/a.jpg?raw=true "Optional Title")
