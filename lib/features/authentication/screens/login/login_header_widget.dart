
import 'package:firstapp/common_widget/form/form_header_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormHeaderWidget(image: tbottom, subtitle: tLoginSubtitle, title: tLoginTitle)
      ],
    );
  }
}