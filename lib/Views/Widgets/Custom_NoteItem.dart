import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteitem extends StatelessWidget {
  const CustomNoteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.only(top: 13, bottom: 13, left: 5),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            
            ListTile(
              title: Text(
                "Note 1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "This is the first note and it is very important ",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.6)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
            Container(
              padding: EdgeInsets.only(right: 24, bottom: 10),
              alignment: Alignment.bottomRight,
              child: Text("may 21,2023"),
            ),
          
          
          ],
        ),
      ),
    );
  }
}
