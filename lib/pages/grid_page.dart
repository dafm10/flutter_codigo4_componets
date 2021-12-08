import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  GridPage({Key? key}) : super(key: key);

  Map<String, dynamic> team = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Page'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        //crossAxisSpacing: 12.0, // espacio en medio de los objetos
        //mainAxisSpacing: 12.0, // espacio debajo de cada elemento
        childAspectRatio: 1.0,
        children: team['members']
            .map<Widget>(
              (item) => Container(
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover, // para ocuper el ancho del contenedor,
                    image: NetworkImage(
                      item['image'],
                    ),
                  ),
                ),
                child: Text(
                  item['name'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
