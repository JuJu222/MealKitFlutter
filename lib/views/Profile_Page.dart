part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  static const pageName = "Profil";
  static final routeName = "/ProfilePage";

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil",
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Stack(children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        color: Colors.grey[300]),
                                    child: Text("KJ",
                                        style: TextStyle(
                                            fontSize: 60,
                                            color: Colors.grey[600])),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 100, left: 35),
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        border: Border.all(
                                            width: 5, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<dynamic>(
                                                builder: (context) =>
                                                    UbahProfilPage()));
                                      },
                                      icon: Icon(Icons.edit),
                                    ),
                                  ),
                                ]),
                              ),
                              Container(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Text(
                                      listProfile[0].name.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Color(0xff1C9FE2),
                                      ),
                                    ),
                                    Text(
                                      listProfile[0].email.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Color(0xFF707070),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/profil/pesanan.png',
                                            height: 25,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(3),
                                            //apply padding to all four sides
                                            child: Text(
                                              "Pesanan\nSelesai",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff1C9FE2)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            //apply padding to all four sides
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  color: Color(0xFF707070),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/profil/streak.png',
                                            height: 25,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            //apply padding to all four sides
                                            child: Text(
                                              "Streak",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff1C9FE2)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            //apply padding to all four sides
                                            child: Text(
                                              "4 minggu",
                                              style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  color: Color(0xFF707070),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/profil/pengiriman.png',
                                            height: 25,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(3),
                                            //apply padding to all four sides
                                            child: Text(
                                              "Pengiriman\nSelanjutnya",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Quicksand',
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff1C9FE2)),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(5),
                                            //apply padding to all four sides
                                            child: Text(
                                              "16 Nov",
                                              style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  color: Color(0xFF707070),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/profil/informasi.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Informasi Pengiriman",
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      )),
                                  Spacer(),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<dynamic>(
                                                builder: (context) =>
                                                    UbahInformasiPengirimanPage()));
                                      },
                                      child: SizedBox(
                                        width: 50,
                                        child: Text("Ubah",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Quicksand',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            textAlign: TextAlign.center),
                                      ))
                                ],
                              ),
                              Divider(color: Color(0xFFD9D9D9)),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/profil/preferensi.png',
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Preferensi Saya",
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      )),
                                  Spacer(),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<dynamic>(
                                                builder: (context) =>
                                                    UbahPreferensiPage()));
                                      },
                                      child: SizedBox(
                                        width: 50,
                                        child: Text("Ubah",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Quicksand',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                            textAlign: TextAlign.center),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16),
                        ),
                      ]),
                    ),
                  )),
              Expanded(
                  child: Container(
                // color: Colors.green,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(bottom: 6, left: 18, right: 18),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Ink(
                    decoration: BoxDecoration(
                        color: Color(0xFF703900),
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
                            Text("Keluar",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        ),
                      ),
                      onTap: () async {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute<dynamic>(
                        //         builder: (context) => LoginPage()));
                        setState(() {
                          // isLoading = true;
                        });
                        await Future.delayed(const Duration(seconds: 2));
                        await AuthService().signOutApp();
                        await AuthService().googleSignOutApp();
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (context) {
                            Fluttertoast.showToast(
                                msg: "Berhasil Keluar dari Akun",
                                toastLength: Toast.LENGTH_SHORT,
                                backgroundColor: Color(0xFF703900),
                                textColor: Colors.white,
                                fontSize: 14.0);
                            return const LoginPage();
                          },
                        ), (route) => false);
                      },
                    ),
                  ),
                ]),
              ))
            ]),
      ),
    );
  }
}
