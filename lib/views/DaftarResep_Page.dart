part of 'pages.dart';

class DaftarResepPage extends StatefulWidget {
  List<Resep> daftarResep = List.from(listResep);
  Resep? resep;
  final Preferensi preferensi;

  static const routeName = "/DaftarResep";
  DaftarResepPage({super.key, required this.preferensi, this.resep});

  @override
  State<DaftarResepPage> createState() => _DaftarResepPageState();
}

class _DaftarResepPageState extends State<DaftarResepPage> {
  Color near_black = Color(0xFF2A2A2A);
  Color blue = Color(0xFF1C9FE2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            widget.preferensi.nama.toString(),
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: near_black),
          )),
      body: Column(
        children: [
          //Search
          Flexible(
              flex: 1,
              child: Container(
                  // margin: EdgeInsets.only(bottom: 24),
                  width: double.infinity,
                  // height: double.infinity,
                  margin: EdgeInsets.only(left: 18, right: 18, bottom: 24),
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      contentPadding: // Text Field height
                          EdgeInsets.symmetric(vertical: 12.0),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "Cari resep favorit anda",
                    ),
                  ))),
          //GridView
          Flexible(
              flex: 5,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  childAspectRatio: (8 / 10),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: widget.daftarResep.map((url) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, InformasiResepPage.routeName);
                      },
                      child: Column(
                        // mainAxisAlignment: Alignment.,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/detail_bg.png'),
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Grilled Salmon",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand',
                                        color: near_black,
                                      )),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          alignment:
                                              PlaceholderAlignment.middle,
                                          child: Icon(Icons.kitchen, size: 10),
                                        ),
                                        TextSpan(
                                          text: " 40 min",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Quicksand',
                                            color: near_black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                width: double.infinity,
                                height: 12,
                                child: Container(
                                  child: Center(
                                    child: Text("Rp40.000/2 porsi",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        )),
                                  ),
                                  decoration: BoxDecoration(
                                    color: blue,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                )
                                // padding: const EdgeInsets.symmetric(
                                // vertical: 12, horizontal: 8),
                                // color: Colors.teal[100],
                                // child: const Text(
                                // "He'd have you all unravel at the"),
                                ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ))
        ],
      ),
    );
  }
}
