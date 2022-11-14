part of 'widgets.dart';

class CardPesananParent extends StatelessWidget {
  const CardPesananParent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(4),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Sedang Berlangsung",
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF1C9FE2)
          ),
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        CardPesanan()
      ]),
    );
  }
}
