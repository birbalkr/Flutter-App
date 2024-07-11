
import 'package:flutter/material.dart';

class OnBoardingModel{
  final String image;
  final String title;
  final String subtitle;
  final String counterText;
  final Color bgColor;
  final double height;

  OnBoardingModel({
    required this.height,
    required this.image,
    required this.bgColor,
    required this.counterText,
    required this.subtitle,
    required this.title,
});
}