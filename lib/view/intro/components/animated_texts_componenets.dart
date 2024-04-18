import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 3 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.white,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2, 0),
                  blurRadius: 15,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/ramees.png',
              height: Responsive.isLargeMobile(context)
                  ? MediaQuery.sizeOf(context).width * 0.3
                  : Responsive.isTablet(context)
                      ? MediaQuery.sizeOf(context).width * 0.1
                      : 170,
              width: Responsive.isLargeMobile(context)
                  ? MediaQuery.sizeOf(context).width * 0.4
                  : Responsive.isTablet(context)
                      ? MediaQuery.sizeOf(context).width * 0.2
                      : 90,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
