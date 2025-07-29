// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SongsListRowStruct extends BaseStruct {
  SongsListRowStruct({
    int? id,
    DateTime? createdAt,
    String? songTitle,
    String? lyricsUrl,
    String? mp3Url,
    String? copyRight,
    String? youtubeUrl,
  })  : _id = id,
        _createdAt = createdAt,
        _songTitle = songTitle,
        _lyricsUrl = lyricsUrl,
        _mp3Url = mp3Url,
        _copyRight = copyRight,
        _youtubeUrl = youtubeUrl;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "songTitle" field.
  String? _songTitle;
  String get songTitle => _songTitle ?? '';
  set songTitle(String? val) => _songTitle = val;

  bool hasSongTitle() => _songTitle != null;

  // "lyricsUrl" field.
  String? _lyricsUrl;
  String get lyricsUrl => _lyricsUrl ?? '';
  set lyricsUrl(String? val) => _lyricsUrl = val;

  bool hasLyricsUrl() => _lyricsUrl != null;

  // "mp3Url" field.
  String? _mp3Url;
  String get mp3Url => _mp3Url ?? '';
  set mp3Url(String? val) => _mp3Url = val;

  bool hasMp3Url() => _mp3Url != null;

  // "copyRight" field.
  String? _copyRight;
  String get copyRight => _copyRight ?? '';
  set copyRight(String? val) => _copyRight = val;

  bool hasCopyRight() => _copyRight != null;

  // "youtube_url" field.
  String? _youtubeUrl;
  String get youtubeUrl => _youtubeUrl ?? '';
  set youtubeUrl(String? val) => _youtubeUrl = val;

  bool hasYoutubeUrl() => _youtubeUrl != null;

  static SongsListRowStruct fromMap(Map<String, dynamic> data) =>
      SongsListRowStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        songTitle: data['songTitle'] as String?,
        lyricsUrl: data['lyricsUrl'] as String?,
        mp3Url: data['mp3Url'] as String?,
        copyRight: data['copyRight'] as String?,
        youtubeUrl: data['youtube_url'] as String?,
      );

  static SongsListRowStruct? maybeFromMap(dynamic data) => data is Map
      ? SongsListRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'songTitle': _songTitle,
        'lyricsUrl': _lyricsUrl,
        'mp3Url': _mp3Url,
        'copyRight': _copyRight,
        'youtube_url': _youtubeUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'songTitle': serializeParam(
          _songTitle,
          ParamType.String,
        ),
        'lyricsUrl': serializeParam(
          _lyricsUrl,
          ParamType.String,
        ),
        'mp3Url': serializeParam(
          _mp3Url,
          ParamType.String,
        ),
        'copyRight': serializeParam(
          _copyRight,
          ParamType.String,
        ),
        'youtube_url': serializeParam(
          _youtubeUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static SongsListRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      SongsListRowStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        songTitle: deserializeParam(
          data['songTitle'],
          ParamType.String,
          false,
        ),
        lyricsUrl: deserializeParam(
          data['lyricsUrl'],
          ParamType.String,
          false,
        ),
        mp3Url: deserializeParam(
          data['mp3Url'],
          ParamType.String,
          false,
        ),
        copyRight: deserializeParam(
          data['copyRight'],
          ParamType.String,
          false,
        ),
        youtubeUrl: deserializeParam(
          data['youtube_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SongsListRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SongsListRowStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        songTitle == other.songTitle &&
        lyricsUrl == other.lyricsUrl &&
        mp3Url == other.mp3Url &&
        copyRight == other.copyRight &&
        youtubeUrl == other.youtubeUrl;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, createdAt, songTitle, lyricsUrl, mp3Url, copyRight, youtubeUrl]);
}

SongsListRowStruct createSongsListRowStruct({
  int? id,
  DateTime? createdAt,
  String? songTitle,
  String? lyricsUrl,
  String? mp3Url,
  String? copyRight,
  String? youtubeUrl,
}) =>
    SongsListRowStruct(
      id: id,
      createdAt: createdAt,
      songTitle: songTitle,
      lyricsUrl: lyricsUrl,
      mp3Url: mp3Url,
      copyRight: copyRight,
      youtubeUrl: youtubeUrl,
    );
