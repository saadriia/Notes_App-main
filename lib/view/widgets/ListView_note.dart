import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/create_note_cubit_cubit.dart';
import 'package:notes_app/view/widgets/costum_NoteItems.dart';

class NotsListView extends StatelessWidget {
  const NotsListView({super.key});
  final data = const [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNoteCubit, CreateNoteCubitState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state is CreateNoteCubitSucsees ? state.createNotes.length:2,
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
