part of 'pages.dart';

class PreferensiPage extends StatefulWidget {
  static const routeName = "/PreferensiPage";
  const PreferensiPage({super.key});

  @override
  State<PreferensiPage> createState() => _PreferensiPageState();
}

class _PreferensiPageState extends State<PreferensiPage> {
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
        padding: const EdgeInsets.all(21),
        child: Container(
            child: Column(
          children: [Text("Test")],
        )),
      ),
    );
  }
}
