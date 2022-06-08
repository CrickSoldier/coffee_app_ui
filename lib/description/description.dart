import 'package:coffee_ui/constants.dart';
import 'package:coffee_ui/description/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kdefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductWidget(
                  size: size,
                  image: image,
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                Text(
                  "Description",
                  style: TextStyle(color: Colors.white.withOpacity(.6)),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text:
                          "A cappuccino is a coffee-based drink made primarily from espresso and milk ",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7), fontSize: 15)),
                  TextSpan(
                      text: "...Read More",
                      style: TextStyle(
                          color: secondaryColor.withOpacity(.7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ])),
                SizedBox(
                  height: size.height * .04,
                ),
                Text(
                  "Size",
                  style: TextStyle(color: Colors.white.withOpacity(.6)),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                SizeWidget(size: size),
                SizedBox(
                  height: size.height * .06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Price",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.5),
                                fontSize: 14)),
                        Row(
                          children: const [
                            Text(
                              "₹ ",
                              style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "40.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: size.height * .08,
                      width: size.width * .60,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: size.height * .05,
          width: size.width * .25,
          decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(color: secondaryColor),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "S",
              style: TextStyle(color: secondaryColor),
            ),
          ),
        ),
        Container(
          height: size.height * .05,
          width: size.width * .25,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "M",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Container(
          height: size.height * .05,
          width: size.width * .25,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "L",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
