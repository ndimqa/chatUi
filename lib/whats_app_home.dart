import 'package:flutter/material.dart';
import 'package:test/widgets/category_selector.dart';
import 'package:test/widgets/favorite_contacts.dart';


class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: Colors.red,
            centerTitle: false,
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 40.0,
                        height: 29.0,
                        child: TextButton(
                          child: const Text("Edit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          onPressed: () {},
                        )),
                    const SizedBox(
                      width: 100.0,
                      height: 30.0,
                      child: Text(" Chats",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                    ),
                  ],
                ),
                SizedBox(
                    width: 50,
                    height: 30,
                    child: IconButton(
                        onPressed: () {},
                        //iconSize: 10,
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        )))
              ]),
            ]),
          elevation: 0.0,
          )),
      body:Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              height: 500,
              decoration: const BoxDecoration(
                color: Color(0xFFFEF9EB),//remember this color
                borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0), topRight: Radius.circular(30)),
                ),
              child: Column(
                children: <Widget>[
                  const FaivoriteContancts(),
                  Expanded(
                    child: Container(
                      height: 200.0,
                      //color: Colors.blue,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        )
                      ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

