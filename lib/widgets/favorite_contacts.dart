import 'package:flutter/material.dart';
import 'package:test/models/message_model.dart';

class FaivoriteContancts extends StatelessWidget {
  const FaivoriteContancts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text("Faivorite contacts",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0)),
            IconButton(
                onPressed: () {},
                iconSize: 30.0,
                color: Colors.blueGrey,
                icon: const Icon(Icons.more_horiz))
          ],
        ),
      ),
      Container(
        height: 120.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 10.0),
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        favorites[index].imageUrl
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Text(favorites[index].name, style: const TextStyle(color: Colors.blueGrey, fontSize: 16.0, fontWeight:FontWeight.w600)),
                  ],
                ),
              );
            }),
      ),
    ]);
  }
}
