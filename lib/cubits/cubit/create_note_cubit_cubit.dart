import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/Note_modele.dart';

import '../../view/widgets/Constants.dart';

part 'create_note_cubit_state.dart';

class CreateNoteCubit extends Cubit<CreateNoteCubitState> {
  CreateNoteCubit() : super(CreateNoteCubitInitial());
  
  List<NoteModel>? notes;
  fetchAllNotes()   {
    var notsBox = Hive.box<NoteModel>(kNotesBox);
    notes = notsBox.values.toList();
  
  }
}
