part of 'widgets.dart';

class CardPesananParentDalamPerjalanan extends StatefulWidget {
  List<Pesan> pesan;
  CardPesananParentDalamPerjalanan({super.key, required this.pesan});

  @override
  State<CardPesananParentDalamPerjalanan> createState() =>
      _CardPesananParentDalamPerjalananState();
}

class _CardPesananParentDalamPerjalananState
    extends State<CardPesananParentDalamPerjalanan> {
  Map<String, List<Pesan>> newMap = {};
  @override
  initState() {
    super.initState();
    newMap = groupBy(listPesan, (obj) => obj.date!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(4),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Sedang Berlangsung",
          style: Theme.of(context)!.textTheme.headline6!.copyWith(
              color: primaryColor, fontWeight: FontWeight.w700, fontSize: 16.0),
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        ...newMap.entries.mapIndexed((index, element) {
          if (element.key[1] == " ") {
            if (int.parse(element.key.substring(0, 1)) > DateTime.now().day) {
              return CardPesananDalamPerjalanan(pesan: element.value);
            } else {
              return Container();
            }
          } else {
            if (int.parse(element.key.substring(0, 2)) > DateTime.now().day - 1) {
              return CardPesananDalamPerjalanan(pesan: element.value);
            } else {
              return Container();
            }
          }
        })
      ]),
    );
  }
}

class CardPesananParentSelesai extends StatefulWidget {
  List<Pesan> pesan;
  CardPesananParentSelesai({super.key, required this.pesan});

  @override
  State<CardPesananParentSelesai> createState() =>
      _CardPesananParentSelesaiState();
}

class _CardPesananParentSelesaiState extends State<CardPesananParentSelesai> {
  Map<String, List<Pesan>> newMap = {};
  @override
  initState() {
    super.initState();
    newMap = groupBy(listPesan, (obj) => obj.date!);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(4),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Selesai",
          style: Theme.of(context)!.textTheme.headline6!.copyWith(
              color: primaryColor, fontWeight: FontWeight.w700, fontSize: 16.0),
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        ...newMap.entries.mapIndexed((index, element) {
          if (element.key[1] == " ") {
            if (int.parse(element.key.substring(0, 1)) <= DateTime.now().day) {
              return CardPesananSelesai(pesan: element.value);
            } else {
              return Container();
            }
          } else {
            if (int.parse(element.key.substring(0, 2)) <= DateTime.now().day - 1) {
              return CardPesananSelesai(pesan: element.value);
            } else {
              return Container();
            }
          }
        })
      ]),
    );
  }
}
