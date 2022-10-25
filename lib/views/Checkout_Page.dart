part of "pages.dart";

class CheckoutPage extends StatefulWidget {
  static const routeName = "Checkout";
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 195,
        maxHeight: 220,
        borderRadius: BorderRadius.circular(24),
        panel: Center(
          child: Container(
            padding: EdgeInsets.all(22),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Metode Pembayaran",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1C9FE2),
                      fontSize: 16,
                      fontFamily: "Quicksand")),
              SizedBox(height: 5.0),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("OVO",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            fontFamily: "Quicksand",
                                            color: Colors.purple[900])),
                                SizedBox(width: 8.0),
                                Text("0821*****4821",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            fontFamily: "Quicksand"))
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                    SizedBox(height: 22.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "Quicksand")),
                        SizedBox(height: 9.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Rp.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            fontFamily: "Quicksand")),
                                SizedBox(width: 2.0),
                                Text("245.367",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 34,
                                            fontFamily: "Quicksand")),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 55.0, vertical: 16.0),
                                  backgroundColor: Color(0xFF1C9FE2),
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0))),
                              child: Text("Pesan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: "Quicksand")),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: [
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Checkout",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Quicksand"),
                      ),
                      SizedBox(height: 25.0),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alamat Pengiriman",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1C9FE2),
                                        fontSize: 16,
                                        fontFamily: "Quicksand")),
                            SizedBox(height: 17),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                          size: 30,
                                          Icons.person,
                                          color: Color(0xFF707070)),
                                      SizedBox(width: 10),
                                      Text("Kenny Jinhiro",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF707070),
                                                  fontSize: 12,
                                                  fontFamily: "Quicksand")),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                          size: 30,
                                          Icons.phone_outlined,
                                          color: Color(0xFF707070)),
                                      SizedBox(width: 10),
                                      Text("089537867595",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF707070),
                                                  fontSize: 14,
                                                  fontFamily: "Quicksand")),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25.0),
                            Row(
                              children: [
                                Icon(
                                    size: 30,
                                    Icons.location_on_outlined,
                                    color: Color(0xFF707070)),
                                SizedBox(width: 10),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                      "Jl. CitraLand CBD Boulevard, Made, Kec. Sambikerep, Kota SBY, Jawa Timur 60219",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF707070),
                                              fontSize: 12,
                                              fontFamily: "Quicksand")),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Pesanan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF1C9FE2),
                                          fontSize: 16,
                                          fontFamily: "Quicksand")),
                            ],
                          ),
                          SizedBox(height: 5),
                          CheckoutTile(
                            menuName: "Pesto Pasta Chicken",
                            menuPrice: "50.000",
                            numberOfPeople: "4",
                          ),
                          CheckoutTile(
                            menuName: "Nabe Veggie Udon",
                            menuPrice: "50.000",
                            numberOfPeople: "2",
                          ),
                          CheckoutTile(
                            menuName: "Nabe Veggie Udon",
                            menuPrice: "50.000",
                            numberOfPeople: "2",
                          ),
                        ],
                      )),
                      SizedBox(height: 15.0),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Rincian Pembayaran",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF1C9FE2),
                                            fontSize: 16,
                                            fontFamily: "Quicksand")),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Card(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(
                                      width: 1.4, color: Color(0xFFBFBFBF))),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Harga Makanan",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: "Quicksand")),
                                        Text("Rp200.000",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: "Quicksand")),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Ongkos Kirim",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: "Quicksand")),
                                        Text("Rp20.000",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: "Quicksand")),
                                      ],
                                    ),
                                    SizedBox(height: 15.0),
                                    Divider(
                                        color: Colors.grey[400], height: 10),
                                    SizedBox(height: 15.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Total",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF1C9FE2),
                                                    fontSize: 16,
                                                    fontFamily: "Quicksand")),
                                        Text("Rp220.000",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF1C9FE2),
                                                    fontSize: 16,
                                                    fontFamily: "Quicksand")),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Metode Pembayaran",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF1C9FE2),
                                                fontSize: 16,
                                                fontFamily: "Quicksand")),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      minRadius: 25,
                                    ),
                                    SizedBox(width: 16),
                                    CircleAvatar(
                                      minRadius: 25,
                                    ),
                                    SizedBox(width: 16),
                                    CircleAvatar(
                                      minRadius: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(height: 300, width: double.infinity)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}