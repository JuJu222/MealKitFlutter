part of 'pages.dart';

class MenuPage extends StatefulWidget {
  static const pageName = "Beranda";
  MenuPage({
    super.key,
  });

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return (isLoading)
        ? const Loading()
        : Scaffold(
            appBar: AppBar(title: Text("MenuPage")),
            body: Center(
              child: ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });

                    await Future.delayed(const Duration(seconds: 2));
                    await AuthService().signOutApp();
                    await AuthService().googleSignOutApp();
                  },
                  child: const Text("Sign Out")),
            ),
          );
  }
}
