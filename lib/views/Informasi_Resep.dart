part of 'pages.dart';

class InformasiResepPage extends StatefulWidget {
  static const routeName = "/InformasiResepPage";
  const InformasiResepPage({super.key});

  @override
  State<InformasiResepPage> createState() => _InformasiResepPageState();
}

class _InformasiResepPageState extends State<InformasiResepPage> {
  Color blue = Color(0xFF1C9FE2);
  Color light_gray = Color(0xFFF6F8FA);
  Color yellow = Color(0xFFF8E545);
  String bullet = "\u2022 ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(children: [
          Flexible(
            flex: 4,
            child: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.dstATop),
                  image: AssetImage('assets/images/detail_bg.png'),
                ))),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      // border: Border.all(color: darkblue, width: 8),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    margin: EdgeInsets.only(top: 48, left: 24),
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      child: Icon(Icons.arrow_back, color: blue),
                    ),
                  ),
                )
              ],
            ),
          ),
          //kosong
          Flexible(
              flex: 6,
              child: Container(
                  // color: Colors.red,
                  ))
        ]),
        Column(children: [
          //kosong
          Flexible(flex: 1, child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26)),
                    color: Colors.white,
                    shape: BoxShape.rectangle),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 8,
                          child: Container(
                            child: Column(children: [
                              Container(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            // color: Colors.red,
                                            child: Container(
                                                child: Text("Grilled Salmon",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                    ))),
                                          )),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                              // color: Colors.yellow,
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      right: 24),
                                                  child: Text("Rp40.000",
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Quicksand',
                                                      ))))),
                                    ]),
                              ),
                              //row 2

                              Container(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      flex: 2,
                                      child: Container(
                                          child: Text(
                                        "Daging dan Sayur",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Quicksand',
                                            color: blue),
                                      ))),
                                  // SizedBox(width: 90),
                                  Flexible(
                                      flex: 2,
                                      child: Container(
                                          padding: EdgeInsets.only(right: 56),
                                          child: Text("/2 Porsi",
                                              // textAlign: TextAlign.right,
                                              style: TextStyle(
                                                // color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Quicksand',
                                              )))),
                                ],
                              )),
                              SizedBox(
                                height: 12,
                              ),
                              Expanded(
                                  child: Container(
                                      child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Column(children: [
                                  Container(
                                      // color: Colors.amber,
                                      width: double.infinity,
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Di samping menjadi salah satu sumber protein yang berkualitas tinggi, ikan salmon juga kaya akan asam lemak omega-3. Asam lemak omega-3 sangat berguna bagi kesehatan jantung, otak, dan organ tubuh lainnya. Selain itu rasanya lezat dan mudah diolah.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Quicksand',
                                        ),

                                        // textAlign: TextAlign.justify,
                                      )),
                                  /////////////////
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text("Bahan",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  fontFamily: 'Quicksand',
                                                ))
                                          ]),
                                          Container(
                                            width: double.infinity,
                                            child: ListView(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              padding: EdgeInsets.only(
                                                  top: 0, left: 24, bottom: 0),
                                              children: [
                                                SizedBox(height: 8),
                                                Text(
                                                    "${bullet} 4 potong (@ 200 g) fillet ikan salmon",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text("${bullet} 1 sdt garam",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 1 sdt merica hitam butiran, gerus kasar",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 2 sdm minyak zaitun",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text("${bullet} 2 sdm mentega",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 4 siung bawang putih, iris tipis",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 4 sdm air jeruk lemon",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            Text("Alat yang dibutuhkan",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  fontFamily: 'Quicksand',
                                                ))
                                          ]),
                                          Container(
                                            width: double.infinity,
                                            child: ListView(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              padding: EdgeInsets.only(
                                                  top: 0, left: 24, bottom: 0),
                                              children: [
                                                SizedBox(height: 8),
                                                Text(
                                                    "${bullet} 4 potong (@ 200 g) fillet ikan salmon",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text("${bullet} 1 sdt garam",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 1 sdt merica hitam butiran, gerus kasar",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 2 sdm minyak zaitun",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text("${bullet} 2 sdm mentega",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 4 siung bawang putih, iris tipis",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                                Text(
                                                    "${bullet} 4 sdm air jeruk lemon",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.bold,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Reviews",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                fontFamily: 'Quicksand',
                                              )),
                                          Container(
                                            child: Row(children: [
                                              Icon(Icons.star, color: yellow),
                                              Text(
                                                "4.8",
                                                style: TextStyle(
                                                    fontFamily: "Quicksand",
                                                    color: Colors.black45),
                                              )
                                            ]),
                                          )
                                        ]),
                                  )
                                ]),
                              ))),
                            ]),
                          )),
                      Flexible(
                        child: ElevatedButton(
                          child: Text(
                            "Pesan",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TambahResepPage()));
                          }),
                        ),
                      )
                    ]),
              ))

          //card
        ]),
      ],
    ));
  }
}
