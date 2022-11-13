part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = "/registerpage";
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController controller = TextEditingController();
  bool _passwordVisible = false;
  // void initState() {
  //   super.initState();
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ]);
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: primaryColor),
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(21),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Daftar ke",
                                        style: TextStyle(
                                            fontFamily: "Quicksand",
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Kukoki",
                                      style: TextStyle(
                                          fontFamily: "Quicksand",
                                          fontSize: 27,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              // color: Colors.yellow,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Daftar akun untuk menggunakan seluruh fitur dari",
                                      style: Theme.of(context)!
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Color(0xff171930)
                                                  .withOpacity(0.5)),
                                    ),
                                    Text(
                                      "Kukoki",
                                      style: Theme.of(context)!
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Color(0xff171930)
                                                  .withOpacity(0.5)),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                                // color: Colors.amber,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, bottom: 7),
                                        child: Text(
                                          "Nama",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
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
                                          "Email",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        autofocus: false,
                                        decoration: InputDecoration(
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
                                          "Password",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5)),
                                        ),
                                      ),
                                      TextFormField(
                                        obscureText: _passwordVisible,
                                        autofocus: false,
                                        controller: controller,
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              borderSide: BorderSide.none,
                                            ),
                                            filled: true,
                                            fillColor: Colors.grey[110],
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                _passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: Colors.black,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _passwordVisible =
                                                      !_passwordVisible;
                                                });
                                              },
                                            )),
                                      ),
                                    ])),
                          ],
                        )),
                        const SizedBox(
                          height: 80,
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
                            splashColor: Colors.lightBlue,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              height: 54.08,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Selanjutnya",
                                      style: TextStyle(
                                          fontFamily: "Quicksand",
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, AnimationPageRoute());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class AnimationPageRoute extends CupertinoPageRoute {
  AnimationPageRoute()
      : super(builder: (BuildContext context) => new InformasiPengirimanPage());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(
        opacity: animation, child: new InformasiPengirimanPage());
  }
}
