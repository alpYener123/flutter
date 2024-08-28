import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
butonun renkleri geçişli olsun en alttaki ikisi
boşluklara yazılan bilgileri kaydete basınca depola bir yere
bursbavuru kısmında var link gradient icin
*/

class otobusbasvuru extends StatelessWidget {
  const otobusbasvuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Gençlik Otobüsü Başvuru",
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 9, 52, 118))),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            "Hakkınızda:",
            style: GoogleFonts.inter(fontSize: 20, color: Color(0xff4F5254)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            "(Lütfen kendinizi kısaca tanıtınız)",
            style: GoogleFonts.inter(fontSize: 13, color: Color(0xff4F5254)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            minLines: 12,
            maxLines: 12,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Color(0xffEDEDF5),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            "Gençlik Otobüsü projesine neden katılmak istiyorsunuz ?",
            style: GoogleFonts.inter(fontSize: 20, color: Color(0xff4F5254)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            minLines: 12,
            maxLines: 12,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Color(0xffEDEDF5),
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Text(
            "Başvurunuzu onaya gönderdikten sonra değişiklik yapamazsınız.",
            style: GoogleFonts.inter(fontSize: 15, color: Color(0xffAC1414)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15, right: 200),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: StadiumBorder(),
              side: BorderSide(width: 3, color: Colors.blue),
            ),
            onPressed: () {},
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 13, bottom: 13, left: 4, right: 4),
              child: Text('Bilgileri Kaydet',
                  style: TextStyle(fontSize: 22, color: Colors.blue)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15, right: 70),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: StadiumBorder(),
              side: BorderSide(width: 3, color: Colors.blue),
            ),
            onPressed: () {},
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 13, bottom: 13, left: 4, right: 4),
              child: Text('Başvuruyu Onaya Gönder',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
