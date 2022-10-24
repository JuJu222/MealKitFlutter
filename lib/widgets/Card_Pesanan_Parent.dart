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
          style: Theme.of(context)!
              .textTheme
              .headline6!
              .copyWith(color: primaryColor, fontWeight: FontWeight.w700),
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
