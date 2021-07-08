import 'dart:convert';

import 'package:bubble/bubble.dart';
import 'package:chatbotf/my_flutter_app_icons.dart';
import 'package:chatbotf/style.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_svg/flutter_svg.dart';

class Discution extends StatefulWidget {
  @override
  DiscutionState createState() => DiscutionState();
}

class DiscutionState extends State<Discution> {
  final GlobalKey<AnimatedListState> _listeKey = GlobalKey();
  List<String> _data = [];
  var BOT_URL = Uri.parse(
      'https://gitlab.com/elchebbi.ahmed/testtt/-/raw/main/testFile.json?fbclid=IwAR3QXr41SQS9-i9o6RjdKgc5ruQ7LI_8jEnOGEYZHwr9gi_o5UmpCIsoqxk');

  TextEditingController queryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          customAppBar(),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height - 235,
            decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0))),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 335,
                  padding: EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: AnimatedList(
                    key: _listeKey,
                    initialItemCount: _data.length,
                    itemBuilder:
                        (BuildContext context, int index, Animation animation) {
                      return buildItem(_data[index], animation, index);
                    },
                    // children: [sender(), receiver()],
                  ),
                ),
                footerInput(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /* Widget sender() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PrimaryText(
              text: '18:35',
              color: Colors.grey[400],
              fontSize: 14,
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(0),
                )),
            child: PrimaryText(
              text: 'jsgbdkjsskdjfhskfjhs',
              color: Colors.black38,
              fontSize: 14,
            ),
          ),
          Avatar(avatarUrl: 'assets/personne.jpg', width: 50, height: 50),
        ],
      ),
    );
  }

  Widget receiver() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Avatar(avatarUrl: 'assets/bulimage.png', width: 50, height: 50),
              SizedBox(
                width: 10,
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 280),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(25),
                    )),
                child: PrimaryText(
                  text: 'jsgbdkjsghskfjhs',
                  color: Colors.black38,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PrimaryText(
              text: '18:35',
              color: Colors.grey[400],
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }*/

  Padding footerInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          hintText: 'Type your message...',
          hintStyle:
              TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w500),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(3.0),
            child: RawMaterialButton(
              onLongPress: () => {},
              constraints: BoxConstraints(minWidth: 0),
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.black,
              child: IconButton(
                icon: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Icon(
                    MyFlutterApp.send,
                    color: Colors.yellow[700],
                  ),
                ),
                iconSize: 20.0,
                onPressed: () {
                  this.getResponse();
                },
              ),
              padding: EdgeInsets.all(5.0),
              shape: CircleBorder(),
            ),
          ),
        ),
        controller: queryController,
      ),
    );
  }

  Padding customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          IconButton(
            icon: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Icon(
                MyFlutterApp.menu,
                color: Colors.yellow[700],
              ),
            ),
            iconSize: 60.0,
            onPressed: () {},
          ),
          SizedBox(
            width: 100,
          ),
          SizedBox(
            height: 167,
            width: 167,
            child: Image.asset(
              'assets/chatbot.png',
            ),
          ),
        ],
      ),
    );
  }

  void getResponse() {
    if (queryController.text.length > 0) {
      this.insertSingleItem(queryController.text);
      var client = getClient();
      try {
        client.post(
          BOT_URL,
          body: {"query": queryController.text},
        )..then((response) {
            print(response.body);
            Map<String, dynamic> data = jsonDecode(response.body);
            insertSingleItem(data['response'] + "<bot");
          });
      } finally {
        client.close();
        queryController.clear();
      }
    }
  }

//inserting singlle item
  void insertSingleItem(String message) {
    _data.add(message);
    _listeKey.currentState.insertItem(_data.length - 1);
  }

  http.Client getClient() {
    return http.Client();
  }
}

Widget buildItem(String item, Animation animation, int index) {
  bool mine = item.endsWith("<bot>");
  return SizeTransition(
      sizeFactor: animation,
      child: Container(
          alignment: mine ? Alignment.topLeft : Alignment.topRight,
          child: Bubble(
            child: Text(
              item.replaceAll("<bot", ""),
              style: TextStyle(color: mine ? Colors.white : Colors.black),
            ),
            color: mine ? Colors.blue : Colors.grey[200],
            padding: BubbleEdges.all(10),
          )));
}
