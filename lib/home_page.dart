import 'package:flutter/material.dart';
import './list_item.dart';
import 'package:day7/shades_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  void navigateToShadesPageStatic(
      BuildContext context,
      MaterialAccentColor color
      ) {
    Navigator.pushNamed(context, '/shades', arguments: color);
  }

  //Navigation to the Color Slider
  void navigateToColorSlider(
      BuildContext context,
      MaterialAccentColor color
      ) {
    Navigator.pushNamed(context, '/ColorSlider', arguments: color);
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
      body: Center(
        child: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index)
            {
              return GestureDetector(
                  onTap: () {
                    navigateToShadesPageStatic(context, Colors.accents.elementAt(index));
              },
                child: ListItem(
                  color: Colors.accents.elementAt(index),
                ),
              );
            },
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateToColorSlider(context, Colors.amberAccent);

          },backgroundColor: Colors.redAccent,
          child: const Icon(Icons.color_lens),
        )
    );
  }
}
