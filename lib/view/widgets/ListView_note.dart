import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/create_note_cubit_cubit.dart';
import 'package:notes_app/models/Note_modele.dart';
import 'package:notes_app/view/widgets/costum_NoteItems.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});
  //final data = const [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNoteCubit, CreateNoteCubitState>(
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<CreateNoteCubit>(context).notes!;
        return ListView.builder(
          itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(),
              );
            });
      },
    );
  }
}
