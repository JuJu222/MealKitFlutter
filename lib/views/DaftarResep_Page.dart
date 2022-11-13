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
          iconTheme: IconThemeData(color: primaryColor),
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
                  // children: widget.daftarResep.map((url) {
                  //   return CardResep(resep: url);
                  // }).toList(),
                  children: [
                    if (widget.preferensi.nama == "Daging & Sayur") ...[
                      for (var i = 0; i < 6; i++) ...[
                        CardResep(resep: widget.daftarResep[i])
                      ]
                    ] else if (widget.preferensi.nama == "Sayur") ...[
                      for (var i = 6; i < 12; i++) ...[
                        CardResep(resep: widget.daftarResep[i])
                      ]
                    ]
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

//sementara taruh sini widget card resepnya

