class WallpaperModel {
  String photographer;
  String photographeurl;
  int photographerid;
  SrcModel src;
  WallpaperModel(
      {this.photographer,
      this.photographerid,
      this.photographeurl,
      this.src});
  factory WallpaperModel.forMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
      src: SrcModel.forMap(jsonData["src"]),
      photographer: jsonData["photographer"],
      photographeurl: jsonData["photographer_url"],
      photographerid: jsonData["photographer_id"],
    );
  }
}

class SrcModel {
  String original;
  String portrait;
  SrcModel({this.original, this.portrait});
  factory SrcModel.forMap(Map<String, dynamic> jsonData) {
    return SrcModel(
      original: jsonData['original'],
      portrait: jsonData['portrait'],
    );
  }
}
