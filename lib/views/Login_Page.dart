part of 'pages.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/LoginPage";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  bool _passwordVisible = false;
  bool isLoading = false;
  String error = "";
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  void _scaleDialog() {
    showGeneralDialog(
      context: context,
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: _dialog(ctx),
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }

  Widget _dialog(BuildContext context) {
    return AlertDialog(
      title: Text("Pemberitahuan!"),
      content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [Text("Email/Password tidak ditemukan")]),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      actions: <Widget>[
        Center(
          child: TextButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text("Kembali")),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return (isLoading)
        ? const Loading()
        : Scaffold(
            body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(21),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: SingleChildScrollView(
                        child: Container(
                          // color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Text("Login ke",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Masuk ke dalam akun yang telah anda daftarkan",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                color: Color(0xff171930)
                                                    .withOpacity(0.5)),
                                      ),
                                      Text(
                                        "sebelumnya di Kukoki",
                                        style: Theme.of(context)!
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                                color: Color(0xff171930)
                                                    .withOpacity(0.5)),
                                      )
                                    ]),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Container(
                                // color: Colors.amber,
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
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
                                          keyboardType: TextInputType.emailAddress,
                                          controller: controllerEmail,
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
                                          keyboardType: TextInputType.visiblePassword,
                                          obscureText: !_passwordVisible,
                                          autofocus: false,
                                          controller: controllerPassword,
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
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
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
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Divider(
                                            height: 2,
                                            thickness: 0.5,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "atau",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2,
                                        ),
                                      )),
                                      Expanded(
                                          flex: 2,
                                          child: Divider(
                                            height: 2,
                                            thickness: 0.5,
                                            color: Colors.black,
                                          )),
                                    ]),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () async {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  await Future.delayed(
                                      const Duration(seconds: 2));
                                  dynamic resultWithGoogle =
                                      await _auth.signInWithGoogle();
                                  if (resultWithGoogle is String) {
                                    //set state used to change variable
                                    await Future.delayed(
                                        const Duration(seconds: 3));
                                    setState(() {
                                      error = resultWithGoogle;
                                      isLoading = false;
                                    });
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(9),
                                  height: 46,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          "assets/images/loginGooglePNG.png")
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 0.1,
                                            blurRadius: 0.1,
                                            offset: Offset(0, 0.8))
                                      ]),
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return ResetPasswordPage();
                                        },
                                      ));
                                    },
                                    child: Text(
                                      "Lupa password?",
                                      style: Theme.of(context)!
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              color: Color(0xff171930)
                                                  .withOpacity(0.5),
                                              decoration:
                                                  TextDecoration.underline),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              InkWell(
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 54.08,
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 0.1,
                                            blurRadius: 0.1,
                                            offset: Offset(0, 0.8))
                                      ]),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Masuk",
                                        style: TextStyle(
                                            fontFamily: "Quicksand",
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    await Future.delayed(
                                        const Duration(seconds: 2));
                                    //we get the firebaseuser object and redirects to the homepage
                                    dynamic resultWithSignIn =
                                        await _auth.signInWithEmailAndPassword(
                                            controllerEmail.text,
                                            controllerPassword.text);
                                    //we store in "result", so we can see the error. Otherwise it just changes
                                    //the value of CustomUser stream from returning a user object into null
                                    if (resultWithSignIn is String) {
                                      //set state used to change variable
                                      await Future.delayed(
                                          const Duration(seconds: 3));
                                      setState(() {
                                        error = resultWithSignIn;
                                        isLoading = false;
                                      });

                                      return _scaleDialog();
                                    }
                                  }
                                },
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Belum mempunyai akun? ",
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Color(0xff171930)
                                                .withOpacity(0.5)),
                                  ),
                                  InkWell(
                                    onTap: () => Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return RegisterPage();
                                    }))),
                                    child: Ink(
                                      child: Container(
                                        child: Text(
                                          "Daftar di sini",
                                          style: Theme.of(context)!
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  color: Color(0xff171930)
                                                      .withOpacity(0.5),
                                                  decoration:
                                                      TextDecoration.underline),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ));
  }
}
