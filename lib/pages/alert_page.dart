import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  void matasquita(BuildContext mandarina) {
    showDialog(
      context: mandarina,
      barrierDismissible: false,
      // barrierColor: Colors.deepPurpleAccent,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          // title: Text("Holaaaaaasssssss"),
          backgroundColor: Colors.white,
          elevation: 0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png",
                height: 90.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "FLUTTER ALERT",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Descripción de la alerta!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Aceptar"),
                ),
              ),
            ],
          ),
          // actions: [
          //   ElevatedButton(
          //     onPressed: () {},
          //     child: Text(
          //       "Hola",
          //     ),
          //   ),
          //   TextButton(
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //     child: Text(
          //       "Okay",
          //     ),
          //   ),
          // ],
        );
      },
    );
  }

  void showAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8491B0),
                ),
              ),
              Divider(
                thickness: 0.9,
                color: Color(0xff8491B0).withOpacity(0.3),
              ),
              SizedBox(
                height: 14.0,
              ),
              CircleAvatar(
                radius: 24,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                backgroundColor: Color(0xff7A99D6),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Amanda Lopez",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                  color: Color(0xff545c72),
                ),
              ),
              Text(
                "Rate the care provided Sunday",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: Color(0xff545c72),
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFB459),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFB459),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFB459),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFB459),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffDDE4EE),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Not Now",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: Color(0xff545c72),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff7A99D6),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Submit Review",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // matasquita(context);
            showAlert2(context);
          },
          child: Text("Show alert!"),
        ),
      ),
    );
  }
}
