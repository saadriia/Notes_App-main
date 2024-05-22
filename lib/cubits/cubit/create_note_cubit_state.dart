part of 'create_note_cubit_cubit.dart';

@immutable
sealed class CreateNoteCubitState {}

final class CreateNoteCubitInitial extends CreateNoteCubitState {}

final class CreateNoteCubitLoading extends CreateNoteCubitState {}

final class CreateNoteCubitSucsees extends CreateNoteCubitState {
  final List <NoteModel> createNotes;

  CreateNoteCubitSucsees(this.createNotes);
}

final class CreateNoteCubitFailure extends CreateNoteCubitState {
  final String errMessage;

  CreateNoteCubitFailure(this.errMessage);
}
