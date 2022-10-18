part of 'pages.dart';

class PreferensiPage extends StatefulWidget {
  static const routeName = "/PreferensiPage";
  const PreferensiPage({super.key});

  @override
  State<PreferensiPage> createState() => _PreferensiPageState();
}

class _PreferensiPageState extends State<PreferensiPage> {
  bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Preferensi",
          style: Theme.of(context)!
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
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
                    Text(
                      "Resep Seperti Apa Yang",
                      style: Theme.of(context)!
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Anda Sukai?",
                      style: Theme.of(context)!
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Column(children: [
                        Text(
                          "Pilihlah jenis resep yang anda sukai. Anda masih",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context)!.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                        ),
                        Text(
                          "memiliki akses ke semua resep setiap minggu.",
                          style: Theme.of(context)!
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black.withOpacity(0.4)),
                        )
                      ]),
                    ),
                  ]),
                )),
                Flexible(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // for (var i = 0; i < 3; i++) ...[
                            //   CardResep(resep: ,)
                            // ]
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // for (var i = 3; i < 6; i++) ...[
                            //   CardResep(
                            //     getColor: listResep[i].color,
                            //     getNama: listResep[i].nama,
                            //     getImages: listResep[i].images,
                            //   ),
                            // ]
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // for (var i = 6; i < 8; i++) ...[
                            //   CardResep(
                            //     getColor: listResep[i].color,
                            //     getNama: listResep[i].nama,
                            //     getImages: listResep[i].images,
                            //   ),
                            // ]
                          ],
                        )
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
                  padding: const EdgeInsets.all(5),
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
                  Navigator.push(context, AnimationPageRoute2());
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
