import 'dart:math' as math show sin, pi;

import 'package:flutter/material.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomePage(key: UniqueKey()),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({required Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_progress_button Example'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('type=Raised',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('type=Falt',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('type=Outline',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Text('List normal button:'),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget: const Text('btn 1'),
                width: 114,
                onPressed: () {},
                key: UniqueKey(), progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
              ),
              ProgressButton(
                defaultWidget: const Text('btn 2'),
                width: 114,
                type: ProgressButtonType.Flat,
                onPressed: () {},
                key: UniqueKey(), progressWidget: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
              ),
              ProgressButton(
                defaultWidget: const Text('btn 3'),
                width: 114,
                type: ProgressButtonType.Outline,
                onPressed: () {},
                key: UniqueKey(), progressWidget: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
              ),
            ],
          ),
          Text('animate=true (border adjustment):'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                    const Text('btn 4', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                  // After [onPressed], it will trigger animation running backwards, from end to beginning
                  return () {
                    // Optional returns is returning a VoidCallback that will be called
                    // after the animation is stopped at the beginning.
                    // A best practice would be to do time-consuming task in [onPressed],
                    // and do page navigation in the returned VoidCallback.
                    // So that user won't missed out the reverse animation.
                  };
                },
                key: UniqueKey(),
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 5', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                type: ProgressButtonType.Flat,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 6', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                type: ProgressButtonType.Outline,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                    const Text('btn 7', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                height: 48,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(),
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 8', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                type: ProgressButtonType.Flat,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 9', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                type: ProgressButtonType.Outline,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
            ],
          ),
          Text('animate=false:'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                    const Text('btn 10', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                height: 48,
                animate: false,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(),
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 11', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                animate: false,
                type: ProgressButtonType.Flat,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 12', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                animate: false,
                type: ProgressButtonType.Outline,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
            ],
          ),
          Text('animate=false, borderRadius=height/2:'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                    const Text('btn 13', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(),
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 14', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.Flat,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
              ProgressButton(
                defaultWidget:
                    const Text('btn 15', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.Outline,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.blue,
              ),
            ],
          ),
          Text('Customization:'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget: const Icon(Icons.clear, color: Colors.red),
                progressWidget: ThreeSizeDot(key: UniqueKey(), color_1: Colors.red, color_2: Colors.red, color_3: Colors.red,),
                color: Colors.black54,
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(),
              ),
              ProgressButton(
                defaultWidget: const Icon(Icons.clear, color: Colors.red),
                progressWidget: ThreeSizeDot(
                  color_1: Colors.black54,
                  color_2: Colors.black54,
                  color_3: Colors.black54, key: UniqueKey(),
                ),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.Flat,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.black54,
              ),
              ProgressButton(
                defaultWidget: const Icon(Icons.clear, color: Colors.red),
                progressWidget: ThreeSizeDot(
                  color_1: Colors.black54,
                  color_2: Colors.black54,
                  color_3: Colors.black54, key: UniqueKey(),
                ),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.Outline,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
                key: UniqueKey(), color: Colors.black54,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// following code is a customized widget -- ThreeSizeDot
/// -- for a demonstration of how it looks in [ProgressButton]

class ThreeSizeDot extends StatefulWidget {
  ThreeSizeDot(
      {required Key key,
      this.shape = BoxShape.circle,
      this.duration = const Duration(milliseconds: 1000),
      this.size = 8.0,
      required this.color_1,
      required this.color_2,
      required this.color_3,
      this.padding = const EdgeInsets.all(2)})
      : super(key: key);

  final BoxShape shape;
  final Duration duration;
  final double size;
  final Color color_1;
  final Color color_2;
  final Color color_3;
  final EdgeInsetsGeometry padding;

  @override
  _ThreeSizeDotState createState() => _ThreeSizeDotState();
}

class _ThreeSizeDotState extends State<ThreeSizeDot>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation_1;
  late Animation<double> animation_2;
  late Animation<double> animation_3;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: widget.duration);
    animation_1 = DelayTween(begin: 0.0, end: 1.0, delay: 0.0)
        .animate(animationController);
    animation_2 = DelayTween(begin: 0.0, end: 1.0, delay: 0.2)
        .animate(animationController);
    animation_3 = DelayTween(begin: 0.0, end: 1.0, delay: 0.4)
        .animate(animationController);
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ScaleTransition(
            scale: animation_1,
            child: Padding(
              padding: widget.padding,
              child: Dot(
                shape: widget.shape,
                size: widget.size,
                color:
                    widget.color_1,
                key: UniqueKey(),
              ),
            ),
          ),
          ScaleTransition(
            scale: animation_2,
            child: Padding(
              padding: widget.padding,
              child: Dot(
                shape: widget.shape,
                size: widget.size,
                color:
                    widget.color_2,
                key: UniqueKey(),
              ),
            ),
          ),
          ScaleTransition(
            scale: animation_3,
            child: Padding(
              padding: widget.padding,
              child: Dot(
                shape: widget.shape,
                size: widget.size,
                color:
                    widget.color_3,
                key: UniqueKey(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final BoxShape shape;
  final double size;
  final Color color;

  Dot({
    required Key key,
    required this.shape,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: shape),
      ),
    );
  }
}

class DelayTween extends Tween<double> {
  DelayTween({
    required double begin,
    required double end,
    required this.delay,
  }) : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) =>
      super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
