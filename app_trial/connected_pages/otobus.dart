import 'package:flutter/material.dart';

class otobus extends StatelessWidget {
  const otobus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66),
        child: AppBar(
          leadingWidth: 50,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: CircleAvatar(backgroundColor: Colors.amberAccent),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Text("Gençlik Dünyası"),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 7, top: 15),
              child: Icon(Icons.circle, size: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7, top: 15),
              child: Icon(Icons.accessibility, size: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 15),
              child: Icon(Icons.ads_click_outlined, size: 30),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff222F91),
                  shape: StadiumBorder(),
                  side: BorderSide(width: 3, color: Color(0xff222F91)),
                ),
                onPressed: () {},
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Nasıl Başvuru Yapılır?                            ',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff222F91),
                  shape: StadiumBorder(),
                  side: BorderSide(width: 3, color: Color(0xff222F91)),
                ),
                onPressed: () {},
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text('Gençlik Otobüsü Hakkında                    ',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff222F91),
                  shape: StadiumBorder(),
                  side: BorderSide(width: 3, color: Color(0xff222F91)),
                ),
                onPressed: () {},
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text('Gençlik Otobüsü Katılım Şartları          ',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 70),
                SizedBox(
                  height: 100,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffE9F4F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 29,
                          ),
                          Text('Genç Kart',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163))),
                          Text('Satın Al',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163)))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(
                  height: 100,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffE9F4F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text('Gençlik',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163))),
                          Text('Otobüsü',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163))),
                          Text('Başvuru',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163)))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 70),
                SizedBox(
                  height: 100,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffE9F4F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 29,
                          ),
                          Text('Burs',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163))),
                          Text('Başvuru',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163)))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(
                  height: 100,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffE9F4F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {},
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text('GO',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163))),
                          Text('Başvuru',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163))),
                          Text('Sorgulama',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff182163)))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff222F91),
                  shape: StadiumBorder(),
                  side: BorderSide(width: 3, color: Color(0xff222F91)),
                ),
                onPressed: () {},
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Mülakat Sonuçları                                   ',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff222F91),
                  shape: StadiumBorder(),
                  side: BorderSide(width: 3, color: Color(0xff222F91)),
                ),
                onPressed: () {},
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Video Sonuçları                                       ',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffE9F4F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {},
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Text('Gençlik',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xff182163))),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
