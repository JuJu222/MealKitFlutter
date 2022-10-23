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
                          // liked = !liked;
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
          Flexible(flex: 6, child: Container())
        ]),
        Column(children: [
          //kosong
          Flexible(flex: 3, child: Container()),
          //card
          Flexible(
              flex: 6,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                      color: Colors.white,
                      shape: BoxShape.rectangle),
                  padding: EdgeInsets.only(top: 24),
                  child: Column(children: [
                    Row(children: [
                      Flexible(
                          flex: 2,
                          child: Center(
                              child: Text("Grilled Salmon",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                  )))),
                      Flexible(
                          flex: 2,
                          child: Center(
                              child: Text("Rp40.000",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                  )))),
                    ]),
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text(
                                    "Daging dan Sayur",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                        color: blue),
                                  ))),
                          SizedBox(width: 90),
                          Flexible(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.only(left: 36),
                                  child: Text("/2 Porsi",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        // color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Quicksand',
                                      )))),
                        ]),
                    Flexible(
                      flex: 2,
                      child: Container(
                          margin: EdgeInsets.only(top: 12, left: 0, bottom: 0),
                          child: Text(
                            "Di samping menjadi salah satu sumber protein yang\nberkualitas tinggi, ikan salmon juga kaya akan asam\nlemak omega-3. Asam lemak omega-3 sangat berguna\nbagi kesehatan jantung, otak, dan organ tubuh lainnya.\nSelain itu rasanya lezat dan mudah diolah.",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                            ),

                            // textAlign: TextAlign.justify,
                          )),
                    ),
                    Flexible(
                        flex: 3,
                        child: ListView(
                          padding:
                              EdgeInsets.only(top: 12, left: 40, bottom: 0),
                          children: [
                            Text("Bahan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'Quicksand',
                                )),
                            SizedBox(height: 8),
                            Text(
                                "${bullet} 4 potong (@ 200 g) fillet ikan salmon",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} 1 sdt garam",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text(
                                "${bullet} 1 sdt merica hitam butiran, gerus kasar",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} 2 sdm minyak zaitun",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} 2 sdm mentega",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} 4 siung bawang putih, iris tipis",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} 4 sdm air jeruk lemon",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                          ],
                        )),
                    Flexible(
                        flex: 2,
                        child: ListView(
                          padding: EdgeInsets.only(top: 0, left: 40),
                          children: [
                            Text("Alat yang dibutuhkan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: 'Quicksand',
                                )),
                            SizedBox(height: 8),
                            Text("${bullet} Pisau",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} Wajan datar",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12, fontFamily: 'Quicksand',
                                )),
                            Text("${bullet} Gelas ukur",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'Quicksand',
                                )),
                          ],
                        )),
                    Flexible(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                flex: 4,
                                child: Container(
                                    padding: EdgeInsets.only(left: 40),
                                    child: Text("Review",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand',
                                        )))),
                            SizedBox(width: 90),
                            Flexible(
                                flex: 2,
                                child: Container(
                                    margin: EdgeInsets.only(right: 40),
                                    decoration: BoxDecoration(
                                      color: light_gray,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star, color: yellow),
                                        // Text(" ", style: TextStyle(fontSize: 16)),
                                        Text("4.5",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Quicksand',
                                            )),
                                      ],
                                    ))),
                          ]),
                    ),
                    Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 18, left: 40, right: 40),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: blue,
                            // shape: BoxShape.rectangle,
                          ),
                          // margin: EdgeInsets.all(4),
                          child: FloatingActionButton.extended(
                            backgroundColor: blue,
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              // MaterialPageRoute(
                              //     builder: (context) => FormPage()));
                            },
                            label: Text("Tambah ke Rencana",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Quicksand',
                                  // fontFamily: 'Futura',
                                )),
                            // icon: Icon(Icons.book)),
                          ),
                        ),
                      ),
                    ),
                  ])))
        ]),
      ],
    ));
  }
}
