import 'package:flutter/material.dart';
import './list_item.dart';
import 'package:day7/shades_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  void navigateToShadesPageStatic(
      BuildContext context,
      MaterialAccentColor color
      ) {
    Navigator.pushNamed(context, './shades', arguments: color);
  }

  // void navigateToShadesPage(BuildContext context, MaterialAccentColor color) {
  //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
  //         return ShadesPage(color: color);
  //   }
  //   ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
          'Colors'),
      ),
      body: ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, int index)
          {
            return GestureDetector(
                onTap: () {
                  navigateToShadesPage(context, Colors.accents.elementAt(index));
            },
              child: ListItem(
                color: Colors.accents.elementAt(index),
              ),
            );
            return ListItem(color: Colors.accents.elementAt(index));
          },
      ),
    );
  }
}
