// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SongStruct extends BaseStruct {
  SongStruct({
    String? urlsong,
    String? title,
    String? artUri,
    String? artistname,
  })  : _urlsong = urlsong,
        _title = title,
        _artUri = artUri,
        _artistname = artistname;

  // "urlsong" field.
  String? _urlsong;
  String get urlsong => _urlsong ?? '';
  set urlsong(String? val) => _urlsong = val;

  bool hasUrlsong() => _urlsong != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "artUri" field.
  String? _artUri;
  String get artUri => _artUri ?? '';
  set artUri(String? val) => _artUri = val;

  bool hasArtUri() => _artUri != null;

  // "artistname" field.
  String? _artistname;
  String get artistname => _artistname ?? '';
  set artistname(String? val) => _artistname = val;

  bool hasArtistname() => _artistname != null;

  static SongStruct fromMap(Map<String, dynamic> data) => SongStruct(
        urlsong: data['urlsong'] as String?,
        title: data['title'] as String?,
        artUri: data['artUri'] as String?,
        artistname: data['artistname'] as String?,
      );

  static SongStruct? maybeFromMap(dynamic data) =>
      data is Map ? SongStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'urlsong': _urlsong,
        'title': _title,
        'artUri': _artUri,
        'artistname': _artistname,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'urlsong': serializeParam(
          _urlsong,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'artUri': serializeParam(
          _artUri,
          ParamType.String,
        ),
        'artistname': serializeParam(
          _artistname,
          ParamType.String,
        ),
      }.withoutNulls;

  static SongStruct fromSerializableMap(Map<String, dynamic> data) =>
      SongStruct(
        urlsong: deserializeParam(
          data['urlsong'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        artUri: deserializeParam(
          data['artUri'],
          ParamType.String,
          false,
        ),
        artistname: deserializeParam(
          data['artistname'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SongStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SongStruct &&
        urlsong == other.urlsong &&
        title == other.title &&
        artUri == other.artUri &&
        artistname == other.artistname;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([urlsong, title, artUri, artistname]);
}

SongStruct createSongStruct({
  String? urlsong,
  String? title,
  String? artUri,
  String? artistname,
}) =>
    SongStruct(
      urlsong: urlsong,
      title: title,
      artUri: artUri,
      artistname: artistname,
    );
