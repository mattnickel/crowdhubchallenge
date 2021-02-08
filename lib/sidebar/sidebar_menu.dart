import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
    Drawer(child:
      Container(
          color: Colors.grey,
          padding: const EdgeInsets.only(left: 20, right:10),
        child: ListView(
          children: [
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
          ],
        )
    )
    );
  }

}