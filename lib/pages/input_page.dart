import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = false;

  TextEditingController dateTimeController = TextEditingController();
  TextEditingController ejemploController = TextEditingController();

  List<String> superheroes = [
    "Batmanman",
    "Superman",
    "Wonder Woman",
    "Aquaman",
    "Flash",
    "Shazam",
  ];

  String selected = "Superman";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(ejemploController.text);
        },
        child: Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // NOMBRES
              TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                maxLength: 20,
                cursorColor: Colors.black12,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
                decoration: const InputDecoration(
                  label: Text("Nombres"),
                  hintText: "Ingrese su nombre",
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  ),
                  icon: Icon(Icons.person),
                  prefixIcon:
                      Icon(Icons.person_outline), // se muestra dentro del input
                  suffixIcon: Icon(Icons.check_circle),
                ),
                onChanged: (String value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              // BUSCAR PRODUCTO
              const TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto......",
                  prefixIcon: Icon(Icons.search),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 10.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.greenAccent),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,
                      width: 4,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              // BUSCAR PRODUCTO II
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.check_circle),
                  label: Text("Buscar Producto"),
                  hintText: "Ingresar producto a buscar...",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.redAccent,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      color: Colors.redAccent,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              // BUSCAR PRODUCTO III
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.06),
                      blurRadius: 12,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true, // pregunta que tenga relleno si o no
                      fillColor: Colors.white,
                      hintText: "Buscar producto...",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14.0,
                        color: Colors.black38,
                      ),
                      suffixIcon: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pinkAccent.withOpacity(0.4),
                                offset: Offset(4, 4),
                                blurRadius: 7,
                              ),
                            ]),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: const BorderSide(
                          width: 0,
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        borderSide: const BorderSide(
                          width: 0,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              // CAMPO CONTRASEÑA
              TextField(
                obscureText: isInvisible, // para ocultar el texto
                decoration: InputDecoration(
                  hintText: "Ingrese su contraseña",
                  suffixIcon: IconButton(
                    icon: isInvisible
                        ? Icon(Icons.remove_red_eye_outlined)
                        : Icon(Icons.remove_red_eye),
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                  ),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(
                height: 30.0,
              ),

              // keyboardType permite cambiar el tipo de dato a ingresar
              TextField(
                controller: ejemploController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Ingresa datos de prueba",
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              // FECHA DE NACIMIENTO
              TextField(
                controller: dateTimeController, // llamamos a mandarina para llenar la fecha
                decoration: InputDecoration(
                  hintText: "Fecha de nacimiento",
                  prefixIcon: Icon(Icons.date_range),
                ),
                onTap: () {
                  // bloquear la celda de fecha para que no sea editado
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.09),
                        blurRadius: 12,
                        offset: Offset(4, 4),
                      ),
                    ]),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: selected,
                    // items: getDataDropdown(),
                    // otra alternativa
                    items: superheroes
                        .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (String? option) {
                      // el ! en option quiere decir que nunca será nulo
                      selected = option!;
                      // para visualizar la selección
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // CLASE PARA LA FECHA
  selectDate() async {
    // await sirve para aperturar la caja future Datetime?
    DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2030),
    );

    if (datePicked != null) {
      dateTimeController.text = datePicked.toString().substring(0,10);
    }
  }

  // LISTA DE SUPER HEROES
  List<DropdownMenuItem<String>> getDataDropdown() {
    List<DropdownMenuItem<String>> items = [];

    superheroes.forEach(
      (element) {
        items.add(DropdownMenuItem(
          child: Text(element),
          value: element,
        ));
      },
    );
    return items;
  }
}
