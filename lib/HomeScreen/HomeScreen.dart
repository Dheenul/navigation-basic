import 'package:flutter/material.dart';
import 'package:navigation/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigation/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:navigation/HomeScreen/HomeScreenVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// Create a screen named HomeScreen as statefull widget
class HomeScreen extends StatefulWidget {
  // Create a constructor for the class named HomeScreen.
  const HomeScreen({super.key});
  // Create state for screen named HomeScreen.
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Create an instance named _homeScreenVM for the class named HomeScreenVM .
  final HomeScreenVM _homeScreenVM = HomeScreenVM();
   /* Override the method named initState() in which the listen the navigation that is sent throught navigationStream  */
  @override
  void initState() {
    /* Call the parent initState method using super keyword.*/
    super.initState();
    // Using .listen, listen to the event in the stream named navigationStream by accessing the stream using the instance.
    _homeScreenVM.navigationStream.stream.listen((event) {
      // Using if condition check whether the event is NavigatorPush
      if (event is NavigatorPush) {
        // Using .push push the context to specified pageConfig with the data the we need to send.
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen..."),
      ),
      body: SafeArea(
          child: Observer(
            builder: (context) {
              return Center(
        child: 
        // Using the instance _homeScreenVM display the variable number.
        Text("This is the first page and the number is ${_homeScreenVM.number.toString()}"),
      );
            }
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Call the method named naviagteToMainScreen using the instance.
          _homeScreenVM.naviagteToMainScreen();
        },
        label: const Text("Next page"),
        icon: const Icon(Icons.navigate_next_outlined),
      ),
    ));
  }
}
