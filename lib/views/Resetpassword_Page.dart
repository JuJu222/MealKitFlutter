part of "pages.dart";

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController controllerVerification = TextEditingController();
  bool isLoading = false;
  String error = "";
  final _formKey = GlobalKey<FormState>();

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          padding: const EdgeInsets.all(21),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child:
                    // color: Colors.amber,
                    // padding: const EdgeInsets.only(top: 20),
                    SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Reset Password",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Nyehaat.id",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold),
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
                                "Reset password user yang sudah didaftarkan",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5)),
                              ),
                              Text(
                                "sebelumnya di Nyehaat.id",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5)),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, bottom: 7),
                                  child: Text(
                                    "Email Verifikasi",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Color(0xff171930)
                                                .withOpacity(0.5)),
                                  ),
                                ),
                                TextFormField(
                                  autofocus: false,
                                  controller: controllerVerification,
                                  style: Theme.of(context).textTheme.subtitle2,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[110],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: 54.08,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Kirim",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2!
                                      .copyWith(color: Colors.white))
                            ],
                          ),
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
                        ),
                        onTap: () async {
                          // Navigator.of(context).pushNamedAndRemoveUntil(
                          //     HomePage.routeName, (route) => false);
                          if (_formKey.currentState!.validate()) {
                            dynamic result = await _auth
                                .resetPassword(controllerVerification.text);
                            if (result is String) {
                              //set state used to change variable
                              await Future.delayed(const Duration(seconds: 3));
                              setState(() {
                                error = result;
                              });

                              Fluttertoast.showToast(
                                  msg: error.toString(),
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Verification Email Sent",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              Navigator.pop(context);
                            }
                          }
                        },
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
