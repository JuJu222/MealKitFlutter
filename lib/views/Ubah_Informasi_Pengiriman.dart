part of 'pages.dart';

class UbahInformasiPengirimanPage extends StatefulWidget {
  static const routeName = "/UbahInformasiPengiriman";
  const UbahInformasiPengirimanPage({super.key});

  @override
  State<UbahInformasiPengirimanPage> createState() =>
      _UbahInformasiPengirimanPageState();
}

class _UbahInformasiPengirimanPageState
    extends State<UbahInformasiPengirimanPage> {
  final _keyState = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  bool? isCheckedAlamat;
  bool? isCheckedKelurahan;
  bool? isCheckedKecamatan;
  bool? isCheckedKota;
  bool? isCheckedProvinsi;
  bool? isCheckedTelepon;

  TextEditingController alamatController =
      TextEditingController(text: listPengiriman[0].address);
  TextEditingController kelurahanController =
      TextEditingController(text: listPengiriman[0].ward);
  TextEditingController kecamatanController =
      TextEditingController(text: listPengiriman[0].district);
  TextEditingController kotaController =
      TextEditingController(text: listPengiriman[0].city);
  TextEditingController provinsiController =
      TextEditingController(text: listPengiriman[0].province);
  TextEditingController teleponController =
      TextEditingController(text: listPengiriman[0].phone);
  @override
  @override
  void dispose() {
    alamatController.dispose();
    kelurahanController.dispose();
    kecamatanController.dispose();
    kotaController.dispose();
    provinsiController.dispose();
    teleponController.dispose();
    super.dispose();
  }

  String? address = listPengiriman[0].address;
  String? ward = listPengiriman[0].ward;
  String? district = listPengiriman[0].district;
  String? city = listPengiriman[0].city;
  String? province = listPengiriman[0].province;
  String? phone = listPengiriman[0].phone;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubah Informasi Pengiriman",
            style: Theme.of(context)!
                .textTheme
                .headline6!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w500)),
        centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Form(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "Alamat Pengiriman",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: alamatController,
                                        onChanged: ((value) {
                                          setState(() {
                                            if (value.toString().length < 4) {
                                              isCheckedAlamat = false;
                                            } else {
                                              isCheckedAlamat = true;
                                            }
                                            address = value.toString();
                                          });
                                        }),
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (value) {
                                          return value.toString().length < 4
                                              ? "Form tidak boleh kosong"
                                              : null;
                                        },
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          suffixIcon: isCheckedAlamat == true
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                )
                                              : null,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[110],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "Kelurahan",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: kelurahanController,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (value) {
                                          return value.toString().length < 4
                                              ? "Form tidak boleh kosong"
                                              : null;
                                        },
                                        onChanged: ((value) {
                                          setState(() {
                                            if (value.toString().length < 4) {
                                              isCheckedKelurahan = false;
                                            } else {
                                              isCheckedKelurahan = true;
                                            }
                                            ward = value.toString();
                                          });
                                        }),
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          suffixIcon: isCheckedKelurahan == true
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                )
                                              : null,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[110],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "Kecamatan",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: kecamatanController,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (value) {
                                          return value.toString().length < 4
                                              ? "Form tidak boleh kosong"
                                              : null;
                                        },
                                        onChanged: ((value) {
                                          setState(() {
                                            if (value.toString().length < 4) {
                                              isCheckedKecamatan = false;
                                            } else {
                                              isCheckedKecamatan = true;
                                            }
                                            district = value.toString();
                                          });
                                        }),
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          suffixIcon: isCheckedKecamatan == true
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                )
                                              : null,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[110],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "Kota",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: kotaController,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (value) {
                                          return value.toString().length < 4
                                              ? "Form tidak boleh kosong"
                                              : null;
                                        },
                                        onChanged: ((value) {
                                          setState(() {
                                            if (value.toString().length < 4) {
                                              isCheckedKota = false;
                                            } else {
                                              isCheckedKota = true;
                                            }
                                            city = value.toString();
                                          });
                                        }),
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          suffixIcon: isCheckedKota == true
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                )
                                              : null,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[110],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "Provinsi",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: provinsiController,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (value) {
                                          return value.toString().length < 4
                                              ? "Form tidak boleh kosong"
                                              : null;
                                        },
                                        onChanged: ((value) {
                                          setState(() {
                                            if (provinsiController.text
                                                    .toString()
                                                    .length <
                                                4) {
                                              isCheckedProvinsi = false;
                                            } else {
                                              isCheckedProvinsi = true;
                                            }
                                            province = value.toString();
                                          });
                                        }),
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          suffixIcon: isCheckedProvinsi == true
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                )
                                              : null,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[110],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "No Telepon",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: teleponController,
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        validator: (value) {
                                          return value.toString().length < 11
                                              ? "Nomor telepon tidak dalam format"
                                              : null;
                                        },
                                        onChanged: ((value) {
                                          setState(() {
                                            if (teleponController.text.length <
                                                11) {
                                              isCheckedTelepon = false;
                                            } else {
                                              isCheckedTelepon = true;
                                            }
                                            phone = value.toString();
                                          });
                                        }),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          suffixIcon: isCheckedTelepon == true
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                )
                                              : null,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey[110],
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 52,
                            ),
                            Ink(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        spreadRadius: 0.1,
                                        blurRadius: 0.1,
                                        offset: Offset(0, 0.8))
                                  ]),
                              child: InkWell(
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 54.08,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Simpan",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  listPengiriman[0].address = address;
                                  listPengiriman[0].ward = ward;
                                  listPengiriman[0].district = district;
                                  listPengiriman[0].city = city;
                                  listPengiriman[0].province = province;
                                  listPengiriman[0].phone = phone;
                                  Navigator.pop(context);
                                  Fluttertoast.showToast(
                                      msg: "Informasi Pengiriman Berhasil Disimpan",
                                      toastLength: Toast.LENGTH_SHORT,
                                      backgroundColor: Color(0xEE1C9FE2),
                                      textColor: Colors.white,
                                      fontSize: 14.0);
                                },
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
