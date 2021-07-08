import 'package:flutter/material.dart';
import 'discution.dart';
import 'my_flutter_app_icons.dart';
import 'package:http/http.dart' as http;

class AcceuilPage extends StatefulWidget {
  @override
  AcceuilPageState createState() => AcceuilPageState();
}

class AcceuilPageState extends State<AcceuilPage>
    with TickerProviderStateMixin {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/naoii.png'),
                              fit: BoxFit.contain)),
                    ),
                    SizedBox(
                      height: 100,
                      width: 50,
                    ),
                    Icon(
                      MyFlutterApp.settings,
                      color: Colors.yellow[700],
                      size: 80,
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: Image.asset(
                                  'assets/image2.png',
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: 198,
                      width: 250,
                      child: Expanded(
                          child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFBC411), Color(0x7E6209)],
                                //begin: Alignment.bottomRight,
                              ),
                            ),
                            child: CustomPaint(
                              size: Size(198, (198 * 1).toDouble()),
                              painter: RPSCiustomPainter(),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          ListTile(
                            leading: Icon(
                              MyFlutterApp.robot,
                              size: 150,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How can i help ",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " you ?",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        'assets/image2.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 57,
                      width: 202,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                  builder: (context) => Discution()));
                        },
                        child: Center(
                            child: Text(
                          'i want to know',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class RPSCiustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 193, 140, 3)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5214141, size.height * 0.0424747);
    path_0.cubicTo(
        size.width * 0.0545455,
        size.height * 0.0295960,
        size.width * 0.0009596,
        size.height * 0.4294949,
        size.width * 0.0101010,
        size.height * 0.5050505);
    path_0.cubicTo(
        size.width * 0.0233838,
        size.height * 0.9024747,
        size.width * 0.4462626,
        size.height * 0.9793434,
        size.width * 0.5000000,
        size.height * 0.9444444);
    path_0.cubicTo(
        size.width * 0.9936869,
        size.height * 0.8746970,
        size.width * 0.9235859,
        size.height * 0.4010606,
        size.width * 0.8886364,
        size.height * 0.3456061);
    path_0.cubicTo(
        size.width * 0.9601010,
        size.height * 0.6997980,
        size.width * 0.7369697,
        size.height * 0.8639394,
        size.width * 0.5069192,
        size.height * 0.8569697);
    path_0.cubicTo(
        size.width * 0.1906061,
        size.height * 0.8110606,
        size.width * 0.1600000,
        size.height * 0.5455556,
        size.width * 0.1602020,
        size.height * 0.4985354);
    path_0.cubicTo(
        size.width * 0.1638889,
        size.height * 0.4442424,
        size.width * 0.1921212,
        size.height * 0.1688384,
        size.width * 0.5082323,
        size.height * 0.1414141);
    path_0.cubicTo(
        size.width * 0.8456566,
        size.height * 0.1286869,
        size.width * 0.9152525,
        size.height * 0.4684848,
        size.width * 0.9135859,
        size.height * 0.4984848);
    path_0.cubicTo(
        size.width * 0.9067172,
        size.height * 0.2526768,
        size.width * 0.8061616,
        size.height * 0.2144444,
        size.width * 0.7569192,
        size.height * 0.1485859);
    path_0.cubicTo(
        size.width * 0.6877778,
        size.height * 0.1074747,
        size.width * 0.6856566,
        size.height * 0.0763131,
        size.width * 0.5214141,
        size.height * 0.0424747);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_1 = Path();

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
