part of 'pages.dart';

class HomePage extends StatefulWidget {
  static final routeName = "/HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavindex = 0;

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.flatware_outlined,
        ),
        label: MenuPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.timeline), label: RencanaPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: PesananPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: ProfilePage.pageName),
  ];

  List<Widget> _listPageWidget = [
    MenuPage(),
    RencanaPage(),
    PesananPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPageWidget[_bottomNavindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomNavindex,
        items: _bottomNavBarItems,
        onTap: (selected) {
          setState(() {
            _bottomNavindex = selected;
          });
        },
      ),
    );
  }
}
