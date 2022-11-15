import 'dart:ui';

class Pesan {
  String? images;
  String? menuName;
  String? numberOfPeople;
  String? menuPrice;
  String? date;
  String? preparationTime;
  int? menuId;
  Pesan(
      {required this.images,
      required this.menuName,
      required this.numberOfPeople,
      required this.menuPrice, required this.date, this.menuId});
}

List<Pesan> listPesan = [

  Pesan(
    date: "6 November 2022",
    menuName: "Grilled Salmon",
    menuPrice: "80.000",
    images: "assets/images/foods/resep/salmon.png",
    numberOfPeople: "2",
    menuId: 0,
  ),

  Pesan(
    date: "6 November 2022",
    menuName: "Daging Sapi Asam Manis",
    menuPrice: "22.000",
    images: "assets/images/foods/resep/dagingsayur4.png",
    numberOfPeople: "2",
    menuId: 4,
  ),

  Pesan(
    date: "6 November 2022",
    menuName: "Terong Balado",
    menuPrice: "18.000",
    images: "assets/images/foods/resep/sayur5.png",
    numberOfPeople: "2",
    menuId: 11,
  ),

  Pesan(
    date: "16 November 2022",
    menuName: "Grilled Salmon",
    menuPrice: "80.000",
    images: "assets/images/foods/resep/salmon.png",
    numberOfPeople: "2",
    menuId: 0,
  ),
  Pesan(
    date: "16 November 2022",
    menuName: "Kebab Roti Tawar",
    menuPrice: "21.000",
    images: "assets/images/foods/imagefood3.png",
    numberOfPeople: "4",
    menuId: 29,
  ),
  Pesan(
    date: "17 November 2022",
    menuName: "Spaghetti Brulee",
    menuPrice: "32.000",
    images: "assets/images/foods/resep/produksusu1.png",
    numberOfPeople: "2",
    menuId: 13,
  ),
  Pesan(
    date: "18 November 2022",
    menuName: "Pancake Pizza",
    menuPrice: "32.000",
    images: "assets/images/foods/resep/produksusu2.png",
    numberOfPeople: "2",
    menuId: 14,
  ),
];

List<Pesan> listKeranjang = [
  
  Pesan(
    date: "16 November 2022",
    menuName: "Pancake Pizza",
    menuPrice: "32.000",
    images: "assets/images/foods/resep/produksusu2.png",
    numberOfPeople: "2",
    menuId: 14,
  ),
  Pesan(
    date: "16 November 2022",
    menuName: "Spaghetti Brulee",
    menuPrice: "32.000",
    images: "assets/images/foods/resep/produksusu1.png",
    numberOfPeople: "2",
    menuId: 13,
  ),
  Pesan(
    date: "6 November 2022",
    menuName: "Terong Balado",
    menuPrice: "18.000",
    images: "assets/images/foods/resep/sayur5.png",
    numberOfPeople: "2",
    menuId: 11,
  ),
];

