import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1ER ELEMENTO
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                //   topRight: Radius.circular(20),
                // ),
                borderRadius: BorderRadius.circular(28.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.07),
                    offset: Offset(5, 5),
                    blurRadius: 12,
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(1),
                    offset: Offset(-5, -5),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Lorem ipsum dolor sit amet, "
                    "consectetur adipiscing elit, sed do "
                    "eiusmod tempor incididunt ut labore "
                    "et dolore magna aliqua. et dolore magna aliqua. "
                    "et dolore magna aliqua. et dolore magna aliqua."
                    " et dolore magna aliqua. et dolore magna aliqua."
                    " et dolore magna aliqua. et dolore magna aliqua.",
                    textAlign: TextAlign.center,
                    maxLines: 3, // cantidad de lineas que se pueden ver en pantalla
                    overflow: TextOverflow.ellipsis, // para saber que hay m??s texto...
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurpleAccent.withOpacity(0.4),
                            blurRadius: 12,
                            offset: Offset(4, 4),
                          ),
                        ],
                    ),
                    child: Text(
                      "Follow me",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 2DO ELEMENTO
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  width: 1.5,
                  color: Colors.black12.withOpacity(0.3),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image2.png',
                    height: 120,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: Column(
                        children: [
                          Text(
                            "Pedro David Fern??ndez Morales",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                                color: Color(0xff212121),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                height: 1.15, // espacio entre lineas del mismo texto
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                                color: Color(0xff212121).withOpacity(0.4),
                                fontSize: 13.0,
                                fontWeight: FontWeight.w300,
                                height: 1.15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 3ER ELEMENTO - FOTO MUJER
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.red,
                //shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.09),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // 4TO ELEMENTO
            Container(
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Color(0xffF1EEFE), // COLOR DEL CARD
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 34.0,
                    backgroundImage: NetworkImage(
                      "https://www.apple.com/leadership/images/bio/tim-cook_image.png.small_2x.png",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Tim Cook",
                          style: GoogleFonts.poppins(
                              color: Color(0xff34427B),
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0,
                          ),
                        ),
                        Text(
                          "CEO at Apple Inc",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8E95B5),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: Color(0xffDCE5FF),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Color(0xff1856FF),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Settings",
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1856FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Color(0xffF1EEFE),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 34.0,
                    backgroundImage: NetworkImage(
                      "https://www.apple.com/leadership/images/bio/jeff_williams.png.small_2x.png",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Jeff Williams",
                          style: GoogleFonts.poppins(
                              color: Color(0xff34427B),
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0),
                        ),
                        Text(
                          "Chief Operating Officer",
                          style: GoogleFonts.poppins(
                              color: Color(0xff8E95B5),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: Color(0xffDCE5FF),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Color(0xff1856FF),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "Settings",
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1856FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 5TO ELEMENTO
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffF1EEFE),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 26,
                        child: Icon(Icons.compass_calibration),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "The quick, brown fox jumps over",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "The quick, brown fox jumps over The quick, brown fox jumps over The quick, brown fox jumps over The quick, brown fox jumps over The quick, brown fox jumps over The quick, brown fox jumps over",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            height: 1.1,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
