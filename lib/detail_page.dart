import 'package:flutter/material.dart';

class blackforest extends StatefulWidget {
  const blackforest({Key? key}) : super(key: key);

  @override
  State<blackforest> createState() => _blackforestState();
}

class _blackforestState extends State<blackforest> {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: ListView(
          children: [
            Container(
              width: NWidth,
              child: Image.asset(width: NWidth, "assets/blackforest.jpg"),
            ),
            Container(
                padding: EdgeInsets.only(top: 30, right: 10, left: 10),
                width: NWidth - 30,
                height: NHeight,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 252, 214),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Blackforest",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 113, 10, 10),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Jenis kue khas Jerman yang paling dikenal di dunia. Kue ini terbuat dari bolu coklat yang dilapisi krim segar, serutan coklat dan ceri yang direndam dalam Kirschwasser, schnapps ceri jernih khas daerah Schwarzwälder",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 87, 2, 2),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
