import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCardType2 extends StatelessWidget {
  final String? name;
  const CustomCardType2({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 15,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(children: [
          const FadeInImage(
            image: NetworkImage(
                'https://wallup.net/wp-content/uploads/2016/01/102787-nature-mountain-river-landscape.jpg'),
            placeholder: AssetImage('assets/img/loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(10.0),
            child: const Text('No name'),
          )
        ]));
  }
}
