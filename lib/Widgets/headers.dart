import 'package:flutter/material.dart';

class Contenedor1 extends StatelessWidget {
  const Contenedor1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WHeaderPainter0(),
      ),
    );
  }
}

//Triangulo
class Contenedor2 extends StatelessWidget {
  const Contenedor2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WHeaderPainter1(),
      ),
    );
  }

}

//Doble triangulo
class Contenedor3 extends StatelessWidget {
  const Contenedor3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WHeaderPainter2(),
      ),
    );
  }

}

//Diagonales
class Contenedor4 extends StatelessWidget {
  const Contenedor4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WHeaderPainter3(),
      ),
    );
  }

}


//Lienzos
class _WHeaderPainter0 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    const textStyle = TextStyle(
      color: Colors.blue,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "Hola canvas",
      style: textStyle,
    );

    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();
    path.moveTo(0, size.height * .5);
    path.lineTo(size.width, size.height * .3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height) * .1 ;

    final of = Offset(x, y);


    canvas.drawPath(path, paint);
    texPainter.paint(canvas, of);
    // path.lineTo(x, y)
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
    // return true;
  }
}
//Triangulo
class _WHeaderPainter1 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    const textStyle = TextStyle(
      color: Colors.blue,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "Triangulo",
      style: textStyle,
    );

    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width*.5, size.height * .5);
    path.lineTo(size.width, size.height);

    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height) ;

    final of = Offset(x, y);


    canvas.drawPath(path, paint);
    texPainter.paint(canvas, of);
    // path.lineTo(x, y)
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
    // return true;
  }

}

//Doble triangulo
class _WHeaderPainter2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    const textStyle = TextStyle(
      color: Colors.blue,
      fontSize: 20,
    );

    const textSpan = TextSpan(
      text: "T1",
      style: textStyle,
    );

    const textSpan2 = TextSpan(
      text: "T2",
      style: textStyle,
    );

    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    final texPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );


    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    texPainter2.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final paint = Paint();
    paint.color = Colors.greenAccent;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();
    path.moveTo(0, 0 );
    path.lineTo(size.width*.25, size.height * .25);
    path.lineTo(size.width*.5, 0);
    path.lineTo(size.width*.75, size.height * .25);
    path.lineTo(size.width, 0);

    final x = (size.width - texPainter.width) * .21;
    final y = (size.height - texPainter.height) * .08 ;

    final x2 = (size.width - texPainter2.width) * .79;
    final y2 = (size.height - texPainter2.height) * .1 ;


    final of = Offset(x, y);
    final of2 = Offset(x2, y2);


    canvas.drawPath(path, paint);
    texPainter.paint(canvas, of);
    texPainter2.paint(canvas, of2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
    // return true;
  }

}

//Diagonales
class _WHeaderPainter3 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 50,
    );

    const textSpan = TextSpan(
      text: "Diagonales",
      style: textStyle,
    );

    final texPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    texPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final paint = Paint();
    paint.color = Colors.greenAccent;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 10;

    final path = Path();
    path.moveTo(0, 0 );
    path.lineTo(size.width, size.height);
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);

    final x = (size.width - texPainter.width) * .5;
    final y = (size.height - texPainter.height)  * .1;

    final of = Offset(x, y);


    canvas.drawPath(path, paint);
    texPainter.paint(canvas, of);
    // path.lineTo(x, y)
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
    // return true;
  }

}
