part of 'pages.dart';

class TambahResepPage extends StatefulWidget {
  Resep? resep;
  static const routeName = "/TambahResepPage";
  TambahResepPage({super.key, required this.resep});

  @override
  State<TambahResepPage> createState() => _TambahResepPageState();
}

class _TambahResepPageState extends State<TambahResepPage> {
  Color blue = Color(0xFF1C9FE2);
  Color light_gray = Color(0xFFF6F8FA);
  Color yellow = Color(0xFFF8E545);
  Color gray = Color(0xFFBFBFBF);
  Color line_gray = Color(0xFFD9D9D9);

  String bullet = "\u2022 ";

  DateFormat dateFormat = DateFormat("E, d MMMM y");
  DateFormat dateFormatOrder = DateFormat("d MMMM y");
  DateTime _dateTime = DateTime.now().add(Duration(days: 1));
  DateTime initialDate = DateTime.now().add(Duration(days: 1));

  bool selected_first = false;
  bool selected_second = false;
  bool isDoublePrice = false;
  String? portion;

  late var price = widget.resep!.menuPrice!
      .substring(2, widget.resep!.menuPrice!.indexOf("."));
  late var priceConvert = int.parse(price);

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
                  padding: EdgeInsets.only(top: 8),
                  child: Column(children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                            child: Text("${widget.resep!.menuName}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Quicksand",
                                ))),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                                flex: 2,
                                child: Container(
                                    margin: EdgeInsets.only(top: 4),
                                    padding: EdgeInsets.only(left: 24),
                                    child: Text(
                                      "Jumlah Porsi",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand',
                                          color: blue),
                                    ))),
                          ]),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 6,
                          ),
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected_first = true;
                                        portion = "2";
                                        selected_second = false;

                                        isDoublePrice = false;
                                      });
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text("2",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                fontFamily: 'QuickSand',
                                                color: selected_first
                                                    ? Colors.white
                                                    : blue,
                                              ))),
                                      decoration: BoxDecoration(
                                          color: selected_first
                                              ? blue
                                              : Colors.white,
                                          border: Border.all(color: gray)),
                                    )),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected_first = false;
                                        selected_second = true;
                                        portion = "4";
                                        isDoublePrice = true;
                                      });
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text("4",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                fontFamily: 'QuickSand',
                                                color: selected_second
                                                    ? Colors.white
                                                    : blue,
                                              ))),
                                      decoration: BoxDecoration(
                                          color: selected_second
                                              ? blue
                                              : Colors.white,
                                          border: Border.all(color: gray)),
                                    )),
                              ),
                            ],
                          )),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                                flex: 2,
                                child: Container(
                                    margin: EdgeInsets.only(top: 16),
                                    padding: EdgeInsets.only(left: 24),
                                    child: Text(
                                      "Tanggal",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand',
                                          color: blue),
                                    ))),
                          ]),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 8, left: 24, right: 24),
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(color: gray),
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            await showDatePicker(
                              context: context,
                              initialDate: initialDate,
                              firstDate: initialDate,
                              lastDate: initialDate.add(Duration(days: 6)),
                            ).then((date) {
                              setState(() {
                                date == null
                                    ? _dateTime = initialDate
                                    : _dateTime = date;
                              });
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(left: 24),
                                      child: Text(dateFormat
                                          .format(_dateTime as DateTime))),
                                  Container(
                                    padding: EdgeInsets.only(right: 24),
                                    child: Icon(Icons.calendar_today),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(top: 16, left: 24, right: 24),
                        decoration: BoxDecoration(
                          border: Border.all(color: gray),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Text("${dateFormatOrder.format(_dateTime as DateTime).toString()}"),
                            Center(
                                child: portion != null
                                    ? Text("${portion} Porsi Grilled Salmon",
                                        style: TextStyle(
                                          color: blue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Quicksand",
                                        ))
                                    : null),
                            Center(
                                child: Text(
                                    "${dateFormat.format(_dateTime as DateTime).toString()}",
                                    style: TextStyle(
                                      color: blue,
                                      fontSize: 12,
                                      fontFamily: "Quicksand",
                                      // fontWeight: FontWeight.bold,
                                    ))),

                            Center(
                              child: Divider(
                                color: line_gray,
                                thickness: 1,
                                indent: 24,
                                endIndent: 24,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 24),
                                  child: Text("Total",
                                      style: TextStyle(
                                        color: blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: "Quicksand",
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.only(right: 24),
                                  child: Text(
                                      isDoublePrice
                                          ? "Rp${(priceConvert * 2).toString()}.000"
                                          : "Rp${priceConvert.toString()}.000",
                                      style: TextStyle(
                                        color: blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: "Quicksand",
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 18, left: 24, right: 24),
                          width: double.infinity,
                          height: 50,
                          // decoration: BoxDecoration(
                          // border: Border.all(color: Colors.transparent),
                          // borderRadius: BorderRadius.all(Radius.circular(8)),
                          // color: blue,
                          // shape: BoxShape.rectangle,
                          // ),
                          // margin: EdgeInsets.all(4),
                          child: FloatingActionButton.extended(
                            // height: 50,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            heroTag: "btn2",
                            backgroundColor: blue,
                            onPressed: () {
                              if (selected_first || selected_second != false) {
                                if (isDoublePrice) {
                                  Pesan? pesan = new Pesan(
                                      images: widget.resep!.menuImage,
                                      menuName: widget.resep!.menuName,
                                      numberOfPeople: portion,
                                      menuPrice:
                                          "${(priceConvert * 2).toString()}.000"
                                              .toString(),
                                      date: dateFormatOrder
                                          .format(_dateTime as DateTime)
                                          .toString());
                                  listKeranjang.add(pesan!);
                                } else {
                                  Pesan? pesan = new Pesan(
                                      images: widget.resep!.menuImage,
                                      menuName: widget.resep!.menuName,
                                      numberOfPeople: portion,
                                      menuPrice:
                                          "${priceConvert.toString()}.000"
                                              .toString(),
                                      date: dateFormatOrder
                                          .format(_dateTime as DateTime)
                                          .toString());
                                  listKeranjang.add(pesan!);
                                }

                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomePage.routeName, (route) => false);
                              } else {
                                Fluttertoast.showToast(
                                    msg:
                                        "Silahkan pilih jumlah porsi terlebih dahulu",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: primaryColor,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }
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
