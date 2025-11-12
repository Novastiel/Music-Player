import 'package:flutter/material.dart';
import 'package:music_player/playlist/song.dart';

class PlaylistProvider extends ChangeNotifier{
  final List<Song> _playlist = [
    // song1
    Song(
      songName: "Chest Pain (I Love)",
      artistName: "Malcom Todd",
      albumArt: "assets/imgs/song1.png",
    ),

    //song2
    Song(
      songName: "Pasilyo",
      artistName: "SunKissed Lola",
      albumArt: "assets/imgs/song2.png",
    ),
  
    //song3
    Song(
      songName: "Daughter of the Sun",
      artistName: "VBND",
      albumArt: "assets/imgs/song3.png",
    )
  ];

  //current song
  int? _currentSongIndex;

  //get
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  //set
  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;

    //update ui
    notifyListeners();
  }
}