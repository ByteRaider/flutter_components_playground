import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/img/loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${index + 1}'));
          },
        ),
      ),
    );
  }
}
