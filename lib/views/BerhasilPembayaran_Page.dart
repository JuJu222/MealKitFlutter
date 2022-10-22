part of "pages.dart";

class BerhasilPembayaranPage extends StatefulWidget {
  static const routeName = "BerhasilPembayaran";
  const BerhasilPembayaranPage({super.key});

  @override
  State<BerhasilPembayaranPage> createState() => _BerhasilPembayaranPageState();
}

class _BerhasilPembayaranPageState extends State<BerhasilPembayaranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(100.0),
      child: Column(children: [
        Flexible(
            child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xFF1C9FE2),
                child: CircleAvatar(
                  radius: 96,
                  backgroundColor: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.check_outlined,
                    size: 50,
                    color: Color(0xFF1C9FE2),
                  )),
                ),
              ),
              SizedBox(height: 30.0),
              Text("Pembayaran Berhasil",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1C9FE2),
                      fontSize: 22,
                      fontFamily: "Quicksand")),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2 Oktober 2022,",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Quicksand")),
                  SizedBox(width: 5.0),
                  Text("16:40",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: "Quicksand")),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Total",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Quicksand")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rp.",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Quicksand")),
                      SizedBox(width: 3.0),
                      Text("245.367",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontFamily: "Quicksand")),
                    ],
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                  fontSize: 16,
                                  fontFamily: "Quicksand"))
                    ],
                  ),
                ],
              ))
            ]),
          ),
        ))
      ]),
    ));
  }
}
