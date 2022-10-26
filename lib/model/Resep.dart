import 'dart:ui';

class Resep {
  String? nama;
  Color? color;

  String? images;
  Resep({required this.nama, required this.color, required this.images});
}

List<Resep> listResep = [
  Resep(
      nama: "Daging & Sayur",
      color: Color(0XFFFCEAB2),
      images: "assets/images/daging&sayur.png"),
  Resep(
      nama: "Sayur",
      color: Color(0XFFF8D1B7),
      images: "assets/images/salad.png"),
  Resep(
      nama: "Produk Susu",
      color: Color(0XFFF6D5FB),
      images: "assets/images/produksusu.png"),
  Resep(
      nama: "Cepat & Mudah",
      color: Color(0XFFD2F5FF),
      images: "assets/images/fastfood.png"),
  Resep(
      nama: "Roti", color: Color(0XFFC6F0D7), images: "assets/images/roti.png"),
  Resep(
      nama: "Protein Tinggi",
      color: Color(0XFFF8CDD5),
      images: "assets/images/meat01.png"),
  Resep(
      nama: "Makanan Laut",
      color: Color(0xffDFFCFB),
      images: "assets/images/seafood.png"),
  Resep(
      nama: "Menu Diet",
      color: Color(0XFFD9E8FB),
      images: "assets/images/almond.png")
];

final reversedList = List.from(listResep.reversed);