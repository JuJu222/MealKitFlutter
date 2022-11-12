class Pengiriman {
  String? address;
  String? ward;
  String? district;
  String? city;
  String? province;
  String? phone;

  Pengiriman({
    required this.address,
    required this.ward,
    required this.district,
    required this.city,
    required this.province,
    required this.phone,
  });
}

List<Pengiriman> listPengiriman = [
  Pengiriman(
    address: 'Jl. CitraLand CBD Boulevard',
    ward: 'Lidah Kulon',
    district: 'Sambikerep',
    city: 'Surabaya',
    province: 'Jawa Timur',
    phone: '0812345678901',
  )
];
