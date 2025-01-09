import 'package:flutter/material.dart';

class ContactPageGeneric extends StatelessWidget {
  const ContactPageGeneric({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Me",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'DISCUSS A PROJECT OR JUST WANT TO SAY HI? MY INBOX IS OPEN FOR ALL.',
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '☎️',
                style: TextStyle(color: Colors.grey, fontSize: 28),
              ),
              SizedBox(
                width: 10,
              ),
              SelectableText(
                '+34 622 011 671',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '✉️',
                style: TextStyle(color: Colors.grey, fontSize: 28),
              ),
              SizedBox(
                width: 10,
              ),
              SelectableText(
                'cesarsanz.91@gmail.com',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
