import 'package:flutter/material.dart';

import '../constants.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * .60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: secondaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            right: 265,
            // bottom: 0,
            child: GestureDetector(
              onTap: (() => Navigator.pop(context)),
              child: Container(
                height: size.height * .05,
                width: size.height * .05,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.grey,
                  size: 16,
                ),
              ),
            )),
        Positioned(
            top: 20,
            right: 20,
            left: 265,
            // bottom: 0,
            child: Container(
              height: size.height * .05,
              width: size.height * .05,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 16,
              ),
            )),
        Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            // bottom: 0,
            child: Container(
                height: size.height * .2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryColor.withOpacity(.5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 50, color: primaryColor.withOpacity(.5))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Cappuccino",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "With Oat Milk",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.5),
                                fontSize: 12),
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.star,
                                color: secondaryColor,
                                size: 16,
                              ),
                              const Text(
                                "  4.5",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                " (6,896)",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.5),
                                    fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: size.width * .35,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: size.height * .06,
                                  width: size.height * .07,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.coffee,
                                        color: secondaryColor,
                                        size: 18,
                                      ),
                                      Text(
                                        "Coffee",
                                        style: TextStyle(
                                            color: Colors.white.withOpacity(.5),
                                            fontSize: 8),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * .02,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  height: size.height * .06,
                                  width: size.height * .07,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      const Icon(
                                        Icons.water_drop_rounded,
                                        color: secondaryColor,
                                        size: 18,
                                      ),
                                      Text(
                                        "Milk",
                                        style: TextStyle(
                                            color: Colors.white.withOpacity(.5),
                                            fontSize: 8),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: size.height * .05,
                              width: size.width * .3,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Medium Roasted",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.5),
                                      fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))),
      ],
    );
  }
}
