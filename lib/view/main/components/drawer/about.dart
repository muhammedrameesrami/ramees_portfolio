import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../res/constants.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const DrawerImage(),
            const Spacer(),
            Text(
              ProfileConstants.name,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            const Text(
              'Flutter Developer & The Student of\n Web Designer',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5,color: Colors.white),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
