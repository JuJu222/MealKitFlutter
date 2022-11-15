import 'dart:ui';

class Preferensi {
  String? nama;
  Color? color;

  String? images;
  Preferensi({required this.nama, required this.color, required this.images});
}

List<Preferensi> listPreferensi = [
  Preferensi(
      nama: "Daging & Sayur",
      color: Color(0XFFFCEAB2),
      images: "assets/images/dagingsayur.png"),
  Preferensi(
      nama: "Sayur",
      color: Color(0XFFF8D1B7),
      images: "assets/images/salad.png"),
  Preferensi(
      nama: "Produk Susu",
      color: Color(0XFFF6D5FB),
      images: "assets/images/produksusu.png"),
  Preferensi(
      nama: "Cepat & Mudah",
      color: Color(0XFFD2F5FF),
      images: "assets/images/fastfood.png"),
  Preferensi(
      nama: "Roti", color: Color(0XFFC6F0D7), images: "assets/images/roti.png"),
  Preferensi(
      nama: "Protein Tinggi",
      color: Color(0XFFF8CDD5),
      images: "assets/images/meat01.png"),
  Preferensi(
      nama: "Untuk Diabetes",
      color: Color(0xffDFFCFB),
      images: "assets/images/diabetes.png"),
  Preferensi(
      nama: "Untuk Hipertensi",
      color: Color(0XFFD9E8FB),
      images: "assets/images/hipertensi.png")
];

final reversedList = List.from(listPreferensi.reversed);
