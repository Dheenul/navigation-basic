import 'package:mobx/mobx.dart';
import 'package:navigation/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'MainScreenModel.g.dart';
// Create a model class named MainScreenModel
class MainScreenModel = _MainScreenModelBase
    with _$MainScreenModel, NavigationMixin;

abstract class _MainScreenModelBase with Store {
  
  // Create a observable variable named number and initalize it as 0.
  @observable
  int number = 0;

  // Create a method called setNumber to assign value to the variable named number.
  @action
  void setNumber({required int number}) => this.number = number;
}
