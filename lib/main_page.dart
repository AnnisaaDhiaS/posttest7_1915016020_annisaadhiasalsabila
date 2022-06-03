import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:posttest7_1915016020_annisaadhiasalsabila/ctrl.dart';
import 'package:posttest7_1915016020_annisaadhiasalsabila/detail_page.dart';

class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);
  Widget nama() {
    return Text(
      textAlign: TextAlign.center,
      "© Annisaa' Dhia Salsabila",
      style: TextStyle(
        fontSize: 15,
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 255, 252, 214),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 161, 50, 59),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: NWidth,
                height: NHeight,
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
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      " Menyediakan Kue Lezat dan Berkualitas\ndengan harga Terjangkau ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 252, 214),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      " Pesan Sekarang! ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 252, 214),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25, left: 25),
                      // width: NWidth,
                      height: 50,
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 252, 214),
                        ),
                        onPressed: () => Get.off(_HomePage()),
                        child: Text(
                          textAlign: TextAlign.center,
                          " LANJUTKAN ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 113, 10, 10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    nama(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => __HomePageState();
}

class __HomePageState extends State<_HomePage> {
  final List<BottomNavigationBarItem> _myItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.padding_rounded),
      label: "Pesan",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list_alt_rounded),
      label: "Daftar Pesanan",
    ),
  ];

  final List<Widget> _myViews = [ListCard(), form_pesan(), daftar_pesanan()];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myViews.elementAt(_pageIndex),
      //untuk menampilkan atau memanggil icons dari final tadi
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 113, 10, 10),
        currentIndex: _pageIndex,
        items: _myItems,
        onTap: (int newIndex) {
          setState(() {
            _pageIndex = newIndex;
          });
        },
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    double lebar(double value) {
      if (value >= 1027) {
        return 4;
      } else if (value < 1027 && value >= 800) {
        return 3;
      } else {
        return 2;
      }
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, right: 5, left: 5, bottom: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: GridView.count(
          crossAxisCount: lebar(NWidth).toInt(),
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                image: DecorationImage(
                  image: AssetImage("assets/blackforest.jpg"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                // title:
                onTap: () => Get.to(blackforest()),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                image: DecorationImage(
                  image: AssetImage("assets/redvelvet.jpg"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () => Get.to(blackforest()),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                image: DecorationImage(
                  image: AssetImage("assets/tiramisu.jpg"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () => Get.to(blackforest()),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                image: DecorationImage(
                  image: AssetImage("assets/coklat.jpg"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () => Get.to(blackforest()),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                image: DecorationImage(
                  image: AssetImage("assets/strawberry.jpg"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () => Get.to(blackforest()),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 252, 214),
                image: DecorationImage(
                  image: AssetImage("assets/vanilla.jpg"),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                onTap: () => Get.to(blackforest()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Ukuran { Kecil, Sedang, Besar }

class form_pesan extends StatefulWidget {
  const form_pesan({Key? key}) : super(key: key);

  @override
  State<form_pesan> createState() => _form_pesanState();
}

class _form_pesanState extends State<form_pesan> {
  final ctrlUkuran ukctrl = Get.put(ctrlUkuran());
  final ctrlTeks namactrl = Get.put(ctrlTeks());
  String nama_pembeli = '';
  String? kue;
  final ctrlNama = TextEditingController();
  List listkue = [
    'Blackforest',
    'Redvelvet',
    'Tiramisu',
    'Brownies: Choco',
    'Brownies: Sweet Strawberry',
    'Brownies: Creamy Vanilla'
  ];
  Ukuran size = Ukuran.Kecil;

  @override
  void dispose() {
    ctrlNama.dispose();

    super.dispose();
  }

  String getUkuran(Ukuran value) {
    if (value == Ukuran.Kecil) {
      return "Kecil";
    } else if (value == Ukuran.Sedang) {
      return 'Sedang';
    } else if (value == Ukuran.Sedang) {
      return "Besar";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference data = firestore.collection("pesanan");
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 161, 50, 59),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: NWidth,
                height: NHeight,
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
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 40, left: 40, top: 60),
                      margin: EdgeInsets.all(40),
                      alignment: Alignment.center,
                      width: NWidth - 150,
                      height: NHeight - 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color.fromARGB(255, 255, 252, 214),
                      ),
                      child: ListView(
                        children: [
                          TextField(
                            controller: ctrlNama,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Silahkan isi dengan nama panggilan",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 87, 2, 2),
                              ),
                              labelText: "Nama",
                              labelStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 87, 2, 2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Nama Kue : ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              DropdownButton(
                                hint: Text("Pilih Kue"),
                                value: kue,
                                items: listkue.map((value) {
                                  return DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    kue = value as String?;
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Ukuran: ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 87, 2, 2),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          ListTile(
                            title: Text("Kecil"),
                            leading: Radio(
                              groupValue: size,
                              value: Ukuran.Kecil,
                              onChanged: (Ukuran? value) {
                                setState(() {
                                  size = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text("Sedang"),
                            leading: Radio(
                              groupValue: size,
                              value: Ukuran.Sedang,
                              onChanged: (Ukuran? value) {
                                setState(() {
                                  size = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text("Besar"),
                            leading: Radio(
                              groupValue: size,
                              value: Ukuran.Besar,
                              onChanged: (Ukuran? value) {
                                setState(() {
                                  size = value!;
                                });
                              },
                            ),
                          ),
                          OutlinedButton(
                            // color:Color.fromARGB(255, 87, 2, 2),
                            onPressed: () {
                              data.add(
                                {
                                  'Nama': namactrl.pembeliCtrl.text,
                                  'Ukuran': "${ukctrl.uk.value}",
                                },
                              );
                              Get.snackbar(
                                "Pesanan sudah masuk antrian'-')~",
                                "Silahkan Tunggu",
                                duration: Duration(seconds: 3),
                                backgroundColor: Color.fromARGB(255, 87, 2, 2),
                              );
                            },
                            child: Text(
                              "Pesan",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 113, 10, 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // Text(
                          //   "Nama : $nama_pembeli",
                          //   style: TextStyle(
                          //       color: Color.fromARGB(255, 87, 2, 2),
                          //       fontSize: 15,
                          //       fontWeight: FontWeight.bold),
                          // ),
                          // Text(
                          //   "Nama Kue : $kue",
                          //   style: TextStyle(
                          //       color: Color.fromARGB(255, 87, 2, 2),
                          //       fontSize: 15,
                          //       fontWeight: FontWeight.bold),
                          // ),
                          // Text(
                          //   "Ukuran : ${getUkuran(size)}",
                          //   style: TextStyle(
                          //       color: Color.fromARGB(255, 87, 2, 2),
                          //       fontSize: 15,
                          //       fontWeight: FontWeight.bold),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    nama(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  nama() {
    return Text(
      textAlign: TextAlign.center,
      "© Annisaa' Dhia Salsabila",
      style: TextStyle(
        fontSize: 15,
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 255, 252, 214),
      ),
    );
  }
}

class daftar_pesanan extends StatelessWidget {
  const daftar_pesanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 87, 2, 2),
        ),
        child: Container(
          margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 255, 252, 214),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "DAFTAR PESANAN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: StreamBuilder(
                  // users itu nama tabel collection firebasenya, jadi sesuaiin aja sama punya kamu
                  stream: FirebaseFirestore.instance
                      .collection("pemesanan")
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: (context, i) {
                          QueryDocumentSnapshot<Object?>? hasilData =
                              snapshot.data?.docs[i];
                          return Column(
                            children: [
                              Container(
                                // name sama bahasa dibawah itu, kayak kolom dari tabel databasenya
                                child: Text(
                                  hasilData!['Nama'],
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  hasilData['Ukuran'],
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.amber,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
