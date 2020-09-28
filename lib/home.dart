import 'package:flutter/material.dart';
import 'dart:math' as Math;

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = 200.0;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("hi")),
          body: Center(
              child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 4),
            builder: (context, value, child) {
              print(value);
              int percentage = (value * 100).ceil();
              return Container(
                  width: size,
                  height: size,
                  child: Stack(
                    children: [
                      ShaderMask(
                          shaderCallback: (rect) {
                            return SweepGradient(
                                    startAngle: 0.0,
                                    endAngle: Math.pi * 2,
                                    stops: [value, value],
                                    center: Alignment.center,
                                    colors: [Colors.blue, Colors.transparent])
                                .createShader(rect);
                          },
                          child: Container(
                            width: size,
                            height: size,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: Image.asset(
                                            "../assets/images/radial_scale.png")
                                        .image)),
                          )),
                      Center(
                        child: Container(
                            width: size - 40,
                            height: size - 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                                child: Text("$percentage",
                                    style: TextStyle(fontSize: 40)))),
                      )
                    ],
                  ));
            },
          ))),
    );
  }
}
