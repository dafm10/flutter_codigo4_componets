import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> superheroes = ["Batman", "Superman", "Flash", "Aquaman"];

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

  // Map = pide que se le envíe un mapa
  showDetailSuperhero(Map superhero) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            title: Text("Hero Detail"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    superhero['image'],
                  ),
                ),
                ListTile(
                  title: Text(superhero['name']),
                  subtitle: Text("Name"),
                ),
                ListTile(
                  title: Text(superhero['secretIdentity']),
                  subtitle: Text("Secret Identity"),
                ),
                ListTile(
                  title: Text(superhero['age'].toString()),
                  subtitle: Text("Age"),
                ),
                ListTile(
                  title: Text('Poderes'),
                ),
                // se coloca .toList para convertir a lista iterando el mapa
                // map es un metodo para iterar
                // (item)=> Text : devuelve un widget
                ...superhero['powers'].map((item) => Text(item)).toList(),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      // body: ListView.builder(
      //   itemCount: superheroes.length,
      //   itemBuilder: (BuildContext context, int index){
      //     return ListTile(
      //       onTap: (){
      //         print(index);
      //       },
      //       title: Text(superheroes[index]),
      //       trailing: IconButton(
      //         onPressed: (){
      //           superheroes.removeAt(index);
      //           setState(() {
      //
      //           });
      //         },
      //         icon: Icon(Icons.delete),
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        itemCount: team["members"].length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(team["members"][index]['name']),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(team["members"][index]['image']),
            ),
            trailing: IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: () {
                showDetailSuperhero(team["members"][index]);
              },
            ),
          );
        },
      ),
    );
  }
}
