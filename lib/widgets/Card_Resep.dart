import 'package:flutter/material.dart';

class CardResepLandscape extends StatelessWidget {
  String? getNama;
  Color? getColor;

  String? getImages;
  CardResepLandscape(
      {super.key,
      required this.getColor,
      required this.getImages,
      required this.getNama});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: getColor,
      child: Container(
          width: 147,
          height: 88,
          child: Stack(children: [
            Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      child: Text(
                        "${getNama}",
                        style: Theme.of(context)!
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    )),
                    Expanded(child: Container())
                  ],
                )),
            Positioned(
                top: 12,
                left: 58,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("${getImages}"),
                          fit: BoxFit.cover)),
                )),
          ])),
    );
  }
}

class CardResepPortrait extends StatelessWidget {
  String? getNama;
  Color? getColor;

  String? getImages;
  CardResepPortrait(
      {super.key,
      required this.getColor,
      required this.getNama,
      required this.getImages});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: getColor,
      child: Container(
        width: 93,
        height: 151,
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Text(
              "${getNama}",
              style: Theme.of(context)!
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              top: 49,
              child: Container(
                width: 102,
                height: 102,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("${getImages}"), fit: BoxFit.cover)),
              )),
        ]),
      ),
    );
  }
}
