import 'package:erba_coders/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget {
  const TAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image(image: AssetImage(TImages.appLogo)),
          Text("Erba Coders"),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Iconsax.direct_inbox))],
    );
  }
}
