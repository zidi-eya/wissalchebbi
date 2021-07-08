import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'acceuilPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset(
                          'assets/image2.png',
                        ),
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image1.png'),
                                fit: BoxFit.contain)),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/cercle.png'),
                              fit: BoxFit.contain)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        height: 90,
                        width: 170,
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/chatbot.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/signe.png',
                            ),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/image2.png',
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: ExactAssetImage('assets/images/768.png'),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 165,
                            child: Text(
                              'Here will be some textfdskfdsjjjjkjhnyjklkjgklknmfhjkn,skjdfklgjkdljgkdslfjdsfkldsjgjdklsjgkdlfgsjkfjdgkjdfkgjkljgkdsjkhfjkgfjjgkjdksgjhdjgkjdsgkjdskjgdskjjjfklasfkaskfgjfkjgdskjgjasgkasgkasgjasgj',
                              style: TextStyle(color: Colors.yellowAccent),
                              //maxLines: 5,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 65,
                          height: 65,
                          child: Image.asset(
                            'assets/image2.png',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        height: 45,
                        width: 160,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.amber, width: 2))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AcceuilPage()));
                          },
                          child: Center(
                              child: Text(
                            'Get Started',
                            style: TextStyle(color: Colors.yellowAccent),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFBC411), Color(0x7E6209)],
                            //begin: Alignment.bottomRight,
                          ),
                        ),
                        child: CustomPaint(
                          size: Size(
                            MediaQuery.of(context).size.width * 0.60,
                            MediaQuery.of(context).size.width * 0.15,
                          ),
                          painter: RPSCustomPainter(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..shader = ui.Gradient.linear(
        Offset(0, 0),
        Offset(100, 100),
        [Color(0xffFBC411), Color(0xff7E6209)],
      )
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0307073, size.height * 0.7303750);
    path_0.lineTo(size.width * 0.7847419, size.height * 0.6260357);
    path_0.lineTo(size.width * 0.3753113, size.height * 0.5094212);
    path_0.lineTo(size.width * 0.6346174, size.height * 0.4234948);
    path_0.lineTo(size.width * 0.2157699, size.height * 0.3925612);
    path_0.lineTo(size.width * 0.3650756, size.height * 0.0675137);
    path_0.lineTo(size.width * 0.2354226, size.height * 0.2270914);
    path_0.lineTo(size.width * 0.2661299, size.height * 0.0184128);
    path_0.lineTo(size.width * 0.1619980, size.height * 0.1856012);
    path_0.lineTo(size.width * 0.1501245, size.height * 0.0184128);
    path_0.lineTo(size.width * 0.1194172, size.height * 0.1350273);
    path_0.lineTo(size.width * 0.0955338, 0);
    path_0.lineTo(size.width * 0.0921219, size.height * 0.0982017);
    path_0.lineTo(size.width * 0.0675560, size.height * 0.0100657);
    path_0.lineTo(size.width * 0.0732881, size.height * 0.1557110);
    path_0.lineTo(size.width * 0.0341192, size.height * 0.0429632);
    path_0.lineTo(size.width * 0.0307073, size.height * 0.7303750);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
