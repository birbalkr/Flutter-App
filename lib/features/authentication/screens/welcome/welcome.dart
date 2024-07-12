import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    var height =mediaquery.size.height;
    var brightness = mediaquery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor:  isDarkMode ? Colors.black54 : Colors.yellow,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image(image: AssetImage(tbottom),height: height * 0.6,),
          Column(children: [Text(name2),
            Text(subname2, textAlign: TextAlign.center,),],),
          Row(
            children: [
              Expanded
                (child: OutlinedButton(onPressed: (){},
                  child: Text(Tlogin))),
              SizedBox(width: 20,),
              Expanded(
                  child: ElevatedButton(
                  onPressed: (){},

                  child: Text(Tsigup)))
            ],
          )
        ],),
      ),
    );
  }
}
