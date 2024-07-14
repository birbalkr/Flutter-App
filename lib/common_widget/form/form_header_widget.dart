import 'package:flutter/cupertino.dart';



class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.title,
      this.crossAxisAlignment = CrossAxisAlignment.start,
        this.imageHeight=0.2,
        this.heightBetween,
        this.textAlign,
      });

  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double ? heightBetween;
  final double imageHeight;
  final TextAlign ? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
        ),
        SizedBox(height: heightBetween,),
        Text(title,style: const TextStyle(fontSize:30,fontWeight: FontWeight.bold,),),
        Text(subtitle,textAlign: textAlign ,style: const TextStyle(fontSize:15,fontWeight: FontWeight.w600,),),
      ],
    );
  }
}
