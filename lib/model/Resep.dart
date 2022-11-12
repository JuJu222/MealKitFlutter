import 'dart:ui';

class Resep {
  String? image;
  String? menuName;
  String? menuPortion;
  String? menuPrice;
  String? menuPreference;
  String? menuDescription;
  String? menuDuration;
  List<String>? menuIngredients;
  List<String>? menuTools;
  String? menuReview;
  List<String>? menuProcedure;

  Resep({
    required this.image,
    required this.menuName,
    required this.menuPortion,
    required this.menuPrice,
    required this.menuDuration,
    required this.menuPreference,
    required this.menuDescription,
    required this.menuIngredients,
    required this.menuTools,
    required this.menuReview,
    required this.menuProcedure,
  });
}

List<Resep> listResep = [
  Resep(
      image: 'assets/images/foods/imagefood1.png',
      menuName: 'Grilled Salmon',
      menuPortion: '2 Porsi',
      menuPrice: 'Rp40.000',
      menuPreference: 'Daging dan Sayur',
      menuDuration: '40 min',
      menuDescription:
          'Di samping menjadi salah satu sumber protein yang berkualitas tinggi, ikan salmon juga kaya akan asam lemak omega-3. Asam lemak omega-3 sangat berguna bagi kesehatan jantung, otak, dan organ tubuh lainnya. Selain itu rasanya lezat dan mudah diolah.',
      menuIngredients: [
        '4 potong (@ 200 g) fillet ikan salmon',
        '1 sdt garam',
        '1 sdt merica hitam butiran, gerus kasar',
        '1 sdt merica hitam butiran, gerus kasar',
        '2 sdm minyak zaitun',
        '2 sdm mentega',
        '4 siung bawang putih, iris tips',
        '4 sdm air jeruk lemon'
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur'],
      menuReview: '4,8',
      menuProcedure: ['1. Cuci Semua Sayur', '']),
];
