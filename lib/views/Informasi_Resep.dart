part of 'pages.dart';

class InformasiResepPage extends StatefulWidget {
  static const routeName = "/InformasiResepPage";
  const InformasiResepPage({super.key});

  @override
  State<InformasiResepPage> createState() => _InformasiResepPageState();
}

class _InformasiResepPageState extends State<InformasiResepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(children: [
          Flexible(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: AssetImage('assets/images/detail_bg.png'),
              )))),
          //kosong
          Flexible(flex: 5, child: Container())
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
                                      fontWeight: FontWeight.bold)))),
                      Flexible(
                          flex: 2,
                          child: Center(
                              child: Text("Rp40.000",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)))),
                    ]),
                    Row(children: [
                      Flexible(
                          flex: 2,
                          child: Center(child: Text("Grilled Salmon"))),
                      Flexible(flex: 2, child: Center(child: Text("Rp40.000"))),
                    ]),
                  ])))
        ]),
      ],
    ));
  }
}
