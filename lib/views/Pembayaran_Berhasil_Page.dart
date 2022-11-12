import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:meal_kit_flutter/views/pages.dart';

class PembayaranBerhasil extends StatelessWidget {
  static const routeName = "/PembayaranBerhasil";
  const PembayaranBerhasil({super.key});
  @override
  Widget build(BuildContext context) {
    Map data =  ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            child: LottieBuilder.asset(
              "assets/lottie/payment_complete2.json",
              repeat: false,
              delegates: LottieDelegates(),
            ),
          ),
          Container(
            width: double.infinity,
            // color: Colors.red,
            child: Column(children: [
              Text("Pembayaran Berhasil",
                  style: Theme.of(context)!.textTheme.headline6!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              SizedBox(
                height: 12,
              ),

              //final now = DateTime.now();
              Text(
                "${data["waktuTransaksi"].day} November ${data["waktuTransaksi"].year}, ${data["waktuTransaksi"].hour}:${data["waktuTransaksi"].minute}",
                style: Theme.of(context)!
                    .textTheme
                    .bodyText1!
                    .copyWith(letterSpacing: 0.1),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                // color: Colors.red,
                child: Column(children: [
                  Text(
                    "Total",
                    style: Theme.of(context)!
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    // color: Colors.amber,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                  // color: Colors.green,
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rp.",
                                    style: Theme.of(context)!
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                  ),
                                ],
                              ))),
                          Expanded(
                              flex: 3,
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                // color: Colors.yellow,
                                child: Text(
                                  "${data["totalPembayaran"]}",
                                  style: Theme.of(context)!
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                ),
                              ))
                        ]),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 9,
                            child: SvgPicture.asset(
                              "assets/images/payments/ovo_logo.svg",
                              width: 29,
                              height: 9,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "081231149830",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                          )
                        ]),
                  )
                ]),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
