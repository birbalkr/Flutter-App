import 'package:flutter/cupertino.dart';


class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.title});

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(title,style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,),),
        Text(subtitle,style: TextStyle(fontSize:15,fontWeight: FontWeight.w600,),),
      ],
    );
  }
}
