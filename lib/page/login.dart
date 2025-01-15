import 'package:evoteks/core.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [rowFlag(), rowJackCard()],
                ),
                cardFoto(),
                buttonGuest1(),
                hbox(10),
                buttonGuest2(),
                hbox(50),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    AssetHelper.imgHelp,
                    height: 100,
                    width: 100,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
