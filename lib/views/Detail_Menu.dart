part of 'pages.dart';

class DetailMenuPage extends StatefulWidget {
  static const routeName = "/DetailMenuPage";
  const DetailMenuPage({super.key});

  @override
  State<DetailMenuPage> createState() => _DetailMenuPageState();
}

class _DetailMenuPageState extends State<DetailMenuPage> {
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
          Flexible(flex: 6, child: Container(child: Text("Text")))
        ]),
      ],
    ));
  }
}
