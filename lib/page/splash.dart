import '../core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    AssetHelper.imgSplash,
                  ),
                  fit: BoxFit.cover)),
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetHelper.imgOjk, height: 25),
                    Image.asset(AssetHelper.imgLPS, height: 25)
                  ],
                ),
                hbox(10),
                textInterCenter('powered by BANK\n2025', FontWeight.w400, 12)
              ],
            ),
          )),
    );
  }
}
