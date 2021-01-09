import 'dart:async';

import 'package:flutter/material.dart';

class Animator extends StatefulWidget {
  final Widget child;
  final Duration time;

  Animator(this.child, this.time);

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<Animator>
    with SingleTickerProviderStateMixin {
  Timer timer;
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(milliseconds: 950), vsync: this);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    timer = Timer(widget.time, animationController.forward);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: widget.child,
      builder: (BuildContext context, Widget child) {
        return Opacity(
          opacity: animation.value,
          child: Transform.translate(
            offset: Offset(0.0, (1 - animation.value) * 50),
            child: child,
          ),
        );
      },
    );
  }
}

Timer timer;
Duration duration = Duration();

wait(int microTime, int milliTime) {
  if (timer == null || !timer.isActive) {
    timer = Timer(Duration(microseconds: microTime), () {
      duration = Duration();
    });
  }
  duration += Duration(milliseconds: milliTime);
  return duration;
}

class WidgetAnimator extends StatelessWidget {
  final Widget child;
  final int microTimeDelay;
  final int milliTimeDelay;

  WidgetAnimator({this.child, this.microTimeDelay, this.milliTimeDelay});

  @override
  Widget build(BuildContext context) {
    return Animator(child, wait(microTimeDelay, milliTimeDelay));
  }
}
