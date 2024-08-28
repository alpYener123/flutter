import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kredi.dart';
import 'eft.dart';

/*
satın al butonunun renkleri geçişli olsun
fotoğrafları koy
height ayarlarken piksel piksel değil de yüzdelerle hallet bazı yerleri
gri yazı ve kredi kartı havale kısımlarını inter yap (google font)
renkleri tam oradaki renk olacak sekilde yap 0xff halinde
*/

class SatinAl extends StatefulWidget {
  const SatinAl({Key? key}) : super(key: key);

  @override
  State<SatinAl> createState() => _SatinAlState();
}

class _SatinAlState extends State<SatinAl> {
  int? annen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text("Genç Kart Satın Al",
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 9, 52, 118))),
          SizedBox(height: 20),
          Container(
            width: 320,
            child: Text(
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
                "Genç kart satın almak için ödeme yöntemi seçiniz. Kart bedeli 50,00 TL dir. Bir sefere mahsus ödenmekte olup ömür boyu geçerliliği vardır."),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  annen = 0;
                },
              );
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Container(
                        width: 20,
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            color:
                                annen == 0 ? Colors.green[300] : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 4),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Kredi Kartı",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  height: 160,
                  width: 325,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                annen = 1;
              });
            },
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Container(
                      width: 20,
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                          color: annen == 1 ? Colors.green[300] : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 4),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Havale/EFT",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                ),
                height: 160,
                width: 325,
              ),
            ]),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              annen == 0
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return kredi();
                        },
                      ),
                    )
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return eft();
                        },
                      ),
                    );
            },
            child: Text('Satın Al', style: TextStyle(fontSize: 25)),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(320, 45),
              shape: StadiumBorder(),
            ),
          )
        ],
      ),
    );
  }
}

/////////////////////////////////////bottomnavibar/////////////////////////////////////////////////////////////////////////////////////////////////

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int indexClicked = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: indexClicked,
      onTap: (value) {
        setState(() {
          indexClicked = value;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            backgroundColor: Colors.blue,
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            backgroundColor: Colors.blue,
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_sharp),
            backgroundColor: Colors.blue,
            label: "Otobus"),
        BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory),
            backgroundColor: Colors.blue,
            label: "Store"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            backgroundColor: Colors.blue,
            label: "Profile"),
      ],
    );
  }
}
