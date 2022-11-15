part of 'pages.dart';

class Onboarding extends StatelessWidget {
  static const routeName = "/Onboarding";
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg-onboarding.png"),
                  fit: BoxFit.cover)),
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              // color: Colors.amber,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(children: [
                        Container(
                          // color: Colors.red,
                          width: double.infinity,
                          height: 174,
                          child: Image.asset(
                            "assets/images/img-onboarding.png",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Masak Tanpa Ribet",
                              style: TextStyle(
                                  fontFamily: "Quicksand",
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pesan meal kit dengan resep yang mudah dan",
                              style: TextStyle(
                                  fontFamily: "Quicksand",
                                  color: Colors.black,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "bahan-bahan segar yang diantar langsung ke",
                              style: TextStyle(
                                  fontFamily: "Quicksand",
                                  color: Colors.black,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "rumah anda ",
                              style: TextStyle(
                                  fontFamily: "Quicksand",
                                  color: Colors.black,
                                  fontSize: 12),
                            )
                          ],
                        )
                      ]),
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
                              Text("Mulai",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, LoginPage.routeName, (route) => false);
                        },
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
