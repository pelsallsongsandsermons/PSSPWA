import '../database.dart';

class SettingsTable extends SupabaseTable<SettingsRow> {
  @override
  String get tableName => 'settings';

  @override
  SettingsRow createRow(Map<String, dynamic> data) => SettingsRow(data);
}

class SettingsRow extends SupabaseDataRow {
  SettingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SettingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get songCount => getField<int>('songCount');
  set songCount(int? value) => setField<int>('songCount', value);

  int? get sermonCount => getField<int>('sermonCount');
  set sermonCount(int? value) => setField<int>('sermonCount', value);

  String get introVerse1 => getField<String>('intro_verse1')!;
  set introVerse1(String value) => setField<String>('intro_verse1', value);

  String get introVerse2 => getField<String>('intro_verse2')!;
  set introVerse2(String value) => setField<String>('intro_verse2', value);

  bool? get newSongs => getField<bool>('newSongs');
  set newSongs(bool? value) => setField<bool>('newSongs', value);

  String? get livestreamUrl => getField<String>('livestream_url');
  set livestreamUrl(String? value) => setField<String>('livestream_url', value);
}
