import 'dart:ui';

class Pesan {
  String? images;
  String? menuName;
  String? numberOfPeople;
  String? menuPrice;
  String? date;
  Pesan(
      {required this.images,
      required this.menuName,
      required this.numberOfPeople,
      required this.menuPrice, required this.date});
}

List<Pesan> listPesan = [
  Pesan(
    date: "3 Oktober 2022",
    menuName: "Berry & Apple Oatmeal",
    menuPrice: "50.000",
    images: "assets/images/foods/imagefood4.png",
    numberOfPeople: "4",
  ),
  Pesan(
    date: "4 Oktober 2022",
    menuName: "Nabe Veggie Udon",
    menuPrice: "50.000",
    images: "assets/images/foods/imagefood3.png",
    numberOfPeople: "2",
  ),
  Pesan(
    date: "5 Oktober 2022",
    menuName: "Veggie & Bone Broth Ramen",
    menuPrice: "45.000",
    images: "assets/images/foods/imagefood2.png",
    numberOfPeople: "3",
  ),
];
