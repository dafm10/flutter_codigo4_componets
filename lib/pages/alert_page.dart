import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  void showMyAlert(BuildContext mandarina) {
    // aqui comienza el armado de la alerta
    // siempre recibe un context y builder
    showDialog(
      context: mandarina,
      barrierDismissible:
          false, // obliga a salir del alert haciendo clic en un boton
      // barrierColor: Colors.deepPurpleAccent, // color de fondo al activarse la alerta
      builder: (BuildContext context) {
        return AlertDialog(
          shape: // para cambiar la forma de la alerta
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: const Text(
            "APP Alert",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          content: Column(
            mainAxisSize: MainAxisSize.min, // tamaño del eje principal
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png",
                height: 90.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "FLUTTER ALERT",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Practicando con Alertas!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
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
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Programmer Review",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8491B0),
                ),
              ),
              Divider(
                thickness: 0.9,
                color: Color(0xff8491B0).withOpacity(0.3),
              ),
              const SizedBox(
                height: 14.0,
              ),
              const CircleAvatar(
                radius: 24,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                backgroundColor: Color(0xff7A99D6),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                "David Fernández",
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
              const SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
              const SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
                      primary: Color(0xff7A99D6), // color del boton
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // context indica la posicion dentro del widget build
                showAlert2(context);
              },
              child: Text(
                "Show alert 1",
              ),
            ),
            TextButton(
              onPressed: () {
                // context indica la posicion dentro del widget build
                showMyAlert(context);
              },
              child: Text(
                "Show alert 2",
              ),
            ),
          ],
        ),

      ),
    );
  }
}
