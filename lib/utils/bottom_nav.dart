import 'package:evoteks/core.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: widgetOptions.elementAt(selectedIndex),
        floatingActionButton: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 5),
            ],
          ),
          child: Image.asset(AssetHelper.icQRIS),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            child: BottomNavigationBar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage(
                        AssetHelper.icBtmHome,
                      ),
                      size: 20),
                  label: '',
                  activeIcon: ImageIcon(
                      AssetImage(
                        AssetHelper.icBtmHome,
                      ),
                      size: 20),
                ),
                BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage(AssetHelper.icBtmProfile), size: 20),
                  label: '',
                  activeIcon:
                      ImageIcon(AssetImage(AssetHelper.icBtmProfile), size: 20),
                ),
              ],
              currentIndex: selectedIndex,
              fixedColor: const Color.fromARGB(255, 19, 22, 24),
              onTap: onItemTapped,
              selectedLabelStyle:
                  TextStyle(color: HexColor('#FF4747'), fontSize: 14),
              unselectedFontSize: 14,
              selectedIconTheme: IconThemeData(color: HexColor('#FF4747')),
              unselectedIconTheme: IconThemeData(color: HexColor('#FC9842')),
              unselectedItemColor: Colors.blueGrey,
              unselectedLabelStyle:
                  TextStyle(fontSize: 14, color: HexColor('#FC9842')),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
