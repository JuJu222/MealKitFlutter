part of 'pages.dart';

class StepMasak extends StatefulWidget {
  static const routeName = "/StepMasak";

  Resep? resep;
  StepMasak({super.key, required this.resep});

  @override
  State<StepMasak> createState() => _StepMasakState();
}

class _StepMasakState extends State<StepMasak> {
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
                  image: AssetImage('${widget.resep!.menuImage}'),
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
                                          flex: 2,
                                          child: Container(
                                            child: Container(
                                                child: Text(
                                                    "${widget.resep!.menuName}",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Quicksand',
                                                    ))),
                                          )),
                                      Flexible(
                                          flex: 3,
                                          child: Container(
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                      right: 24),
                                                  child: Text(
                                                      "${widget.resep!.menuPortion}",
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
                                        "${widget.resep!.menuPreference}",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Quicksand',
                                            color: blue),
                                      ))),
                                  // SizedBox(width: 90),
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
                                        "${widget.resep!.menuDescription}",
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
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Prosedur",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                      fontFamily: 'Quicksand',
                                                    )),
                                              ]),
                                          Container(
                                            width: double.infinity,
                                            child: ListView(
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              padding: EdgeInsets.only(
                                                  top: 0, left: 18, bottom: 0),
                                              children: [
                                                ProsedurTile(context),
                                                ProsedurTile(context)
                                              ],
                                            ),
                                          )
                                        ],
                                      ))
                                ]),
                              ))),
                            ]),
                          )),
                    ]),
              ))

          //card
        ]),
      ],
    ));
  }
}

Widget ProsedurTile(BuildContext context) {
  return Container(
    child: Column(children: [
      SizedBox(height: 8),
      Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("1. Cuci Semua Sayur",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Quicksand',
              )),
          SizedBox(
            height: 8,
          ),
          Text(
              "Cuci semua sayur terlebih dahulu untuk menghilangkan segala pestisida.")
        ]),
      ),
      SizedBox(height: 4),
    ]),
  );
}
