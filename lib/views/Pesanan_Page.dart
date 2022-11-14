part of 'pages.dart';

class PesananPage extends StatelessWidget {
  static const pageName = "Pesanan";
  const PesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pesanan",
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(children: [
                  CardPesananParent(),
                  // ElevatedButton(
                  //     onPressed: (() {
                  //       Navigator.pushNamed(
                  //           context, PembayaranBerhasil.routeName);
                  //     }),
                  //     child: Text(
                  //       "lottie test",
                  //       style: TextStyle(color: Colors.white),
                  //     ))
                  // CardPesananParent(),
                  // CardPesananParent(),
                ]),
              ),
            ))
          ],
        )),
      ),
    );
  }
}
