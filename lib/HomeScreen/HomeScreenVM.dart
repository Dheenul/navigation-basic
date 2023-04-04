import 'package:navigation/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:navigation/Helpers/NavigationHelper/Routes.dart';
import 'package:navigation/HomeScreen/HomeScreenModel.dart';
// Create a class named HomeScreenVM by extending the class HomeScreenModel
class HomeScreenVM extends HomeScreenModel {
  // Create a method named naviagteToMainScreen to navigate to next page 
  /*In this method we pass the page we want to navigate to throught navigationStream
  which requires the page details and page required data. */
  naviagteToMainScreen() {
    // Using navigationStream .add method and using NavigatorPush method give the details of page to naviagte and the data you want ot send to the navigating page. 
    navigationStream
        .add(NavigatorPush(pageConfig: Pages.mainScreenConfig, data: number));
  }
}
