part of 'pages.dart';

class InformasiResepPage extends StatefulWidget {
  static const routeName = "/InformasiResepPage";

  Resep? resep;
  InformasiResepPage({super.key, required this.resep});

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
                  image: AssetImage('${widget.resep!.menuImage}'),
                ))),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      // border: Border.all(color: darkblue, width: 8),
                      color: Colors.transparent,
                    ),
                    margin: EdgeInsets.only(top: 40, left: 10),
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
                          flex: 10,
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
                                          flex: 1,
                                          child: Container(
                                              // color: Colors.yellow,
                                              child: Container(
                                                  // padding:
                                                  // EdgeInsets.only(right: 4),
                                                  child: Text(
                                                      "${widget.resep!.menuPrice}",
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
                                  // margin: EdgeInsets.only(right: 20),
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      flex: 2,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        // padding: EdgeInsets.only(right: 12),
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
                                                text:
                                                    "${widget.resep!.menuPreference}",
                                              )
                                            ],
                                            // textAlign: TextAlign.center,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                        // margin: EdgeInsets.only(right: 20),
                                      )),
                                  // SizedBox(width: 90),
                                  Flexible(
                                      flex: 2,
                                      child: Container(
                                          padding: EdgeInsets.only(right: 32),
                                          child: Text(
                                              "/${widget.resep!.menuPortion}",
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
                                              child: ListView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  padding: EdgeInsets.only(
                                                      top: 0,
                                                      left: 6,
                                                      bottom: 0),
                                                  itemCount: widget.resep!
                                                      .menuIngredients!.length,
                                                  itemBuilder:
                                                      ((context, index) {
                                                    return Container(
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(height: 8),
                                                            Text(
                                                                "${bullet} ${widget.resep!.menuIngredients![index]}",
                                                                style:
                                                                    TextStyle(
                                                                  // fontWeight: FontWeight.bold,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                ))
                                                          ]),
                                                    );
                                                  })))
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
                                              child: ListView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  padding: EdgeInsets.only(
                                                      top: 0,
                                                      left: 6,
                                                      bottom: 0),
                                                  itemCount: widget
                                                      .resep!.menuTools!.length,
                                                  itemBuilder:
                                                      ((context, index) {
                                                    return Container(
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            SizedBox(height: 8),
                                                            Text(
                                                                "${bullet} ${widget.resep!.menuTools![index]}",
                                                                style:
                                                                    TextStyle(
                                                                  // fontWeight: FontWeight.bold,
                                                                  fontSize: 12,
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                ))
                                                          ]),
                                                    );
                                                  })))
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
                                            // margin: EdgeInsets.only(right: 36),
                                            child: Row(children: [
                                              Icon(Icons.star, color: yellow),
                                              Text(
                                                "${widget.resep!.menuReview}",
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
                        flex: 2,
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                // minimum: Size.fromHeight(30.0),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))))),
                            child: Text(
                              "Pesan",
                              style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: (() {
                              Navigator.pushNamed(
                                  context, TambahResepPage.routeName,
                                  arguments: widget.resep);
                            }),
                          ),
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
