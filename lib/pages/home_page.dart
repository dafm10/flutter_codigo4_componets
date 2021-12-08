import 'package:flutter/material.dart';
import 'package:flutter_codigo4_components/pages/alert_page.dart';
import 'package:flutter_codigo4_components/pages/avatar_page.dart';
import 'package:flutter_codigo4_components/pages/card_page.dart';
import 'package:flutter_codigo4_components/pages/grid_page.dart';
import 'package:flutter_codigo4_components/pages/input_page.dart';
import 'package:flutter_codigo4_components/pages/list_page.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // habilita el scroll cuando pasa la altura de la columna
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 270,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  // DecorationImage se adapta al contenedor padre y deberia tener su altura y/o anchura
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg"
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.09),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Flutter - Componentes",
                style: GoogleFonts.montserrat(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4A5467)),
              ),
              const SizedBox(
                width: 100.0,
                // linea delgada debajo de Flutter
                child: Divider(
                  thickness: 0.8,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: const AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: const AlertPage(),
              ),

              ItemComponentWidget(
                title: "Card",
                toPage: const CardPage(),
              ),

              ItemComponentWidget(
                title: "Input",
                toPage: const InputPage(),
              ),

              ItemComponentWidget(
                title: "List Page",
                toPage: ListPage(),
              ),

              ItemComponentWidget(
                title: "Grid Page",
                toPage: GridPage(),
              ),

              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {

  String title;
  Widget toPage;

  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.09),
            // posicionamiento de la sombra
            offset: Offset(4, 4),
            // grosor de la sombra de la caja
            blurRadius: 12,
          ),
        ],
      ),
      child: ListTile( // ListTile ocupa el ancho del padre, columna en este caso
        onTap: (){
          // haciendo clic aqui nos lleva a la pagina indicada en toPage
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff4A5467),
        ),
        title: Text(
          title,
          style: GoogleFonts.montserrat(),
        ),
        subtitle: Text(
          "Ir al detalle de $title",
          style: GoogleFonts.montserrat(),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
