part of 'pages.dart';

class RencanaPage extends StatefulWidget {
  static const pageName = "Rencana";
  const RencanaPage({super.key});

  @override
  State<RencanaPage> createState() => _RencanaPageState();
}

class _RencanaPageState extends State<RencanaPage> {
  int? currentSelectedIndex;
  List<CardRencana> cardRencana = [
    CardRencana(
        date: "3", day: "Sen", isSelected: false, onSelect: () {}, index: 0),
    CardRencana(
        date: "4", day: "Sel", isSelected: false, onSelect: () {}, index: 0),
    CardRencana(
        date: "5", day: "Rab", isSelected: false, onSelect: () {}, index: 0),
    CardRencana(
        date: "6", day: "Kam", isSelected: false, onSelect: () {}, index: 0),
    CardRencana(
        date: "7", day: "Jum", isSelected: false, onSelect: () {}, index: 0),
    CardRencana(
        date: "8", day: "Sab", isSelected: false, onSelect: () {}, index: 0),
    CardRencana(
        date: "9", day: "Min", isSelected: false, onSelect: () {}, index: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      maxHeight: 100,
      boxShadow: [BoxShadow(blurRadius: 10, color: Color(0xF000000))],
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(22), right: Radius.circular(22)),
      panel: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        fontFamily: "Quicksand",
                        color: Color(0xFF6A6A6A))),
                Text("Rp100.000",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "Quicksand"))
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1C9FE2),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  child: Text("Checkout",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: "Quicksand")),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(17),
          width: double.infinity,
          height: double.infinity,
          child: Flexible(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text(
                        "3-9 Oktober 2022",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: "Quicksand"),
                      ),
                      const SizedBox(width: 5),
                      PopupMenuButton(
                        child: const Icon(Icons.keyboard_arrow_down, size: 32),
                        itemBuilder: (context) {
                          return cardRencana
                              .map((item) => PopupMenuItem(
                                    value: item,
                                    child: Text(item.date),
                                  ))
                              .toList();
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                //asMap turns list into a Map, get the key and values of the map, item is the index, value is the key
                Row(
                    children: cardRencana.mapIndexed((index, item) {
                  return CardRencana(
                      date: item.date,
                      day: item.day,
                      index: index,
                      isSelected: currentSelectedIndex == index,
                      onSelect: (() {
                        setState(() {
                          currentSelectedIndex = index;
                        });
                      }));
                }).toList()),
                // Row(children: cardRencana),
                const SizedBox(height: 25),
                //3rd section
                const RencanaList(),
                Container(height: 300, width: double.infinity)
              ]),
            ),
          ),
        ),
      ),
    ));
  }
}
