import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/costum_NoteItems.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});
  final data = const [
   
  ];
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    });
  }
}
