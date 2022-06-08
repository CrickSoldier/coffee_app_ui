import 'package:coffee_ui/constants.dart';
import 'package:coffee_ui/description/description.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primaryColor,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: secondaryColor,
          iconSize: 20,
          backgroundColor: primaryColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  // color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                // color: Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                // color: Colors.grey,
              ),
              label: '',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.notifications,
            //     color: Colors.grey,
            //   ),
            //   label: 'Chats',
            // ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * 0.06,
                        width: size.height * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                          height: size.height * 0.06,
                          width: size.height * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              // borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent.withOpacity(0),
                            backgroundImage:
                                const AssetImage("assets/images/profile.png"),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                const Text(
                  "Find the Best \nCoffee For You",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                Container(
                  // padding: EdgeInsets.all(10),
                  height: size.height * .075,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800.withOpacity(.5),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.withOpacity(.5),
                          ),
                          hintText: "Find your coffee..",
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(.5)),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CoffeeCategories(
                        size: size,
                        title: "Cappuccino",
                        active: true,
                      ),
                      CoffeeCategories(
                        size: size,
                        title: "Espresso",
                        active: false,
                      ),
                      CoffeeCategories(
                        size: size,
                        title: "Latte",
                        active: false,
                      ),
                      CoffeeCategories(
                        size: size,
                        title: "Cold",
                        active: false,
                      ),
                      CoffeeCategories(
                        size: size,
                        title: "Flat",
                        active: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Description(
                                  image: "assets/images/1.png"))),
                      child: Container(
                        height: size.height * .30,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade900,
                                  primaryColor.withOpacity(.8)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: size.height * .15,
                                      width: size.width * .4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(
                                        "assets/images/1.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  // Positioned(
                                  //     top: 0,
                                  //     left: 0,
                                  //     right: size.width * .3,
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.all(8.0),
                                  //       child: Container(
                                  //         // width: size.width * .02,
                                  //         decoration: BoxDecoration(
                                  //             color: primaryColor,
                                  //             borderRadius:
                                  //                 BorderRadius.circular(10)),
                                  //         child: Padding(
                                  //           padding: const EdgeInsets.all(4.0),
                                  //           child: Row(
                                  //               mainAxisAlignment:
                                  //                   MainAxisAlignment
                                  //                       .spaceEvenly,
                                  //               children: const [
                                  //                 Icon(
                                  //                   Icons.star,
                                  //                   color: secondaryColor,
                                  //                   size: 18,
                                  //                 ),
                                  //                 Text(
                                  //                   "5.0",
                                  //                   style: TextStyle(
                                  //                       color: secondaryColor),
                                  //                 )
                                  //               ]),
                                  //         ),
                                  //       ),
                                  //     ))
                                ],
                              ),
                              const Text(
                                "Cappuccino",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              const Text(
                                "With Chocolate",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "₹60",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Container(
                                      height: size.height * .05,
                                      width: size.height * .05,
                                      decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        "+",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Description(
                                  image: "assets/images/2.png")))),
                      child: Container(
                        height: size.height * .30,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade900,
                                  primaryColor.withOpacity(.8)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: size.height * .15,
                                      width: size.width * .4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Image.asset(
                                        "assets/images/2.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  // Positioned(
                                  //     top: 0,
                                  //     left: 0,
                                  //     right: 0,
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.all(8.0),
                                  //       child: Container(
                                  //         width: size.width * .02,
                                  //         decoration: BoxDecoration(color: primaryColor),
                                  //         child: Row(children: [
                                  //           Icon(
                                  //             Icons.star,
                                  //             color: secondaryColor,
                                  //           ),
                                  //           Text("5.0")
                                  //         ]),
                                  //       ),
                                  //     ))
                                ],
                              ),
                              Text(
                                "Cappuccino",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "With Oat Milk",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹40",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Container(
                                      height: size.height * .05,
                                      width: size.height * .05,
                                      decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "+",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "Special For You",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Container(
                  height: size.height * .18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.5),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/profile.png"),
                        SizedBox(
                          width: size.width * .1,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "5 Coffee Beans You Must Try",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "₹20",
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
              ],
            ),
          ),
        ));
  }
}

class CoffeeCategories extends StatelessWidget {
  const CoffeeCategories({
    Key? key,
    required this.size,
    required this.active,
    required this.title,
  }) : super(key: key);

  final Size size;
  final bool active;
  final String title;

  @override
  Widget build(BuildContext context) {
    return active
        ? Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: size.height * .05,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: size.height * .01,
                      decoration: BoxDecoration(
                          color: secondaryColor, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
              height: size.height * .04,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
  }
}
