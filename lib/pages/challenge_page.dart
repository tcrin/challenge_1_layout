import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //Layout
    final double widthLayout_1 = size.width * (6 / 27);
    final double widthLayout_2 = size.width * (12.5 / 27);
    final double widthLayout_3 = size.width * (8 / 27);

    //Widget mini
    final double widthHeightWidget =
        (size.width * (6 / 27)) / 3; //width and height widget mini

    //Height (blue)
    final double heightBlue = widthHeightWidget * 4;

    //Height (black, yelow, white)
    final double heightLayout_1Row234 = size.height - heightBlue; //4 row
    final double heightCol_1 = heightLayout_1Row234 * (1 / 3);

    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.lightBlueAccent,
                        width: widthLayout_1,
                        height: heightBlue,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                MyWidget(widthHeightWidget, widthHeightWidget,
                                    Colors.grey),
                                MyWidget(widthHeightWidget, widthHeightWidget,
                                    Colors.orange),
                                MyWidget(widthHeightWidget, widthHeightWidget,
                                    Colors.blue),
                                MyWidget(widthHeightWidget, widthHeightWidget,
                                    Colors.pinkAccent),
                              ],
                            ),
                            Row(
                              children: [
                                MyWidget(widthHeightWidget, widthHeightWidget,
                                    Colors.greenAccent),
                                MyWidget(widthHeightWidget, widthHeightWidget,
                                    Colors.yellow),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: widthLayout_1,
                        height: heightCol_1,
                        color: Colors.black,
                      ),
                      Container(
                        width: widthLayout_1,
                        height: heightCol_1,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: widthLayout_1,
                        height: heightCol_1,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    width: widthLayout_2,
                    height: size.height,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
              Container(
                width: widthLayout_3,
                height: size.height,
                color: Colors.pinkAccent,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                //top = (Blue+black)+(1/4)Black
                top: heightBlue + heightCol_1 + (heightCol_1 * (1 / 4)),
                left: widthHeightWidget * 1.75),
            child: Container(
              color: Colors.black.withOpacity(0.4),
              width: heightCol_1 * (3 / 5),
              height: heightCol_1 * (3 / 5),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

Widget MyWidget(double width, double height, Color color) {
  return Container(
    width: width,
    height: height,
    color: color,
  );
}
