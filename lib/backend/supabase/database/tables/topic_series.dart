import '../database.dart';

class TopicSeriesTable extends SupabaseTable<TopicSeriesRow> {
  @override
  String get tableName => 'topicSeries';

  @override
  TopicSeriesRow createRow(Map<String, dynamic> data) => TopicSeriesRow(data);
}

class TopicSeriesRow extends SupabaseDataRow {
  TopicSeriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TopicSeriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get seriesTitle => getField<String>('seriesTitle')!;
  set seriesTitle(String value) => setField<String>('seriesTitle', value);

  bool? get current => getField<bool>('current');
  set current(bool? value) => setField<bool>('current', value);

  int? get sequence => getField<int>('sequence');
  set sequence(int? value) => setField<int>('sequence', value);

  String? get seriesGraphic => getField<String>('seriesGraphic');
  set seriesGraphic(String? value) => setField<String>('seriesGraphic', value);

  String? get seriesTag => getField<String>('SeriesTag');
  set seriesTag(String? value) => setField<String>('SeriesTag', value);

  String? get fromDate => getField<String>('fromDate');
  set fromDate(String? value) => setField<String>('fromDate', value);

  String? get toDate => getField<String>('toDate');
  set toDate(String? value) => setField<String>('toDate', value);
}
