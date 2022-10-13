import 'dart:ui';

class Resep {
  String? nama;
  Color? color;

  Resep({required this.nama, required this.color});
}

var listResep = [
  Resep(nama: "Daging & Sayur", color: Color(0XFFFCEAB2)),
  Resep(nama: "Sayur", color: Color(0XFFF8D1B7)),
  Resep(nama: "Produk Susu", color: Color(0XFFF6D5FB)),
  Resep(nama: "Cepat & Mudah", color: Color(0XFFD2F5FF)),
  Resep(nama: "Roti", color: Color(0XFFC6F0D7)),
  Resep(nama: "Protein Tinggi", color: Color(0XFFF8CDD5)),
  Resep(nama: "Makanan Laut", color: Color(0xffDFFCFB)),
  Resep(nama: "Menu Diet", color: Color(0XFFD9E8FB))
];
