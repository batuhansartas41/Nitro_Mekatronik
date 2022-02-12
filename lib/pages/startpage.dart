import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nitro_mekatronik/helper/app_helper.dart';
import 'package:nitro_mekatronik/pages/transferpage.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height -
                        MediaQuery.of(context).size.height / 1.5,
                    color: const Color(0xFF5d5590),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Good Morning",
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  "David Kowalski",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Badge(
                              child: const Icon(
                                CupertinoIcons.bell,
                                size: 25,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  CupertinoIcons.money_dollar,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "45.500,12",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const Text(
                              "Your main balance",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -25,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 13,
                    width: MediaQuery.of(context).size.width / 1.4,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            offset: const Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TransferPage()),
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.monetization_on_outlined,
                                color: Color(0xFF5d5590),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 30),
                              const Text(
                                "Transfer",
                                style: TextStyle(
                                    color: Color(0xFF5d5590),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.local_atm_outlined,
                              color: Color(0xFF5d5590),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 30),
                            const Text(
                              "Withdraw",
                              style: TextStyle(
                                  color: Color(0xFF5d5590),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: const Charts()),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 25),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Top Cryptocurrency",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "More",
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 25),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.25,
              height: MediaQuery.of(context).size.height / 5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width / 1.5,
                    color: Colors.orange,
                    child: const ListTile(
                      title: Text(
                        "120 bit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Bitcoin balance",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.bitcoin_circle_fill,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 25),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width / 1.5,
                    color: Colors.purple,
                    child: const ListTile(
                      title: Text(
                        "120 bit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Bitcoin balance",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.bitcoin_circle_fill,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 25),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width / 1.5,
                    color: Colors.teal,
                    child: const ListTile(
                      title: Text(
                        "120 bit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Bitcoin balance",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.bitcoin_circle_fill,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
