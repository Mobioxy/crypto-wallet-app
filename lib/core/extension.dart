import 'package:flutter/material.dart';

extension GradientWidget on Widget {
  Widget toGradient() {
    var gradient = const LinearGradient(
      colors: [
        Color.fromRGBO(190, 40, 246, 1),
        Color.fromRGBO(105, 20, 245, 1),
        Color.fromRGBO(18, 34, 244, 1)
      ],
    );
    return ShaderMask(
      child: this,
      shaderCallback: (Rect bounds) => gradient.createShader(bounds),
      blendMode: BlendMode.srcATop,
    );
  }
}
