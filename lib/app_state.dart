import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _darkMode = prefs.getBool('ff_darkMode') ?? _darkMode;
    });
    _safeInit(() {
      _lastPlayedSong = prefs.getString('ff_lastPlayedSong') ?? _lastPlayedSong;
    });
    _safeInit(() {
      _showTour = prefs.getBool('ff_showTour') ?? _showTour;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<SongStruct> _songs = [
    SongStruct.fromSerializableMap(jsonDecode(
        '{\"urlsong\":\"https://mcdn.podbean.com/mf/web/kvvbpvypj6tung9s/11_-_New_life_-_Isaiah_11v1-12v6_-_21st_April_2024_-_Tim_Smylie90kvz.mp3\",\"title\":\"11 - New Life\",\"artUri\":\"https://drive.google.com/uc?export=download&id=1biDOHYnw4oQry2ce4fIjdKOWgkFLbaKt\",\"artistname\":\"Tim Smylie\"}'))
  ];
  List<SongStruct> get songs => _songs;
  set songs(List<SongStruct> value) {
    _songs = value;
  }

  void addToSongs(SongStruct value) {
    songs.add(value);
  }

  void removeFromSongs(SongStruct value) {
    songs.remove(value);
  }

  void removeAtIndexFromSongs(int index) {
    songs.removeAt(index);
  }

  void updateSongsAtIndex(
    int index,
    SongStruct Function(SongStruct) updateFn,
  ) {
    songs[index] = updateFn(_songs[index]);
  }

  void insertAtIndexInSongs(int index, SongStruct value) {
    songs.insert(index, value);
  }

  bool _darkMode = false;
  bool get darkMode => _darkMode;
  set darkMode(bool value) {
    _darkMode = value;
    prefs.setBool('ff_darkMode', value);
  }

  String _lastPlayedSong = '';
  String get lastPlayedSong => _lastPlayedSong;
  set lastPlayedSong(String value) {
    _lastPlayedSong = value;
    prefs.setString('ff_lastPlayedSong', value);
  }

  bool _firstLoadOfHomepage = true;
  bool get firstLoadOfHomepage => _firstLoadOfHomepage;
  set firstLoadOfHomepage(bool value) {
    _firstLoadOfHomepage = value;
  }

  bool _showTour = true;
  bool get showTour => _showTour;
  set showTour(bool value) {
    _showTour = value;
    prefs.setBool('ff_showTour', value);
  }

  bool _listSortOrder = false;
  bool get listSortOrder => _listSortOrder;
  set listSortOrder(bool value) {
    _listSortOrder = value;
  }

  bool _showVideoTimer = false;
  bool get showVideoTimer => _showVideoTimer;
  set showVideoTimer(bool value) {
    _showVideoTimer = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
