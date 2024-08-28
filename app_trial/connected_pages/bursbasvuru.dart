import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class bursbavuru extends StatelessWidget {
  const bursbavuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Burs Başvurusu",
              style: GoogleFonts.inter(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 9, 52, 118))),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Kişisel Bilgiler",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 9, 52, 118))),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            height: 407,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "T.C Kimlik No",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 9, 52, 118),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Doğum Günü",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 9, 52, 118),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 165,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        minLines: 1,
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xffD0E1F5),
                        ),
                      ),
                    ),
                    SizedBox(width: 9),
                    SizedBox(
                      height: 40,
                      width: 165,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        minLines: 1,
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xffD0E1F5),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "İsim",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 9, 52, 118),
                      ),
                    ),
                    SizedBox(
                      width: 153,
                    ),
                    Text(
                      "Soyad",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 9, 52, 118),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 165,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        minLines: 1,
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xffD0E1F5),
                        ),
                      ),
                    ),
                    SizedBox(width: 9),
                    SizedBox(
                      height: 40,
                      width: 165,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        minLines: 1,
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xffD0E1F5),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "E-posta",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Telefon Numarası",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Şehir",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Adres",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Eğitim Bilgileri",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 9, 52, 118))),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Üniversite",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Bölüm",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Sınıf",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                  SizedBox(
                    width: 153,
                  ),
                  Text(
                    "Not Ortalaması",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 9, 52, 118),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text("Diğer Bilgiler",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 9, 52, 118))),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  "Anne Durumu",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 9, 52, 118),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      height: 40,
                      width: 165,
                      child: DropdownButton(
                        //silinmiş olan textformfield'ın özellikleri (direkt copy paste hali) yukarıdaki comment kısmında var, diğer
                        //textformfield'lar gibi yap bunun şeklini de
                        value: "eben",
                        onChanged: (value) {},
                        items: [
                          DropdownMenuItem(
                              child: Text("Çalışıyor"), value: "eben")
                        ],
                      )),
                  SizedBox(width: 9),
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  "Baba Durumu",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 9, 52, 118),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 286),
                child: Text(
                  "Ev Durumu",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 9, 52, 118),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  SizedBox(
                    height: 40,
                    width: 165,
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xffD0E1F5),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Varsa Diğer Burslar",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 9, 52, 118),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 40,
                  width: 350,
                  child: TextFormField(
                    style: TextStyle(fontSize: 20),
                    minLines: 1,
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Color(0xffD0E1F5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Eklemek İstedikleriniz",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 9, 52, 118),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 40,
                  width: 350,
                  child: TextFormField(
                    style: TextStyle(fontSize: 20),
                    minLines: 1,
                    maxLines: 1,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 10, left: 5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Color(0xffD0E1F5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: StadiumBorder(),
                side: BorderSide(width: 3, color: Colors.blue),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Text('Kaydet',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
