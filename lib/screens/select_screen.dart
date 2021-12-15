import 'package:flutter/material.dart';

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  int selected = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset("assets/images/selection_top1.png")),
            Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/selection_bottom1.png")),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/selection_bottom2.png")),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/images/app_icon_red.png",
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "RED BLOOD",
                        style: TextStyle(
                            color: Color.fromRGBO(227, 55, 55, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Expanded(flex: 2, child: Container()),
                  Text(
                    "You are a Blood...",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 0;
                          });
                        },
                        child: Container(
                          height:
                              ((MediaQuery.of(context).size.width - 60) / 2) *
                                  192 /
                                  165,
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          decoration: BoxDecoration(
                            color: selected == 0 ? Colors.red : Colors.white,
                            border: Border.all(
                              color: Color.fromRGBO(214, 218, 221, 1),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: selected == 0
                                ? [
                                    BoxShadow(
                                      color:
                                          Color.fromRGBO(234, 109, 117, 0.32),
                                      blurRadius: 20,
                                      offset: Offset(0, 6),
                                    ),
                                  ]
                                : [],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 2,
                                    left: 2,
                                    right: 2,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                  ),
                                  child:
                                      Image.asset("assets/images/donate1.png"),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Donor",
                                  style: TextStyle(
                                      color: selected != 0
                                          ? Color.fromRGBO(39, 44, 51, 1)
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 1;
                          });
                        },
                        child: Container(
                          height:
                              ((MediaQuery.of(context).size.width - 60) / 2) *
                                  192 /
                                  165,
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          decoration: BoxDecoration(
                            color: selected == 1 ? Colors.red : Colors.white,
                            border: Border.all(
                              color: Color.fromRGBO(214, 218, 221, 1),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 2,
                                    left: 2,
                                    right: 2,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                    boxShadow: selected == 1
                                        ? [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  234, 109, 117, 0.32),
                                              blurRadius: 20,
                                              offset: Offset(0, 6),
                                            ),
                                          ]
                                        : [],
                                  ),
                                  child:
                                      Image.asset("assets/images/recieve1.png"),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "Receiver",
                                  style: TextStyle(
                                      color: selected != 1
                                          ? Color.fromRGBO(39, 44, 51, 1)
                                          : Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: selected == 2
            ? null
            : Container(
                width: 268,
                height: 59,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(234, 109, 117, 0.32),
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 54,
                      height: 20,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0,
                            child: Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              width: 30,
                              height: 2.6,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
