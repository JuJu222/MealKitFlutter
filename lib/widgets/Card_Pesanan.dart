part of 'widgets.dart';

class CardPesananDalamPerjalanan extends StatefulWidget {
  final List<Pesan> pesan;
  const CardPesananDalamPerjalanan({super.key, required this.pesan});

  @override
  State<CardPesananDalamPerjalanan> createState() =>
      _CardPesananDalamPerjalananState();
}

class _CardPesananDalamPerjalananState
    extends State<CardPesananDalamPerjalanan> {
  double totalPricingFull = 0;
  double totalPricing = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, KeteranganPesananPage.routeName,
            arguments: {
              "pesan": widget.pesan,
              "totalPembayaran":
                  "${totalPrice(totalPriceFood, 20.000, widget.pesan).toString()}00",
              "waktuTransaksi": widget.pesan[0].date!,
            });
        //using argument cause of by index
      }),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        height: 210,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 0.1,
                  blurRadius: 14,
                  offset: Offset(0, 0.2))
            ]),
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //LOG Pesanan
                  Container(
                    child: Text(widget.pesan[0].date!,
                        style: Theme.of(context)!.textTheme.subtitle2!.copyWith(
                            color: primaryColor, fontWeight: FontWeight.w500)),
                  ),
                  //STATUS PESANAN
                  Container(
                    child: Text(
                      "Dalam Perjalanan",
                      style: Theme.of(context)!.textTheme.subtitle2!.copyWith(
                          color: primaryColor, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Row(children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 8,
                        children: widget.pesan.map(
                          (element) {
                            return Container(
                                child: Image.asset(element.images!));
                          },
                        ).toList(),
                      ),
                    )),
                SizedBox(width: 10.0),
                Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //loop Food Name
                                ...widget.pesan.map(
                                  (element) {
                                    return Text(element.menuName!,
                                        style: TextStyle(fontSize: 12));
                                  },
                                ),
                              ]),
                        ))),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Container(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Rp ",
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "${totalPrice(totalPriceFood, 20.000, widget.pesan).toString()}00",
                                    overflow: TextOverflow.visible,
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    )),
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(children: [
                Flexible(
                    child: Container(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Color(0xFFB3B3B3),
                  ),
                )),
                Flexible(
                    flex: 7,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Text(
                        "Citraland CBD Boulevard, Made, Kec. Sambikerep, Kota SBY, Jawa Timur 60219",
                        style: Theme.of(context)!.textTheme.subtitle2,
                      ),
                    ))
              ]),
            ),
          ),
        ]),
      ),
    );
  }

  double totalPriceFood(List<Pesan> tempList) {
    totalPricing = 0;
    tempList.forEach((e) {
      setState(() {
        totalPricing += double.parse(e.menuPrice!);
      });
    });
    return totalPricing;
  }

  double totalPrice(
      Function totalPriceFood, double ongkosKirim, List<Pesan> tempList) {
    totalPricingFull = 0;
    totalPricingFull = totalPriceFood(tempList) + ongkosKirim;
    return totalPricingFull;
  }
}

class CardPesananSelesai extends StatefulWidget {
  final List<Pesan> pesan;
  const CardPesananSelesai({super.key, required this.pesan});

  @override
  State<CardPesananSelesai> createState() => _CardPesananSelesaiState();
}

class _CardPesananSelesaiState extends State<CardPesananSelesai> {
  double totalPricingFull = 0;
  double totalPricing = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        //using argument cause of by index
        Navigator.pushNamed(context, KeteranganPesananPage.routeName,
            arguments: {
              "pesan": widget.pesan,
              "totalPembayaran":
                  "${totalPrice(totalPriceFood, 20.000, widget.pesan).toString()}00",
              "waktuTransaksi": widget.pesan[0].date!,
            });
      }),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
        height: 210,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 0.1,
                  blurRadius: 14,
                  offset: Offset(0, 0.2))
            ]),
        padding: const EdgeInsets.all(8),
        child: Column(children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //LOG Pesanan
                  Container(
                    child: Text(widget.pesan[0].date!,
                        style: Theme.of(context)!.textTheme.subtitle2!.copyWith(
                            color: Color(0xFF7A7A7A),
                            fontWeight: FontWeight.w500)),
                  ),
                  //STATUS PESANAN
                  Container(
                    child: Text(
                      "Selesai",
                      style: Theme.of(context)!.textTheme.subtitle2!.copyWith(
                          color: Color(0xFFB3B3B3),
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Row(children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 8,
                        children: widget.pesan.map(
                          (element) {
                            return Container(
                                child: Image.asset(element.images!));
                          },
                        ).toList(),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //loop Food Name
                                ...widget.pesan.map(
                                  (element) {
                                    return Text(element.menuName!,
                                        style: TextStyle(fontSize: 12));
                                  },
                                ),
                              ]),
                        ))),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Container(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rp ",
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "${totalPrice(totalPriceFood, 20.000, widget.pesan).toString()}00",
                                    overflow: TextOverflow.visible,
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    )),
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(children: [
                Flexible(
                    child: Container(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Color(0xFFB3B3B3),
                  ),
                )),
                Flexible(
                    flex: 7,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 8,
                      ),
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "Citraland CBD Boulevard, Made, Kec. Sambikerep, Kota SBY, Jawa Timur 60219",
                        style: Theme.of(context)!.textTheme.subtitle2,
                      ),
                    ))
              ]),
            ),
          ),
        ]),
      ),
    );
  }

  double totalPriceFood(List<Pesan> tempList) {
    totalPricing = 0;
    tempList.forEach((e) {
      setState(() {
        totalPricing += double.parse(e.menuPrice!);
      });
    });
    return totalPricing;
  }

  double totalPrice(
      Function totalPriceFood, double ongkosKirim, List<Pesan> tempList) {
    totalPricingFull = 0;
    totalPricingFull = totalPriceFood(tempList) + ongkosKirim;
    return totalPricingFull;
  }
}
