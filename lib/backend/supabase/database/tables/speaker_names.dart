import '../database.dart';

class SpeakerNamesTable extends SupabaseTable<SpeakerNamesRow> {
  @override
  String get tableName => 'speakerNames';

  @override
  SpeakerNamesRow createRow(Map<String, dynamic> data) => SpeakerNamesRow(data);
}

class SpeakerNamesRow extends SupabaseDataRow {
  SpeakerNamesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpeakerNamesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get speaker => getField<String>('speaker');
  set speaker(String? value) => setField<String>('speaker', value);

  String? get surname => getField<String>('surname');
  set surname(String? value) => setField<String>('surname', value);
}
