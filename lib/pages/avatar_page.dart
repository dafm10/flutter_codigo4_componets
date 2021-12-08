import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Avatar Page",
        ),
        elevation: 0,
        actions: [
          // Icon(Icons.more_vert),
          const CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "A",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          // Image.asset('assets/images/loading-2.gif'),

          FadeInImage(
            image: NetworkImage(
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
            ),
            placeholder: AssetImage("assets/images/loading-2.gif"),
            fadeInDuration: Duration(milliseconds: 2200),
          ),
        ],
      ),
    );
  }
}
