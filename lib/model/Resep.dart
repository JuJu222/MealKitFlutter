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
  Resep(
      menuId: 1,
      menuImage: 'assets/images/foods/dagingdansayur1.png',
      menuName: 'Tumis Daging dan Sayur',
      menuPortion: '2 Porsi',
      menuPrice: 'Rp36.000',
      menuPreference: 'Daging dan Sayur',
      menuDuration: '42 min',
      menuDescription:
          'Ingin membuat menu makan dengan bahan daging sapi? Tumis sayur daging sapi ini mungkin bisa dicoba untuk menu hidangan makan bersama keluarga.',
      menuIngredients: [
        '1/2 kg daging sapi',
        '1 ikat sawi',
        '2 buah wortel',
        '1/4 bagian kubis',
        '1/4 bagian brokoli',
        '1/4 bagian kol',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur'],
      menuReview: '4,1',
      menuProcedure: [
        '1. Cuci bersih daging, dan rebus hingga empuk.',
        '2. Jika daging sudah matang, potong daging sesuai selera. Jangan terlalu tebal ataupun telalu tipis.',
        '3. Kupas, wortel dan potong melingkar. Potong-potong pula kubis dan sawi sesuai selera.',
        '4. Potong tipis bawang merah, bawang putih, cabai.',
        '5. Tumis semua bumbu dengan minyak secukupnya, gunakan api sedang.',
        '6. Jika bumbu sudah beraroma masukkan 300 ml air, daging, dan sayuran. Biarkan kuah meresap ke dalam daging.',
        '7. Bila sudah matang, matikan kompor dan sajikan tumis sayur daging sapi.'
      ]),
  Resep(
      menuId: 2,
      menuImage: 'assets/images/foods/dagingdansayur2.png',
      menuName: 'Teriyaki',
      menuPortion: '2 Porsi',
      menuPrice: 'Rp38.000',
      menuPreference: 'Daging dan Sayur',
      menuDuration: '30 min',
      menuDescription:
          'Hidangan ini terbuat dari daging yang direndam dengan saus teriyaki, kecap asin, kecap manis, dan bahan-bahan lainnya. Saus teriyaki memiliki cita rasa yang lezat, perpaduan rasa asin dan manis. Di Jepang, saus teriyaki sendiri sebenarnya mengandung sake.',
      menuIngredients: [
        'Iris tipis daging sapi 200 gram',
        'Biji wijen disangrai 2 sdm ',
        'Bawang bombay iris 1/2 butir',
        'Daun bawang, iris halus - 1 batang',
        'Margarin / mentega - 2 sdm',
        'Bawang putih, parut - 2 siung',
        'Saus teriyaki - 2 sdm',
        'Kecap asin - 1 sdm',
        'Kecap manis - 1 sdm',
        'Saus tiram - 1 sdm',
        'Lada hitam - 1 sdt',
        'Gula - 1 sdt',
        'Kaldu bubuk - 1 sdt',
        'Garam - 1/2 sdt',
        'Saus tomat - 1 sdt',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci', 'Sendok'],
      menuReview: '4,2',
      menuProcedure: [
        '1. Campur rata semua bahan bumbu rendaman.',
        '2. Masukkan daging dalam bumbu rendaman, aduk hingga merata. Diamkan dalam kulkas selama 1 malam. Sisihkan.',
        '3. Panaskan margarin. Tumis bawang bombay hingga wangi.',
        '4. Masukkan daging sambil diaduk-aduk cepat hingga berubah warna. Angkat.',
        '5. Taburi daging dengan biji wijen dan daun bawang.',
        '6. Siap disajikan.',
      ]),
  Resep(
      menuId: 3,
      menuImage: 'assets/images/foods/dagingdansayur3.png',
      menuName: 'Lapis Daging Sapi',
      menuPortion: '2 Porsi',
      menuPrice: 'Rp46.000',
      menuPreference: 'Daging dan Sayur',
      menuDuration: '50 min',
      menuDescription:
          'Daging lapis adalah sajian makanan yang diadaptasi dari kuliner Belanda manis dan gurih. Hidangan ini sangat cocok disantap dengan nasi hangat sebagai menu harian, baik makan siang atau makan malam. Bagi Anda pecinta olahan daging, tentu menu lezat yang satu ini wajib Anda coba.',
      menuIngredients: [
        'Iris tipis daging sapi 200 gram',
        'Biji wijen disangrai 2 sdm ',
        'Bawang bombay iris 1/2 butir',
        'Daun bawang, iris halus - 1 batang',
        'Margarin / mentega - 2 sdm',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,9',
      menuProcedure: [
        '1. Iris pipih daging dengan memotong serat.',
        '2. Campur bumbu halus dan daging menjadi satu.',
        '3. Panaskan minyak sedikit, tumis daging sampai berubah warna, tambahkan air.',
        '4. Masukkan bumbu lengkuas, batang serai, daun jeruk, kayu manis, telur dan kecap.',
        '5. Masak sampai daging empuk, agar daging lebih empuk dan bumbu meresap.',
        '6. Tunggu sampai air berkurang. Tambahkan gula dan garam.',
        '7. Koreksi rasa, matikan api. Siap disajikan.',
      ]),
  Resep(
      menuId: 4,
      menuImage: 'assets/images/foods/dagingdansayur4.png',
      menuName: 'Daging Sapi Asam Manis',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp22.000',
      menuPreference: 'Daging dan Sayur',
      menuDuration: '35 min',
      menuDescription:
          'Ketika persediaan daging kurban melimpah, ada banyak cara membuatnya menjadi masakan spesial di Hari Raya Idul Adha. Satu di antara resep yang direkomendasikan yaitu membuatnya menjadi masakan daging sapi asam manis.',
      menuIngredients: [
        '500 gram daging sapibagian sengkel potong-potong',
        '500 ml santan kental dicampur dengan air 1 liter',
        '3 keping gula merah',
        '10 ml air asam jawa',
        '1 sdt bumbu kaldu jamur',
        '2 batang serai',
        '5 lembar daun salam',
        '3 ruas jari lengkuas, geprek',
        '3 butir kemiri',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,2',
      menuProcedure: [
        '1. Haluskan bawang merah, bawang putih, kemiri, dan ketumbar.',
        '2. Rebus santan sampai mendidih dan masukkan bumbu halus, daging, parutan gula merah, air asam jawa, kaldu jamur, dan aduk rata. Masukkan serai, daun salam, dan lengkuas.',
        '3. Masak terus dalam api kecil sambil diaduk perlahan, masak terus sampai cairan menyusut, koreksi rasa.',
        '4. Beri taburan bawang goreng, nikmati selagi hangat.',
      ]),
  Resep(
      menuId: 5,
      menuImage: 'assets/images/foods/dagingdansayur5.png',
      menuName: 'Bistik Sapi',
      menuPortion: '2 Porsi',
      menuPrice: 'Rp42.000',
      menuPreference: 'Daging dan Sayur',
      menuDuration: '40 min',
      menuDescription:
          'Olahan daging sapi saus asam manis sepertinya sudah terdengar biasa, tapi beda halnya bila disajikan di dalam kelapa muda. My Thai, restoran masakan Thailand di Bogor, menyajikan daging sapi saus asam manis di dalam batok kelapa. Olahan tersebut dinamakan Sapi dalam Kelapa.',
      menuIngredients: [
        '5 siung bawang putih',
        '1/2 sdt lada bubuk',
        '500 gram daging sapibagian sengkel potong-potong',
        '500 ml santan kental dicampur dengan air 1 liter',
        '3 keping gula merah',
        '10 ml air asam jawa',
        '1 sdt bumbu kaldu jamur',
        '2 batang serai',
        '5 lembar daun salam',
        '3 ruas jari lengkuas, geprek',
        '3 butir kemiri',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,4',
      menuProcedure: [
        '1. Rebus daging masak agak empuk. Sisihkan air kaldunya, kemudian potong-potong daging sesuai selera.',
        '2. Tumis bawang bombai, kemudian masukkan bumbu halus. Masak hingga tanak.',
        '3. Masukkan potongan daging, aduk. Tambahkan kecap manis, saus tiram, kecap asin, saus tomat dan aduk rata.',
        '4. Masukkan air kaldu masak hingga air mengental dan daging empuk.',
        '5. Hidangkan.',
      ]),
  //Sayur
  Resep(
      menuId: 6,
      menuImage: 'assets/images/foods/sayur0.png',
      menuName: 'Sayur Bobor Bayam',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp22.000',
      menuPreference: 'Sayur',
      menuDuration: '30 min',
      menuDescription:
          'Sayur bayam selalu identik dengan sayur bening. Namun, jika kamu bosan dengan sayur bening, bayam bisa diolah jadi bobor bayam, lho.',
      menuIngredients: [
        '2 ikat bayam (siangi)',
        '500 ml santan cair ',
        '400 ml santan kental',
        '100 gram kecambah kedelai',
        'Garam secukupnya',
        'Gula secukupnya',
        '5 siung bawang putih',
        '2 siung bawang merah',
        'Merica secukupnya'
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,4',
      menuProcedure: [
        '1. Siapkan sayur bayam yang sudah disiangi. Cuci lalu tiriskan. Begitu juga dengan kecambah kedelai.',
        '2. Panaskan wajan, tumis bawang putih dan bawang merah hingga aromanya harum. Jika sudah, tambahkan santan cair. Masak hingga hangat mendekati mendidih.',
        '3. Masukkan semua bumbu halus dan garam.',
        '4. Masukkan sayur bayam dan tunggu hingga agak layu. Tambahkan kecambah dan aduk hingga rata. Masak hingga semua bahan empuk dan mendidih.',
        '5. Tambahkan santan kental dan aduk hingga rata. Tambahkan gula dan penyedap rasa agar sayur bobor makin lezat serta nikmat.',
        '6. Biarkan hingga mendidih lalu angkat dan sajikan selagi hangat.',
      ]),
  Resep(
      menuId: 7,
      menuImage: 'assets/images/foods/sayur1.png',
      menuName: 'Tumis Kankung',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp26.000',
      menuPreference: 'Sayur',
      menuDuration: '20 min',
      menuDescription:
          'Kangkung tumis atau kadang disebut tumis kangkung atau cah kangkung adalah hidangan sayur tumis yang lazim ditemukan dalam hidangan Asia.',
      menuIngredients: [
        '3 siung bawang putih, iris tipis',
        '2 siung bawang merah, iris tipis',
        '5 buah cabai rawit, iris serong',
        '3 buah cabai keriting, iris serong',
        'Garam secukupnya',
        'Gula secukupnya',
        'Kaldu jamur bubuk, secukupnya',
        'Penyedap masakan, secukupnya',
        'Merica secukupnya',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,6',
      menuProcedure: [
        '1. Siapkan semua bahan, panaskan minyak goreng. ',
        '2. Tumis bawang putih dan bawang merah hingga harum.',
        '3. Masukkan cabai rawit dan cabai keriting ke dalam tumisan bawang, aduk rata. Tumis hingga semua bumbu layu. ',
        '4. Masukkan sayur kangkung ke dalam wajan, aduk rata dan masak dengan api besar sambil terus diaduk. ',
        '5. Tambahkan garam, penyedap dan kaldu jamur bubuk. Aduk rata. ',
        '6. Tambahkan air panas sedikit saja, aduk rata.',
        '7. Koreksi rasa dan angkat tumis kangkung yang telah matang. Sajikan selagi masih hangat.',
      ]),
  Resep(
      menuId: 8,
      menuImage: 'assets/images/foods/sayur3.png',
      menuName: 'Sayur Urap',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp26.000',
      menuPreference: 'Sayur',
      menuDuration: '20 min',
      menuDescription:
          'Kangkung tumis atau kadang disebut tumis kangkung atau cah kangkung adalah hidangan sayur tumis yang lazim ditemukan dalam hidangan Asia.',
      menuIngredients: [
        '1 ikat kangkung',
        '1 ikat kacang panjang',
        '1 buah wortel',
        '1 genggam kecambah',
        '3 buah cabai merah',
        '3 buah cabai rawit',
        '1 ruas kencur',
        '1 cm terasi',
        '3 lembar daun jeruk',
        '2 siung bawang putih',
        '200 gr kepala parut',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,4',
      menuProcedure: [
        '1. Haluskan bumbu kelapa parut, campur dengan kelapa parut hingga rata. Bungkus dengan daun pisang. Kukus hingga matang atau kurang lebih 20 menit. ',
        '2. Potong-potong sayur dan rebus hingga matang, sisihkan.',
        '3. Masukkan cabai rawit dan cabai keriting ke dalam tumisan bawang, aduk rata. Tumis hingga semua bumbu layu. ',
        '4. Masukkan sayur kangkung ke dalam wajan, aduk rata dan masak dengan api besar sambil terus diaduk. ',
        '5. Campur kelapa parut bumbu dengan sayuran yang sudah direbus. ',
        '6. Sayur urap-urap siap dinikmati dengan ikan asin dan nasi hangat.',
        '7. Sajikan selagi masih hangat.',
      ]),
  Resep(
      menuId: 9,
      menuImage: 'assets/images/foods/sayur2.png',
      menuName: 'Bening Kacang Panjang',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp24.000',
      menuPreference: 'Sayur',
      menuDuration: '30 min',
      menuDescription:
          'Resep Sayur bening kacang panjang mudah dan praktis. Buat kalian yang gak mau ribet dengan dunia permasakan.',
      menuIngredients: [
        '10 buah kacang panjang (potong panjang kira-kira 4 cm)',
        '50 gram kecambah kedelai (siangi)',
        '1 buah jagung muda (potong-potong sesuai selera)',
        '5 lembar daun kemangi',
        '3 cm rempah kunci (memarkan)',
        '5 siung bawang merah (iris tipis)',
        '3 siung bawang putih (memarkan)',
        'Gula pasir (secukupnya)',
        'Garam (secukupnya)',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,6',
      menuProcedure: [
        '1. Panaskan minyak (kira-kira 1 sdm) di wajan. ',
        '2. Tumis bawang merah dan bawang putih hingga aromanya harum. ',
        '3. Tambahkan air sesuai selera dan  masukkan kacang panjang serta kecambah kedelai.',
        '4. Masukkan pula garam, rempah kunci, daun kemangi dan jagung muda.',
        '5. Masak hingga semua bahan matang dan empuk. Tambahkan gula dan kaldu ayam bubuk agar rasa sayur bening makin gurih. ',
        '6. Jangan lupa untuk memasukkan buah tomat agar sayur bening ini makin segar.',
        '7. Masak hingga semua bahan masakan matang dan mendidih. ',
        '8. Jika sudah matang, angkat lalu sajikan.',
      ]),
  Resep(
      menuId: 10,
      menuImage: 'assets/images/foods/sayur4.png',
      menuName: 'Tumis Sawi Putih',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp26.000',
      menuPreference: 'Sayur',
      menuDuration: '20 min',
      menuDescription:
          'Kangkung tumis atau kadang disebut tumis kangkung atau cah kangkung adalah hidangan sayur tumis yang lazim ditemukan dalam hidangan Asia.',
      menuIngredients: [
        '3 siung bawang putih, iris tipis',
        '2 siung bawang merah, iris tipis',
        '5 buah cabai rawit, iris serong',
        '3 buah cabai keriting, iris serong',
        'Garam secukupnya',
        'Gula secukupnya',
        'Kaldu jamur bubuk, secukupnya',
        'Penyedap masakan, secukupnya',
        'Merica secukupnya',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,6',
      menuProcedure: [
        '1. Siapkan semua bahan, panaskan minyak goreng. ',
        '2. Tumis bawang putih dan bawang merah hingga harum.',
        '3. Masukkan cabai rawit dan cabai keriting ke dalam tumisan bawang, aduk rata. Tumis hingga semua bumbu layu. ',
        '4. Masukkan sayur kangkung ke dalam wajan, aduk rata dan masak dengan api besar sambil terus diaduk. ',
        '5. Tambahkan garam, penyedap dan kaldu jamur bubuk. Aduk rata. ',
        '6. Tambahkan air panas sedikit saja, aduk rata.',
        '7. Koreksi rasa dan angkat tumis kangkung yang telah matang. Sajikan selagi masih hangat.',
      ]),
  Resep(
      menuId: 11,
      menuImage: 'assets/images/foods/sayur5.png',
      menuName: 'Tumis Kankung',
      menuPortion: '1 Porsi',
      menuPrice: 'Rp26.000',
      menuPreference: 'Sayur',
      menuDuration: '20 min',
      menuDescription:
          'Kangkung tumis atau kadang disebut tumis kangkung atau cah kangkung adalah hidangan sayur tumis yang lazim ditemukan dalam hidangan Asia.',
      menuIngredients: [
        '3 siung bawang putih, iris tipis',
        '2 siung bawang merah, iris tipis',
        '5 buah cabai rawit, iris serong',
        '3 buah cabai keriting, iris serong',
        'Garam secukupnya',
        'Gula secukupnya',
        'Kaldu jamur bubuk, secukupnya',
        'Penyedap masakan, secukupnya',
        'Merica secukupnya',
      ],
      menuTools: ['Pisau', 'Wajan datar', 'Gelas ukur', 'Panci'],
      menuReview: '4,6',
      menuProcedure: [
        '1. Siapkan semua bahan, panaskan minyak goreng. ',
        '2. Tumis bawang putih dan bawang merah hingga harum.',
        '3. Masukkan cabai rawit dan cabai keriting ke dalam tumisan bawang, aduk rata. Tumis hingga semua bumbu layu. ',
        '4. Masukkan sayur kangkung ke dalam wajan, aduk rata dan masak dengan api besar sambil terus diaduk. ',
        '5. Tambahkan garam, penyedap dan kaldu jamur bubuk. Aduk rata. ',
        '6. Tambahkan air panas sedikit saja, aduk rata.',
        '7. Koreksi rasa dan angkat tumis kangkung yang telah matang. Sajikan selagi masih hangat.',
      ]),
];
