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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                            "Daftar ke",
                            style: Theme.of(context)!
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
                            style: Theme.of(context)!
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
                                "Daftar akun untuk menggunakan seluruh fitur dari",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5)),
                              ),
                              Text(
                                "Nyehaat.id",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                        color:
                                            Color(0xff171930).withOpacity(0.5)),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                          // color: Colors.amber,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  style: Theme.of(context)!.textTheme.subtitle2,
                                  autofocus: false,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
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
                                    "Nomor Telepon",
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Color(0xff171930)
                                                .withOpacity(0.5)),
                                  ),
                                ),
                                TextFormField(
                                  style: Theme.of(context)!.textTheme.subtitle2,
                                  autofocus: false,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
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
                                  style: Theme.of(context)!.textTheme.subtitle2,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
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
                                  style: Theme.of(context)!.textTheme.subtitle2,
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
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, bottom: 7),
                                  child: Text(
                                    "Penyakit",
                                    style: Theme.of(context)!
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            color: Color(0xff171930)
                                                .withOpacity(0.5)),
                                  ),
                                ),
                                GestureDetector(
                                    child: Container(
                                      height: 54,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Pilih Penyakit",
                                            style: Theme.of(context)!
                                                .textTheme
                                                .subtitle2!
                                                .copyWith(
                                                    color: Color(0xff171930)
                                                        .withOpacity(0.5)),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: primaryColor,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: (() {
                                      // Navigator.push(context, MaterialPageRoute(
                                      //     builder: ((context) {
                                      //   return ProfilPenyakitPage();
                                      // })));
                                    }))
                              ]))
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
