part of 'pages.dart';

class StepMasak extends StatefulWidget {
  static const routeName = "/StepMasak";
  //Resep resep;
  StepMasak({super.key});

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
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Resep resep = data["resep"];
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
                  image: AssetImage('${resep!.menuImage}'),
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
                    child: FloatingActionButton.small(
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
                                                    "${resep!.menuName}",
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
                                                  child: Text(
                                                      "${resep!.menuPortion}",
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
                                          child: Text.rich(
                                        textAlign: TextAlign.left,
                                        TextSpan(
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF1C9FE2),
                                          ),
                                          children: [
                                            WidgetSpan(
                                              alignment:
                                                  PlaceholderAlignment.middle,
                                              child: ImageIcon(
                                                  AssetImage(
                                                      "assets/images/square-icon.png"),
                                                  color: Color(0xFF1C9FE2)),
                                            ),
                                            TextSpan(
                                              text: "${resep.menuPreference}",
                                            )
                                          ],
                                          // textAlign: TextAlign.center,
                                        ),
                                        // textAlign: TextAlign.center,
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
                                        "${resep!.menuDescription}",
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
                                                  top: 0, left: 8, bottom: 0),
                                              children: [
                                                SizedBox(height: 8),
                                                ...resep.menuIngredients!.map((item) {
                                                  return Text("${bullet} ${item.toString()}", style: TextStyle(
                                                      fontWeight: FontWeight.w500,

                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand'));
                                                },)
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
                                                  top: 0, left: 8, bottom: 0),
                                              children: [
                                                SizedBox(height: 8),
                                                ...resep.menuTools!.map((item) {
                                                  return Text("${bullet} ${item.toString()}", style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      fontFamily: 'Quicksand'));
                                                },)
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
                                                  top: 0, left: 8, bottom: 0),
                                              children: [
                                                ProsedurTile(context, '1. Buat Bumbunya', 'Di dalam mangkuk, masukkan semua bumbu rendaman, aduk-aduk hingga tercampur rata.'),
                                                ProsedurTile(context, '2. Balurkan Bumbun', 'Balurkan bahan yang sudah dicampur di ikan salmon, boleh dimarinasi selama 20 menit.'),
                                                ProsedurTile(context, '3. Masak Salmon', 'Tanpa minyak, masak salmon di atas teflon anti lengket yang sudah dipanaskan dengan api kecil.'),
                                                ProsedurTile(context, '4. Hidangkan', 'Masak sesuai selera. Hidangkan dengan sayuran kukus sesuai selera.')
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

Widget ProsedurTile(BuildContext context, String a, String b) {
  return Container(
    child: Column(children: [
      SizedBox(height: 8),
      Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(a,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Quicksand',
              )),
          SizedBox(
            height: 8,
          ),
          Text(
              b, style: TextStyle(
            fontSize: 12,
            fontFamily: 'Quicksand',
          ),)
        ]),
      ),
      SizedBox(height: 4),
    ]),
  );
}
