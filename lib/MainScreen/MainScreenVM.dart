import 'package:navigation/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigation/MainScreen/MainScreenModel.dart';

class MainScreenVM extends MainScreenModel {
  // Create a constructor for the class named MainScreenVM, with a named parameter that requires a integer value
  MainScreenVM({required int number}) {
    // Using setNumber number set the value for the variable named number by multiplyng the number passed as a parameter by 2 to it.
    setNumber(number: number * 2);
  }
  /*  Create a void method called naviagteToPreviousPage to navigate to the previous page. */
  naviagteToPreviousPage() {
    // In navigationStream add the NavigatorPop() to navigate to the previous page.
    navigationStream.add(NavigatorPop());
  }
}
