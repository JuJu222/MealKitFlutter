part of 'pages.dart';

class PreferensiPage extends StatefulWidget {
  static const routeName = "/PreferensiPage";

  const PreferensiPage({super.key});

  @override
  State<PreferensiPage> createState() => _PreferensiPageState();
}

class _PreferensiPageState extends State<PreferensiPage> {
  List<Preferensi> _pickedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preferensi",
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              child: Column(children: [
                Flexible(
                    child: Container(
                  child: Column(children: [
                    const Text(
                      "Resep Seperti Apa Yang",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Anda Sukai?",
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(children: const [
                      Text(
                        "Pilihlah jenis resep yang anda sukai. Anda masih",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Color(0xFF171930),
                            fontSize: 13),
                      ),
                      Text(
                        "memiliki akses ke semua resep setiap minggu.",
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Color(0xFF171930),
                            fontSize: 13),
                      )
                    ]),
                  ]),
                )),
                Flexible(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ...List.generate(
                                3,
                                ((index) => CardPreferensi(
                                    preferensi: listPreferensi[index],
                                    onSelected: ((bool value) {
                                      if (value) {
                                        _pickedItems.add(listPreferensi[index]);
                                      } else {
                                        _pickedItems
                                            .remove(listPreferensi[index]);
                                      }

                                      setState(() {
                                        //kosong
                                      });
                                    }))))
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for (var i = 3; i < 6; i++) ...[
                              CardPreferensi(
                                  preferensi: listPreferensi[i],
                                  onSelected: ((bool value) {
                                    if (value) {
                                      _pickedItems.add(listPreferensi[i]);
                                    } else {
                                      _pickedItems.remove(listPreferensi[i]);
                                    }
                                    setState(() {
                                      //kosong
                                    });
                                  }))
                            ]
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for (var i = 6; i < 8; i++) ...[
                              CardPreferensi(
                                  preferensi: listPreferensi[i],
                                  onSelected: ((bool value) {
                                    if (value) {
                                      _pickedItems.add(listPreferensi[i]);
                                    } else {
                                      _pickedItems.remove(listPreferensi[i]);
                                    }
                                    setState(() {
                                      //kosong
                                    });
                                  }))
                            ]
                          ],
                        ),
                        //debug array pickedItems Length

                        // Text("${_pickedItems.length}"),
                      ]),
                    ),
                  ),
                ),
              ]),
            )),
            Ink(
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 0.8))
                  ]),
              child: InkWell(
                child: Container(
                  height: 54.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Selanjutnya",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ), (route) => false);
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
