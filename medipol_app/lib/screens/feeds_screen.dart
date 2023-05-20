import 'package:flutter/material.dart';
import 'package:medipol_app/widgets/alert_widget.dart';
import 'package:medipol_app/widgets/card_item.dart';
import 'package:medipol_app/widgets/mail_widget.dart';


class FeedsScreen extends StatelessWidget {
  List<Widget> listItems = [
    AlertMail(),
    FeedCard(),
    MailWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return listItems[index];
        },
        itemCount: listItems.length,

      ),
    );
  }
}

