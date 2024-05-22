import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_note_cubit_event.dart';
part 'create_note_cubit_state.dart';

class CreateNoteCubitBloc extends Bloc<CreateNoteCubitEvent, CreateNoteCubitState> {
  CreateNoteCubitBloc() : super(CreateNoteCubitInitial()) {
    on<CreateNoteCubitEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
