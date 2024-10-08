import 'package:flutter/material.dart';
import 'package:myapp/screens/shoppingScreens.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            TweenAnimationBuilder(
              child: Container(
                width: 300,
                height: 350,
                child: Image(
                  image: AssetImage("images/staart.png"),
                  fit: BoxFit.cover,
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 2000),
              builder: (BuildContext context, double _value, child) {
                return Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.only(top: _value * 50),
                    child: child,
                  ),
                );
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: TweenAnimationBuilder(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Find it and Have fun, Now!",
                            style: TextStyle(
                              fontSize: 33,
                              fontFamily: "Anton-Regular",
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "Just Today ",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "SecularOne-Regular",
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 23),
                          child: TweenAnimationBuilder(
                            child: Text(
                              "Black Friday",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "SecularOne-Regular",
                                color: Colors.lightBlue,
                              ),
                            ),
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: Duration(seconds: 10),
                            curve: Curves.bounceOut,
                            builder:
                                (BuildContext context, double _value, child) {
                              return Opacity(
                                opacity: _value,
                                child: child,
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 2000),
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 2),
                      child: child,
                    ),
                  );
                },
              ),
            ),
            TweenAnimationBuilder(
                child: GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.lightBlue,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5, 10),
                                    blurRadius: 30,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                  BoxShadow(
                                    offset: Offset(-5, -10),
                                    blurRadius: 30,
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 25,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (ShopStore())),
                    );
                  },
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 3000),
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                      opacity: _value,
                      child: Padding(
                        padding: EdgeInsets.only(top: _value * 2),
                        child: child,
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
