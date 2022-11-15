part of 'pages.dart';

class UbahProfilPage extends StatefulWidget {
  static final routeName = "/UbahProfilePage";
  const UbahProfilPage({Key? key}) : super(key: key);

  @override
  _UbahProfilPageState createState() => _UbahProfilPageState();
}

class _UbahProfilPageState extends State<UbahProfilPage> {
  String? name = listProfile[0].name;
  String? email = listProfile[0].email;

  TextEditingController nameController =
      TextEditingController(text: listProfile[0].name);
  TextEditingController emailController =
      TextEditingController(text: listProfile[0].email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ubah Profil",
              style: Theme.of(context)!
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500)),
          centerTitle: true,
          iconTheme: IconThemeData(color: primaryColor),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 7),
                            child: Text(
                              "Nama",
                              style: Theme.of(context)!
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color:
                                          Color(0xff171930).withOpacity(0.5)),
                            ),
                          ),
                          TextFormField(
                            controller: nameController,
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
                            onChanged: ((value) {
                              setState(() {
                                name = value.toString();
                              });
                            }),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10, bottom: 7),
                            child: Text(
                              "Email",
                              style: Theme.of(context)!
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                      color:
                                          Color(0xff171930).withOpacity(0.5)),
                            ),
                          ),
                          TextFormField(
                            controller: emailController,
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
                            onChanged: ((value) {
                              setState(() {
                                email = value.toString();
                              });
                            }),
                          ),
                        ]),
                  ),
                ),
                Flexible(
                  child: Ink(
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
                        listProfile[0].name = name;
                        listProfile[0].email = email;
                        Fluttertoast.showToast(
                            msg: "Profil Berhasil Disimpan",
                            toastLength: Toast.LENGTH_SHORT,
                            backgroundColor: Color(0xEE1C9FE2),
                            textColor: Colors.white,
                            fontSize: 14.0);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
