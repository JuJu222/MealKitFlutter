part of 'pages.dart';

class InformasiPengirimanPage extends StatefulWidget {
  static const routeName = "/InformasiPengiriman";
  const InformasiPengirimanPage({super.key});

  @override
  State<InformasiPengirimanPage> createState() =>
      _InformasiPengirimanPageState();
}

class _InformasiPengirimanPageState extends State<InformasiPengirimanPage> {
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

  TextEditingController alamatController = TextEditingController(text: 'Jl. CitraLand CBD Boulevard');
  TextEditingController kelurahanController = TextEditingController(text: 'Lidah Kulon');
  TextEditingController kecamatanController = TextEditingController(text: 'Sambikerep');
  TextEditingController kotaController = TextEditingController(text: 'Surabaya');
  TextEditingController provinsiController = TextEditingController(text: 'Jawa Timur');
  TextEditingController teleponController = TextEditingController(text: '0812345678901');
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informasi Pengiriman",
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black
            )),
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
                                      Text("Selanjutnya",
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
                                  Navigator.push(
                                      context, AnimationPageRoute2());
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

class AnimationPageRoute2 extends CupertinoPageRoute {
  AnimationPageRoute2()
      : super(builder: (BuildContext context) => new PreferensiPage());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new PreferensiPage());
  }
}
