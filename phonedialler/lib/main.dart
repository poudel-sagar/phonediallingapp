import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "dialler app",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = [
    "sagar poudel",
    "elon musk dai",
    "bill gates uncle",
    "larry page sathi",
    "mark dai"
  ];
  var phoneNumber = [
    "9808248458",
    "9808248457",
    "9808248456",
    "9808248455",
    "98082484584"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE21717),
        title: Text("Phone Dialler"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: (){
                launch("tel://${phoneNumber[index]}");

              },
            ),
          );
        },
      ),
    );
  }
}
