import '../core.dart';

Widget hbox(double h) {
  return SizedBox(height: h);
}

Widget wbox(double w) {
  return SizedBox(width: w);
}

textInter(String data, FontWeight fw, double fs, Color color) {
  return Text(
    data,
    style: GoogleFonts.inter(color: color, fontWeight: fw, fontSize: fs),
  );
}

textNunito(String data, FontWeight fw, double fs, Color color) {
  return Text(
    data,
    style: GoogleFonts.nunito(color: color, fontWeight: fw, fontSize: fs),
  );
}

textInterCenter(String data, FontWeight fw, double fs) {
  return Text(
    data,
    textAlign: TextAlign.center,
    style: GoogleFonts.inter(
        textStyle:
            TextStyle(color: Colors.white, fontWeight: fw, fontSize: fs)),
  );
}

rowJackCard() {
  return Container(
    width: Get.width * 0.17,
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black54,
          blurRadius: 20,
          spreadRadius: -4,
          offset: Offset(1, 10),
        )
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(AssetHelper.icCC, height: 15),
        Image.asset(AssetHelper.imgJack, height: 15, width: 25),
      ],
    ),
  );
}

rowFlag() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white.withOpacity(0.95),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black54,
          blurRadius: 20,
          spreadRadius: -4,
          offset: Offset(1, 10),
        )
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        containerFlag('ID'),
        wbox(12),
        containerFlag('US'),
      ],
    ),
  );
}

containerFlag(String code) {
  return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: CountryFlag.fromCountryCode(
        code,
        height: 20,
        width: 20,
        shape: Circle(),
      ));
}

cardFoto() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 15),
          height: Get.width * 0.675,
          width: Get.width * 0.65,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              AssetHelper.imgMonas,
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: HexColor('#FC9842'),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: textNunito(
                      'Monumen Nasional', FontWeight.w700, 12, Colors.white)),
            ],
          ),
        ),
        hbox(14),
        GradientText('Explore Jakarta with Jakarta Tourist Pass',
            style: GoogleFonts.nunito(
                textStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
            colors: [HexColor('#FE5F5F'), HexColor('#FC9842')]),
      ],
    ),
  );
}

buttonGuest2() {
  return InkWell(
    onTap: () {
      Get.offAll(() => BottomNav());
    },
    child: Container(
      padding: EdgeInsets.all(2),
      width: Get.width * 0.75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [HexColor('#FFF84B'), HexColor('#FE5F5F')])),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Center(
          child: textNunito(
              'Continue as a Guest', FontWeight.w700, 18, HexColor('#FE5F5F')),
        ),
      ),
    ),
  );
}

buttonGuest1() {
  return InkWell(
    onTap: () {
      Get.offAll(() => BottomNav());
    },
    child: Container(
      width: Get.width * 0.75,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: HexColor('#FFFF00'), width: 1),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [HexColor('#FE5F5F'), HexColor('#FC9842')])),
      child: Center(
        child: textNunito(
            'Continue as a Guest', FontWeight.w700, 18, Colors.white),
      ),
    ),
  );
}

appbarIconButton(String asset) {
  return InkWell(
    onTap: null,
    child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor('#FE5F5F'), HexColor('#FC9842')])),
        child: Center(child: Image.asset(asset))),
  );
}

menu4(List data, int i) {
  return Padding(
    padding: EdgeInsets.all(6),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [HexColor('#FFF84B'), HexColor('#FE5F5F')]),
              borderRadius: BorderRadius.circular(14)),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [HexColor('#FFE3CA'), HexColor('#FFFFFF')]),
            ),
            child: Center(
              child: Image.asset(
                data[i]['Image'],
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
        hbox(5),
        textNunito(data[i]['name'], FontWeight.w700, 10, Colors.black),
      ],
    ),
  );
}

profileBalance() {
  return Stack(
    children: [
      Container(
        height: Get.height * 0.24,
        width: Get.width,
      ),
      Container(
        padding: EdgeInsets.only(left: 14, top: 10),
        height: Get.height * 0.165,
        width: Get.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor('#FE5F5F'), HexColor('#FC9842')]),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(55),
                bottomRight: Radius.circular(55))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AssetHelper.icUser,
              height: Get.height * 0.08,
            ),
            wbox(10),
            textNunito(
                'Good morning,\nGuest', FontWeight.w700, 18, Colors.white)
          ],
        ),
      ),
      Positioned(
        top: 80,
        left: Get.width * 0.08,
        right: Get.width * 0.08,
        child: Container(
          height: Get.height * 0.115,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black38,
                spreadRadius: -4,
                offset: Offset(0, 2),
                blurRadius: 10),
          ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Container(
                height: Get.height,
                width: 15,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [HexColor('#FE5F5F'), HexColor('#FC9842')]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15))),
              ),
              Container(
                height: Get.height,
                width: Get.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 14, 12, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textNunito('Balance Account', FontWeight.w600, 12,
                              Colors.black),
                          textNunito('Rp 0', FontWeight.w800, 16, Colors.black),
                          textNunito('-', FontWeight.w600, 14, Colors.black),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Container(
                        height: Get.height * 0.06,
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  HexColor('#FE5F5F'),
                                  HexColor('#FC9842')
                                ]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: textNunito(
                              'Top Up', FontWeight.w800, 12, Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

miniBar(String image, String title1, String title2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      containerLeftMini(image),
      wbox(6),
      Container(
        width: Get.width * 0.86,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textNunito(title1, FontWeight.w700, 14, Colors.black),
                textNunito(title2, FontWeight.w400, 11, Colors.black),
                Container(
                  height: 2,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [HexColor('#FE5F5F'), HexColor('#FC9842')]),
                  ),
                )
              ],
            ),
            textNunito('View All', FontWeight.w400, 12, Colors.black)
          ],
        ),
      )
    ],
  );
}

containerLeftMini(String image) {
  return Container(
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
        color: HexColor('#F2C94C'),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [HexColor('#FE5F5F'), HexColor('#FC9842')]),
      ),
      child: Center(
        child: Image.asset(
          image,
          height: 15,
          width: 15,
        ),
      ),
    ),
  );
}

listDestination() {
  return Padding(
    padding: EdgeInsets.only(left: Get.width * 0.09),
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: Get.width * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Image.asset(
                    AssetHelper.imgAncol,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 6, bottom: 8),
                  width: Get.width * 0.25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 20,
                          spreadRadius: -4,
                          offset: Offset(1, 10),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      hbox(4),
                      Center(
                        child: textNunito("Ancol Entrance Gate",
                            FontWeight.bold, 8, Colors.black),
                      ),
                      hbox(4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
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
                              child: textNunito(
                                  'Detail', FontWeight.w400, 8, Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
  );
}
