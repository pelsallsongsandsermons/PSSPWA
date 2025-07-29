import '../database.dart';

class SongsListTable extends SupabaseTable<SongsListRow> {
  @override
  String get tableName => 'songsList';

  @override
  SongsListRow createRow(Map<String, dynamic> data) => SongsListRow(data);
}

class SongsListRow extends SupabaseDataRow {
  SongsListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SongsListTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get songTitle => getField<String>('songTitle')!;
  set songTitle(String value) => setField<String>('songTitle', value);

  String? get lyricsUrl => getField<String>('lyricsUrl');
  set lyricsUrl(String? value) => setField<String>('lyricsUrl', value);

  String get copyRight => getField<String>('copyRight')!;
  set copyRight(String value) => setField<String>('copyRight', value);

  String? get youtubeUrl => getField<String>('youtube_url');
  set youtubeUrl(String? value) => setField<String>('youtube_url', value);

  bool get newSong => getField<bool>('new_song')!;
  set newSong(bool value) => setField<bool>('new_song', value);

  int? get startAt => getField<int>('startAt');
  set startAt(int? value) => setField<int>('startAt', value);

  int? get endAt => getField<int>('endAt');
  set endAt(int? value) => setField<int>('endAt', value);
}
