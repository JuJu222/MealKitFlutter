part of 'pages.dart';

class RencanaPage extends StatefulWidget {
  static const pageName = "Rencana";
  const RencanaPage({super.key});

  @override
  State<RencanaPage> createState() => _RencanaPageState();
}

class _RencanaPageState extends State<RencanaPage> {
  int? currentSelectedIndex;
  double totalPricing = 0;
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Container(
            padding: const EdgeInsets.all(15),
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
                  child: const Icon(Icons.keyboard_arrow_down,
                      size: 32, color: Colors.black),
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
        ),
        body: SlidingUpPanel(
          key: UniqueKey(),
          maxHeight: 100,
          boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0xF000000))],
          borderRadius: const BorderRadius.horizontal(
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
                            fontSize: 14,
                            fontFamily: "Quicksand",
                            color: const Color(0xFF6A6A6A))),
                    Text(
                        (listPesan.isEmpty)
                            ? "0"
                            : "Rp${totalPrice(listPesan).toString()}00",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Quicksand"))
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10.0),
                          backgroundColor: (listPesan.isEmpty)
                              ? Colors.grey
                              : const Color(0xFF1C9FE2),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      child: Text("Checkout",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: "Quicksand")),
                      onPressed: () {
                        if (listPesan.isEmpty) {
                        } else {
                          //navigate to checkout
                        }
                      },
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
              child: SingleChildScrollView(
                child: Column(children: [
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
                  SizedBox(
                    width: double.infinity,
                    // height: double.infinity,
                    child: Column(children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              const SizedBox(width: 10.0),
                              Text("Telah Dipesan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                          fontFamily: "Quicksand")),
                            ],
                          )),
                      const SizedBox(height: 15.0),
                      SingleChildScrollView(
                          child: (listPesan.isEmpty)
                              ? const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "Tidak ada meal kit yang telah dipesan"),
                                )
                              : Column(
                                  children: listPesan.mapIndexed(
                                  (index, e) {
                                    return CheckoutTile(
                                      pesan: listPesan[index],
                                    );
                                  },
                                ).toList())),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          const SizedBox(width: 10.0),
                          Text("Keranjang",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      fontFamily: "Quicksand")),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      SingleChildScrollView(
                          child: (listPesan.isEmpty)
                              ? const Align(
                                  alignment: Alignment.center,
                                  child: Text("Tidak ada meal kit dikeranjang"),
                                )
                              : Column(
                                  children: listPesan.mapIndexed(
                                    (index, e) {
                                      return CheckoutTileWithIcon(
                                        onDelete: () => removeItem(index),
                                        pesan: listPesan[index],
                                      );
                                    },
                                  ).toList(),
                                ))
                    ]),
                  ),
                  Container(height: 300, width: double.infinity)
                ]),
              ),
            ),
          ),
        ));
  }

  void removeItem(int index) {
    setState(() {
      listPesan.removeAt(index);
    });
  }

  double totalPrice(List<Pesan> listPesan) {
    totalPricing = 0;
    listPesan.forEach((e) {
      setState(() {
        totalPricing += double.parse(e.menuPrice!);
      });
    });
    return totalPricing;
  }
}
