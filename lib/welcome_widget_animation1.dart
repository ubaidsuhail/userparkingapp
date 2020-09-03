/*
*  welcome_widget_animation1.dart
*  Parking4U-User
*
*  Created by A.C. Wheeler.
*  Copyright © 2018 Parking 4 U. All rights reserved.
    */

import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:p4u/values.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';

Animation<double> _createScaleProperty(AnimationController animationController) => Interpolation<double>(keyframes: [
  Keyframe<double>(fraction: 0, value: 1),
  Keyframe<double>(fraction: 0.00001, value: 0.1),
  Keyframe<double>(fraction: 0.6, value: 0.475),
  Keyframe<double>(fraction: 1, value: 1),
]).animate(CurvedAnimation(
  curve: Interval(0, 1, curve: Cubic(0, 0, 1, 1)),
  parent: animationController,
));

Animation<double> _createTranslationXProperty(AnimationController animationController) => Interpolation<double>(keyframes: [
  Keyframe<double>(fraction: 0, value: 0),
  Keyframe<double>(fraction: 0.00001, value: -1000),
  Keyframe<double>(fraction: 0.6, value: 10),
  Keyframe<double>(fraction: 1, value: 0),
]).animate(CurvedAnimation(
  curve: Interval(0, 1, curve: Cubic(0, 0, 1, 1)),
  parent: animationController,
));

Animation<double> _createOpacityProperty(AnimationController animationController) => Interpolation<double>(keyframes: [
  Keyframe<double>(fraction: 0, value: 1),
  Keyframe<double>(fraction: 0.00001, value: 0),
  Keyframe<double>(fraction: 0.6, value: 1),
  Keyframe<double>(fraction: 1, value: 1),
]).animate(CurvedAnimation(
  curve: Interval(0, 1, curve: Cubic(0, 0, 1, 1)),
  parent: animationController,
));


class WelcomeWidgetAnimation1 extends StatelessWidget {
  
  WelcomeWidgetAnimation1({
    Key key,
    this.child,
    @required AnimationController animationController
  }) : assert(animationController != null),
       this.scale = _createScaleProperty(animationController),
       this.translationX = _createTranslationXProperty(animationController),
       this.opacity = _createOpacityProperty(animationController),
       super(key: key);
  
  final Animation<double> scale;
  final Animation<double> translationX;
  final Animation<double> opacity;
  final Widget child;
  
  
  @override
  Widget build(BuildContext context) {
  
    return AnimatedBuilder(
      animation: Listenable.merge([
        this.scale,
        this.translationX,
        this.opacity,
      ]),
      child: this.child,
      builder: (context, widget) {
      
        return Opacity(
          opacity: this.opacity.value,
          child: Transform.translate(
            offset: Offset(this.translationX.value, 0),
            child: Transform.scale(
              scale: this.scale.value,
              alignment: Alignment.center,
              child: widget,
            ),
          ),
        );
      },
    );
  }
}