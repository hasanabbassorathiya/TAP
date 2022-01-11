import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  final Map<String, double> center;
  final double radius;
  final Color colorss;
  final String name;
  final String url;

  Circle({this.center, this.radius, this.colorss, this.name, this.url});
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      painter: DrawCircle(
          center: widget.center,
          radius: widget.radius,
          name: widget.name,
          colorss: widget.colorss),
    );
  }
}

class DrawCircle extends CustomPainter {
  Map<String, double> center;
  double radius;
  Color colorss;
  String name;
  DrawCircle({this.center, this.radius, this.colorss, this.name});
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = new Paint()
      ..color = colorss
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 30;
    canvas.drawCircle(Offset(center["x"], center["y"]), radius, brush);
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    final textSpan = TextSpan(
      text: '$name',
      style: textStyle,
    );
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: 3,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    final xCenter = ((center["x"]) - textPainter.width);
    final yCenter = (center["y"] - textPainter.height);
    final offset = Offset(xCenter, yCenter);
    // final offset = Offset(center["x"], center["y"]) / 2;
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
