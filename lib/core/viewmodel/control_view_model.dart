import 'package:e_commerse_app_uising_getx/view/cart_view.dart';
import 'package:e_commerse_app_uising_getx/view/home_view.dart';
import 'package:e_commerse_app_uising_getx/view/profile_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ControlViewModel extends GetxController{

  int _navigatorValue = 0;
  Widget _currentScreen = HomeView();


  get navigatorValue => _navigatorValue;
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue){
    _navigatorValue = selectedValue;
    switch(selectedValue){
      case 0 : {
        _currentScreen = HomeView();
        break;
      }

      case 1 : {
        _currentScreen = CartView();
        break;
      }
      case 2 : {
        _currentScreen = ProfileView();
      }
    }
    update();
  }

}
