part of 'pages.dart';

class MetodePembayaran extends StatelessWidget {
  static const routeName = "/MetodePembayaran";
  const MetodePembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Metode Pembayaran",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(children: [
                                    SvgPicture.asset(
                                        "assets/images/payments/visa.svg"),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    SvgPicture.asset(
                                        "assets/images/payments/mastercard.svg"),
                                  ]),
                                ),
                                Text(
                                  "Kartu Debit/Credit",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Quicksand"),
                                )
                              ]),
                        )),
                    Flexible(
                        child: Container(
                            child: Icon(Icons.keyboard_arrow_right_outlined)))
                  ]),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Colors.black38,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 10,
                          child: Container(
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "assets/images/payments/ovo_logo.svg",
                                              width: 39,
                                              height: 12,
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 14),
                                      child: Text("OVO",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  fontFamily: "Quicksand",
                                                  color: Colors.purple[900])),
                                    ),
                                  )
                                ]),
                          )),
                      Flexible(
                          child: Container(
                              child: Icon(Icons.keyboard_arrow_right_outlined)))
                    ]),
              ),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Colors.black38,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/images/payments/gopay.svg",
                                            width: 67,
                                            height: 16,
                                          ),
                                        ]),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    child: Text("Gopay",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: "Quicksand",
                                                color: Colors.black)),
                                  ),
                                )
                              ]),
                        )),
                    Flexible(
                        child: Container(
                            child: Icon(Icons.keyboard_arrow_right_outlined)))
                  ]),
            ),
            SizedBox(
              height: 1.0,
              child: new Center(
                child: new Container(
                  margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Colors.black38,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/images/payments/bca.svg",
                                            width: 65,
                                            height: 21,
                                          ),
                                        ]),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    child: Text("BCA",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                fontFamily: "Quicksand",
                                                color: Colors.black)),
                                  ),
                                )
                              ]),
                        )),
                    Flexible(
                        child: Container(
                            child: Icon(Icons.keyboard_arrow_right_outlined)))
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
