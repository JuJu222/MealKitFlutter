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
          Icons.list,
        ),
        label: MenuPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.calendar_month), label: RencanaPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.note_alt), label: PesananPage.pageName),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), label: ProfilePage.pageName),
  ];

  List<Widget> _listPageWidget = [
    BerandaPage(),
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
