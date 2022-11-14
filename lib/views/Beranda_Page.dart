part of "pages.dart";

class BerandaPage extends StatefulWidget {
  static const routeName = "Beranda";
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  int? countPendek = 0;
  int? countPanjang = 0;
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: Transform.scale(
                      scale: 0.90,
                      child: Image.asset("assets/logo/SplashScreenLogo.png")),
                ),
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        SizedBox(height: 5.0),
                        Text("Minggu, 2 Oktober 2022",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: "Quicksand",
                                    color: Color(0xFFA8A8A8))),
                      ],
                    ))
              ],
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ingin masak apa hari ini Kenny?",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      fontFamily: "Quicksand",
                                      color: Colors.black)),
                          SizedBox(height: 15.0),
                          Text("4 meal kit akan dikirim pada 3 Okt 2022",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      fontFamily: "Quicksand",
                                      color: Color(0xFF1C9FE2))),
                          SizedBox(height: 20.0),
                          CupertinoSearchTextField(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border(
                                    left: BorderSide(
                                        width: 1.5, color: Color(0xFF1C9FE2)),
                                    bottom: BorderSide(
                                        width: 1.5, color: Color(0xFF1C9FE2)),
                                    top: BorderSide(
                                        width: 1.5, color: Color(0xFF1C9FE2)),
                                    right: BorderSide(
                                        width: 1.5, color: Color(0xFF1C9FE2)))),
                            prefixIcon: Align(
                                alignment: Alignment.center,
                                child: Icon(Icons.search)),
                            prefixInsets: EdgeInsets.fromLTRB(15, 10, 0, 10),
                            itemSize: 28,
                            suffixInsets: EdgeInsets.fromLTRB(0, 10, 15, 10),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: "Quicksand",
                                color: Colors.black),
                            placeholder: "Cari resep di sini",
                            padding: EdgeInsets.all(5),
                          )
                        ],
                      )),
                      SizedBox(height: 20.0),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Untuk Anda",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          fontFamily: "Quicksand",
                                          color: Colors.black)),
                              SizedBox(height: 15.0),
                              Container(
                                height: 200,
                                child: ListView(

                                  scrollDirection: Axis.horizontal,
                                  children:[     
                                    ...listPreferensi.mapIndexed((index, value) {
                                    return Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,12,0),
                                      child: CardBeranda(preferensi: value),
                                    );
                                  }),
                                  ],
                                ),
                              )
                            ],
                          )),
                      SizedBox(height: 20.0),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Coba yang Lainnya",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            fontFamily: "Quicksand",
                                            color: Colors.black)),
                                SizedBox(height: 15.0),
                                Container(
                                    child: MasonryGridView.builder(
                                        shrinkWrap: true,
                                        itemCount: reversedList.length,
                                        gridDelegate:
                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2),
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        crossAxisSpacing: 12,
                                        mainAxisSpacing: 12,
                                        itemBuilder: (context, index) {
                                          if (index == 0 ||
                                              index == 3 ||
                                              index == 4 ||
                                              index == 7) {
                                            return CardBeranda(
                                              preferensi: reversedList[index],
                                            );
                                          } else {
                                            return CardBerandaLong(
                                              preferensi: reversedList[index],
                                            );
                                          }
                                        }))
                              ]))
                    ],
                  )),
                ))
              ],
            )));
  }
}
