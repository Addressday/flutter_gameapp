import 'package:flutter_app/model/game_models/cover.dart';
import 'package:flutter_app/model/game_models/game.dart';
import 'package:flutter_app/model/game_models/mode.dart';
import 'package:flutter_app/model/game_models/player_perspective.dart';
import 'package:flutter_app/model/game_models/screenshot.dart';
import 'package:flutter_app/model/game_models/video.dart';

class GameModel {
  final int id;
  final CoverModel cover;
  final int createAt;
  final int firstRelease;
  final List<ModeModel> modes;
  final List<GenreModel> genres;
  final List<PlayerPerspectiveModel> perspectives;
  final double popularity;
  final List<ScreenshotModel> screenshots;
  final String summary;
  final List<VideoModel> videos;
  final double rating;
  final String name;

  GameModel(
      this.id,
      this.cover,
      this.createAt,
      this.firstRelease,
      this.modes,
      this.genres,
      this.perspectives,
      this.popularity,
      this.screenshots,
      this.summary,
      this.videos,
      this.rating,
      this.name);

  GameModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        cover = json["cover"],
        createAt = json["created_at"],
        firstRelease = json["first_release_date"],
        modes = (json["game_modes"] as List)
            .map((i) => ModeModel.fromJson(i))
            .toList(),
        genres = (json["genres"] as List)
            .map((i) => GenreModel.fromJson(i))
            .toList(),
        perspectives = (json["player_perspectives"] as List)
            .map((i) => PlayerPerspectiveModel.fromJson(i))
            .toList(),
        popularity = json["popolarity"],
        screenshots = (json["screenshots"] as List)
            .map((i) => ScreenshotModel.fromJson(i))
            .toList(),
        summary = json["summary"],
        videos = (json["videos"] as List)
            .map((i) => VideoModel.fromJson(i))
            .toList(),
        rating = json["rating"],
        name = json["name"];
}
