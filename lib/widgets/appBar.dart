import 'package:flutter/material.dart';





class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text('My App'),
          centerTitle: false,
          // leading: const Icon(Icons.menu),
          actions: [

            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            // PopupMenuButton(itemBuilder: itemBuilder)
            PopupMenuButton(onSelected: (String value) =>
            {
              print(value)
            },
                itemBuilder: (context) =>[
                  PopupMenuItem(child: Text('Item 1'), value: 'Item 1'),
                  const PopupMenuItem(value: 'Profile', child: Text('Profile')),
                  const PopupMenuItem(value: 'Logout', child: Text('Logout')),
                ])


          ],
        ),
      ),
    );
  }
}
