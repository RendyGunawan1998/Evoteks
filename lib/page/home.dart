import 'package:evoteks/core.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List menuData = [
    {"name": "Explore Jakarta", "Image": AssetHelper.imgExplore},
    {"name": "Top Up JakCard", "Image": AssetHelper.imgWallet},
    {"name": "JakCard Balance", "Image": AssetHelper.imgCC},
    {"name": "Event", "Image": AssetHelper.imgEvent}
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(AssetHelper.imgAppbarLogo),
        backgroundColor: HexColor('#FE5F5F'),
        actions: [
          appbarIconButton(AssetHelper.icNote),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: appbarIconButton(AssetHelper.icNotif),
          )
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileBalance(),
              Container(
                height: Get.height * 0.15,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: menuData.length,
                    itemBuilder: (BuildContext context, int i) {
                      return menu4(menuData, i);
                    }),
              ),
              hbox(10),
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.09),
                child: Container(
                  height: Get.height * 0.15,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int i) {
                        return Container(
                          height: Get.height * 0.25,
                          width: Get.width * 0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(AssetHelper.img1),
                        );
                      }),
                ),
              ),
              miniBar(AssetHelper.icPin, "Let’s Go with Jakarta Tourist Pass",
                  "a place not to be missed"),
              hbox(4),
              Container(
                height: Get.height * 0.23,
                child: listDestination(),
              ),
              miniBar(AssetHelper.icCalender, "Events in Jakarta",
                  "don't miss the current events"),
              hbox(4),
              Container(
                height: Get.height * 0.235,
                child: Padding(
                  padding: EdgeInsets.only(left: Get.width * 0.09),
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      HexColor('#FE5F5F'),
                                      HexColor('#FC9842'),
                                      HexColor('#FFFFFF')
                                    ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Container(
                                  height: 105,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  child: Center(
                                    child: Image.asset(
                                      AssetHelper.imgVG,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                hbox(4),
                                Container(
                                  height: 20,
                                  padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            HexColor('#FE5F5F'),
                                            HexColor('#FC9842')
                                          ])),
                                  child: Center(
                                    child: textNunito('More Information',
                                        FontWeight.w400, 8, Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              hbox(8),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  AssetHelper.imgHelp,
                  height: 100,
                ),
              ),
              hbox(30),
            ],
          ),
        ),
      ),
    );
  }
}
