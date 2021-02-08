import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sidebar/sidebar_menu.dart';
import 'models/navbar_tab_selected_model.dart';

class FrameworkPage extends StatefulWidget{
  @override
  _FrameworkPageState createState() => _FrameworkPageState();
}

class _FrameworkPageState extends State<FrameworkPage> {
  String selectedDate;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NavbarTabSelectedModel>(
      create: (context) => NavbarTabSelectedModel(),
      child: Consumer<NavbarTabSelectedModel>(
          builder: (context, model, child) =>
              Scaffold(
                resizeToAvoidBottomInset: false,

                drawer: SidebarMenu(),
                  body: model.currentScreen,
                  extendBody: true,
                bottomNavigationBar:
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal:60),
                  decoration: BoxDecoration(
                    color: Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                      selectedFontSize: 10,
                      unselectedFontSize: 10,
                      elevation: 0,
                      selectedItemColor: Theme.of(context).accentColor,
                      onTap: (int _index){
                        model.currentTab = _index;
                      },
                      currentIndex: (model.currentTab), // new
                      items: [
                    BottomNavigationBarItem(
                      icon:
                          ClipOval(
                            child: Material(
                              color: Theme.of(context).splashColor, // button color
                                 child: Padding(
                                   padding: const EdgeInsets.all(4.0),
                                   child: ImageIcon(
                                     AssetImage("assets/images/Icon_home_small.png"),
                                     color: Colors.white,
                                   ),
                                 ),
                              ),
                            ),

                     activeIcon:ClipOval(
                       child: Material(
                         color: Theme.of(context).accentColor, // button color
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: ImageIcon(
                             AssetImage("assets/images/Icon_home_small.png"),
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                     label: 'Home',
                  ),
                    BottomNavigationBarItem(
                      icon:
                      ClipOval(
                        child: Material(
                          color: Theme.of(context).splashColor, // button color
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ImageIcon(
                              AssetImage("assets/images/Icon_stories_small.png"),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      activeIcon:ClipOval(
                        child: Material(
                          color: Theme.of(context).accentColor, // button color
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ImageIcon(
                              AssetImage("assets/images/Icon_stories_small.png"),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      label: 'Stories',
                    ),
                  BottomNavigationBarItem(
                    icon: ClipOval(
                      child: Material(
                        color: Theme.of(context).splashColor, // button color
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ImageIcon(
                            AssetImage("assets/images/Icon_volunteer_small.png"),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    activeIcon:ClipOval(
                      child: Material(
                        color: Theme.of(context).accentColor, // button color
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ImageIcon(
                            AssetImage("assets/images/Icon_volunteer_small.png"),
                              color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  label: 'Volunteering',
                  ),
          ]
      ),
                ),
    ),
      )
    );
  }
}