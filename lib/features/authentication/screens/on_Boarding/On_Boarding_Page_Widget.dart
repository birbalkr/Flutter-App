import 'package:flutter/material.dart';
import '../../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  OnBoardingPageWidget({
    Key ? key,
    required this.model,
  }):super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: model.height  * 0.5,),
          Column(children: [
            Text(model.title),
            Text(model.subtitle),],),
          Text(model.counterText),
          const SizedBox(height: 80.0,)
        ],
      ),);
  }
}