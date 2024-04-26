import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCardType2 extends StatelessWidget {
  final String? name;
  final String imageUrl;

  const CustomCardType2({
    super.key,
    this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 15,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/img/loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.all(10.0),
              child: Text(name ?? 'No image name provided'),
            )
        ]));
  }
}
