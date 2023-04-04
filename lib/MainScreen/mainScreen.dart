import 'dart:ui';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:navigation/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigation/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:navigation/MainScreen/MainScreenVM.dart';

// Create a screen named MainScreen as statefull widget
class MainScreen extends StatefulWidget {
  // Create a variable named data with the keyword final to store the recived data while navigating.
  final int data;
  // Create a constructor for the class named MainScreen which requires a data.
  const MainScreen({super.key, required this.data});
  // Create state for screen named MainScreen.
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Create an instance for the class named MainScreenVM and pass the value for the required parameter for the constructor named MainScreenVM.
  late final MainScreenVM _mainScreenVM = MainScreenVM(number: widget.data);

  /* Override the method named initState() in which the listen the navigation that is sent throught navigationStream  */
  @override
  void initState() {
    /* Call the parent initState method using super keyword.*/
    super.initState();
    // Using .listen, listen to the event in the stream named navigationStream by accessing the stream using the instance.
    _mainScreenVM.navigationStream.stream.listen((event) {
      // Using if condition check whether the event is NavigatorPop
      if (event is NavigatorPop) {
        /* Using .pop() method, pop the context to the perious page. */
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("This is second page..."),
      ),
      body: SafeArea(
          child: Center(
        child:
        // We consume the observed variable named number using the instance where we have stored the changing data. 
        Observer(
          builder: (context) {
            return Text(
                "The number after multiplying by 2 is ${_mainScreenVM.number.toString()}");
          }
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _mainScreenVM.naviagteToPreviousPage,
        label: Text("Go Back"),
        icon: Icon(Icons.arrow_back_ios),
      ),
    ));
  }
}
