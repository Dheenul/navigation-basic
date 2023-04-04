import 'package:mobx/mobx.dart';
import 'package:navigation/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'HomeScreenModel.g.dart';
// Create a model class named HomeScreenModel
class HomeScreenModel = _HomeScreenModelBase
    with _$HomeScreenModel, NavigationMixin;

abstract class _HomeScreenModelBase with Store {
  // Create a variable named number and set it's value as 10. 
  int number = 10;
}
