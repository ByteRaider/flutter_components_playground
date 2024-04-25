import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: AppTheme.primary),
          title: Text('I\'m a tit;e'),
          subtitle: Text(' I\'m a subtitle you can change it'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(onPressed: null, child: Text('Cancel')),
            TextButton(onPressed: null, child: Text('Ok')),
          ]),
        )
      ],
    ));
  }
}
