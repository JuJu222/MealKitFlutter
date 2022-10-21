part of 'widgets.dart';

class CardPesanan extends StatelessWidget {
  const CardPesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        //using argument cause of by index
      }),
      child: Container(
        height: 202,
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
                    child: Text("10 May 2022, 12:50PM"),
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
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/imagefood1.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/imagefood2.png",
                            ),
                          ),
                          Container(
                            child: Image.asset("assets/images/imagefood3.png"),
                          ),
                          Container(
                            child: Image.asset("assets/images/imagefood4.png"),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                        child: Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //loop Food Name
                            Wrap(
                              children: [
                                Text(
                                  "1x Salmon Rice",
                                  style: Theme.of(context)!.textTheme.subtitle2,
                                ),
                                Text("1x Blueberry Oatmeal"),
                                Text("1x Nabe Veggie Udonnnn"),
                                Text("...")
                              ],
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
                              style: Theme.of(context)!
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Container(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rp. ",
                                  style: Theme.of(context)!.textTheme.subtitle2,
                                ),
                                Flexible(
                                  child: Text(
                                    "2.600.000",
                                    overflow: TextOverflow.visible,
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
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
            flex: 1,
            child: Container(
              child: Row(children: [
                Flexible(
                    child: Container(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Colors.black,
                  ),
                )),
                Expanded(
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
}
