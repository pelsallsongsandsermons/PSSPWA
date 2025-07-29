import '../database.dart';

class BookSeriesTable extends SupabaseTable<BookSeriesRow> {
  @override
  String get tableName => 'bookSeries';

  @override
  BookSeriesRow createRow(Map<String, dynamic> data) => BookSeriesRow(data);
}

class BookSeriesRow extends SupabaseDataRow {
  BookSeriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookSeriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get seriesTag => getField<String>('series_tag');
  set seriesTag(String? value) => setField<String>('series_tag', value);

  String? get seriesTitle => getField<String>('seriesTitle');
  set seriesTitle(String? value) => setField<String>('seriesTitle', value);

  String? get seriesGraphic => getField<String>('seriesGraphic');
  set seriesGraphic(String? value) => setField<String>('seriesGraphic', value);

  String? get dateFrom => getField<String>('dateFrom');
  set dateFrom(String? value) => setField<String>('dateFrom', value);

  String? get dateTo => getField<String>('dateTo');
  set dateTo(String? value) => setField<String>('dateTo', value);

  bool? get current => getField<bool>('current');
  set current(bool? value) => setField<bool>('current', value);

  int? get sequence => getField<int>('sequence');
  set sequence(int? value) => setField<int>('sequence', value);
}
