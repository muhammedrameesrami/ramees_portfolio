import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(
            'https://www.canva.com/design/DAGB65oH_bg/EAzpYtMfF1WHWOD_C2XoAA/edit'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.blueAccent,
                Colors.blue,
              ]),
        ),
        child: Row(
          children: [
            Text(
              'OPEN CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.black,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: defaultPadding / 3,
            ),
            const Icon(
              FontAwesomeIcons.download,
              color: Colors.black,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
