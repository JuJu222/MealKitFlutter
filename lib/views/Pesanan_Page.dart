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
          style: Theme.of(context)!
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [CardPesananParent(), CardPesananParent()],
        )),
      ),
    );
  }
}
