// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SermonListRowStruct extends BaseStruct {
  SermonListRowStruct({
    int? id,
    String? createdAt,
    String? title,
    String? content,
    int? publishTime,
    int? duration,
    String? mediaUrl,
    String? date,
    String? fullRef,
    String? episodeTag,
    int? chapterRef,
    String? speaker,
    String? permalinkUrl,
    String? youtubeUrl,
  })  : _id = id,
        _createdAt = createdAt,
        _title = title,
        _content = content,
        _publishTime = publishTime,
        _duration = duration,
        _mediaUrl = mediaUrl,
        _date = date,
        _fullRef = fullRef,
        _episodeTag = episodeTag,
        _chapterRef = chapterRef,
        _speaker = speaker,
        _permalinkUrl = permalinkUrl,
        _youtubeUrl = youtubeUrl;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "publish_time" field.
  int? _publishTime;
  int get publishTime => _publishTime ?? 0;
  set publishTime(int? val) => _publishTime = val;

  void incrementPublishTime(int amount) => publishTime = publishTime + amount;

  bool hasPublishTime() => _publishTime != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  // "media_url" field.
  String? _mediaUrl;
  String get mediaUrl => _mediaUrl ?? '';
  set mediaUrl(String? val) => _mediaUrl = val;

  bool hasMediaUrl() => _mediaUrl != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "full_ref" field.
  String? _fullRef;
  String get fullRef => _fullRef ?? '';
  set fullRef(String? val) => _fullRef = val;

  bool hasFullRef() => _fullRef != null;

  // "episode_tag" field.
  String? _episodeTag;
  String get episodeTag => _episodeTag ?? '';
  set episodeTag(String? val) => _episodeTag = val;

  bool hasEpisodeTag() => _episodeTag != null;

  // "chapter_ref" field.
  int? _chapterRef;
  int get chapterRef => _chapterRef ?? 0;
  set chapterRef(int? val) => _chapterRef = val;

  void incrementChapterRef(int amount) => chapterRef = chapterRef + amount;

  bool hasChapterRef() => _chapterRef != null;

  // "speaker" field.
  String? _speaker;
  String get speaker => _speaker ?? '';
  set speaker(String? val) => _speaker = val;

  bool hasSpeaker() => _speaker != null;

  // "permalink_url" field.
  String? _permalinkUrl;
  String get permalinkUrl => _permalinkUrl ?? '';
  set permalinkUrl(String? val) => _permalinkUrl = val;

  bool hasPermalinkUrl() => _permalinkUrl != null;

  // "youtube_url" field.
  String? _youtubeUrl;
  String get youtubeUrl => _youtubeUrl ?? '';
  set youtubeUrl(String? val) => _youtubeUrl = val;

  bool hasYoutubeUrl() => _youtubeUrl != null;

  static SermonListRowStruct fromMap(Map<String, dynamic> data) =>
      SermonListRowStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        title: data['title'] as String?,
        content: data['content'] as String?,
        publishTime: castToType<int>(data['publish_time']),
        duration: castToType<int>(data['duration']),
        mediaUrl: data['media_url'] as String?,
        date: data['date'] as String?,
        fullRef: data['full_ref'] as String?,
        episodeTag: data['episode_tag'] as String?,
        chapterRef: castToType<int>(data['chapter_ref']),
        speaker: data['speaker'] as String?,
        permalinkUrl: data['permalink_url'] as String?,
        youtubeUrl: data['youtube_url'] as String?,
      );

  static SermonListRowStruct? maybeFromMap(dynamic data) => data is Map
      ? SermonListRowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'title': _title,
        'content': _content,
        'publish_time': _publishTime,
        'duration': _duration,
        'media_url': _mediaUrl,
        'date': _date,
        'full_ref': _fullRef,
        'episode_tag': _episodeTag,
        'chapter_ref': _chapterRef,
        'speaker': _speaker,
        'permalink_url': _permalinkUrl,
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
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'publish_time': serializeParam(
          _publishTime,
          ParamType.int,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
        'media_url': serializeParam(
          _mediaUrl,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'full_ref': serializeParam(
          _fullRef,
          ParamType.String,
        ),
        'episode_tag': serializeParam(
          _episodeTag,
          ParamType.String,
        ),
        'chapter_ref': serializeParam(
          _chapterRef,
          ParamType.int,
        ),
        'speaker': serializeParam(
          _speaker,
          ParamType.String,
        ),
        'permalink_url': serializeParam(
          _permalinkUrl,
          ParamType.String,
        ),
        'youtube_url': serializeParam(
          _youtubeUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static SermonListRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      SermonListRowStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        publishTime: deserializeParam(
          data['publish_time'],
          ParamType.int,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
        mediaUrl: deserializeParam(
          data['media_url'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        fullRef: deserializeParam(
          data['full_ref'],
          ParamType.String,
          false,
        ),
        episodeTag: deserializeParam(
          data['episode_tag'],
          ParamType.String,
          false,
        ),
        chapterRef: deserializeParam(
          data['chapter_ref'],
          ParamType.int,
          false,
        ),
        speaker: deserializeParam(
          data['speaker'],
          ParamType.String,
          false,
        ),
        permalinkUrl: deserializeParam(
          data['permalink_url'],
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
  String toString() => 'SermonListRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SermonListRowStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        title == other.title &&
        content == other.content &&
        publishTime == other.publishTime &&
        duration == other.duration &&
        mediaUrl == other.mediaUrl &&
        date == other.date &&
        fullRef == other.fullRef &&
        episodeTag == other.episodeTag &&
        chapterRef == other.chapterRef &&
        speaker == other.speaker &&
        permalinkUrl == other.permalinkUrl &&
        youtubeUrl == other.youtubeUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        title,
        content,
        publishTime,
        duration,
        mediaUrl,
        date,
        fullRef,
        episodeTag,
        chapterRef,
        speaker,
        permalinkUrl,
        youtubeUrl
      ]);
}

SermonListRowStruct createSermonListRowStruct({
  int? id,
  String? createdAt,
  String? title,
  String? content,
  int? publishTime,
  int? duration,
  String? mediaUrl,
  String? date,
  String? fullRef,
  String? episodeTag,
  int? chapterRef,
  String? speaker,
  String? permalinkUrl,
  String? youtubeUrl,
}) =>
    SermonListRowStruct(
      id: id,
      createdAt: createdAt,
      title: title,
      content: content,
      publishTime: publishTime,
      duration: duration,
      mediaUrl: mediaUrl,
      date: date,
      fullRef: fullRef,
      episodeTag: episodeTag,
      chapterRef: chapterRef,
      speaker: speaker,
      permalinkUrl: permalinkUrl,
      youtubeUrl: youtubeUrl,
    );
