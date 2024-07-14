import 'package:firstapp/constants/image_string.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/text_string.dart';

class DashboardAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: const Text(tAppName,),
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey,
          ),
            child: IconButton(
                onPressed: () {},
                icon: const Image(image: AssetImage(tBottom))),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
