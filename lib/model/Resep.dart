import 'dart:ui';

class Resep {
  int? menuId;
  String? menuImage;
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
    required this.menuId,
    required this.menuImage,
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
      menuId: 0,
      menuImage: 'assets/images/foods/imagefood1.png',
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
  // Resep(
  //     menuId: 1,
  //     menuImage: 'assets/images/foods/imagefood1.png',
  //     menuName: 'Risotto Ayam dan Asparagus',
  //     menuPortion: '2 Porsi',
  //     menuPrice: 'Rp30.000',
  //     menuPreference: 'Daging dan Sayur',
  //     menuDuration: '25 min',
  //     menuDescription:
  //         'Di samping menjadi salah satu sumber protein yang berkualitas tinggi, ikan salmon juga kaya akan asam lemak omega-3. Asam lemak omega-3 sangat berguna bagi kesehatan jantung, otak, dan organ tubuh lainnya. Selain itu rasanya lezat dan mudah diolah.',
  //     menuIngredients: [
  //       '2 sdm minyak zaitun',
  //       '1 batang daun bawang, iris halus',
  //       '2 buah bacon, potong dadu',
  //       '2 cangkir nasi Arborio',
  //       '2 fillet ayam tanpa kulit, potong kecil-kecil',
  //       '5 cangkir stok berkualitas baik',
  //       '2 sdm Mentega Asli Western Star',
  //       'Seperempat cangkir parut Perfect',
  //       'bumbu dari 1 lemon',
  //       'Garam dan merica'
  //     ],
  //     menuTools: ['Pisau', 'Wajan datar', 'Telenan'],
  //     menuReview: '4,8',
  //     menuProcedure: ['1. Cuci Semua Sayur', '']),
];
