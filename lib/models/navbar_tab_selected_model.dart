import 'package:crowdhubtest/pages/home.dart';
import 'package:crowdhubtest/pages/stories.dart';
import 'package:crowdhubtest/pages/volunteering.dart';
import 'package:flutter/material.dart';

class NavbarTabSelectedModel extends ChangeNotifier {

  int _currentTab = 0;

  List <Widget> _pages = [
    Home(),
    Stories(),
    Volunteering(),
  ];


  set currentTab(int tab) { this._currentTab = tab; notifyListeners();}
  get currentTab => this._currentTab;
  get currentScreen => this._pages[this._currentTab];
}