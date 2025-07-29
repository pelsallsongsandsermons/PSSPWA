import '../database.dart';

class SermonListTable extends SupabaseTable<SermonListRow> {
  @override
  String get tableName => 'sermonList';

  @override
  SermonListRow createRow(Map<String, dynamic> data) => SermonListRow(data);
}

class SermonListRow extends SupabaseDataRow {
  SermonListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SermonListTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get publishTime => getField<int>('publish_time');
  set publishTime(int? value) => setField<int>('publish_time', value);

  int? get duration => getField<int>('duration');
  set duration(int? value) => setField<int>('duration', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get fullRef => getField<String>('full_ref');
  set fullRef(String? value) => setField<String>('full_ref', value);

  String? get episodeTag => getField<String>('episode_tag');
  set episodeTag(String? value) => setField<String>('episode_tag', value);

  int? get chapterRef => getField<int>('chapter_ref');
  set chapterRef(int? value) => setField<int>('chapter_ref', value);

  String? get speaker => getField<String>('speaker');
  set speaker(String? value) => setField<String>('speaker', value);

  String? get permalinkUrl => getField<String>('permalink_url');
  set permalinkUrl(String? value) => setField<String>('permalink_url', value);

  String? get youtubeUrl => getField<String>('youtube_url');
  set youtubeUrl(String? value) => setField<String>('youtube_url', value);
}
