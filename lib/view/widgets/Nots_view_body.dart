import "package:flutter/material.dart";
import "package:notes_app/view/widgets/ListView_note.dart";
//import "package:font_awesome_flutter/font_awesome_flutter.dart";
//import "package:notes_app/view/widgets/costum_NoteItems.dart";
//import "package:notes_app/view/widgets/Custom_AppBar.dart";
import "costum_NoteItems.dart";
import "Custom_AppBar.dart";

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          customAppBar(
      
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(child:NotsListView(),

),

        ],
      ),
    );
  }
}
