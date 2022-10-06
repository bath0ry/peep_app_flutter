class Albums {
  Albums({
    required this.items,
  });

  final List<AlbumModel> items;

  factory Albums.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data = json["data"]["artist"]["discography"]["albums"];

    return Albums(
      items: List<AlbumModel>.from(
          data["items"].map((x) => AlbumModel.fromJson(x))),
    );
  }
}

class AlbumModel {
  AlbumModel({
    required this.id,
    required this.uri,
    required this.name,
    required this.type,
    required this.year,
    required this.imagesUrl,
  });

  final String id;
  final String uri;
  final String name;
  final String type;
  final int year;
  final List<String> imagesUrl;

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data =
        json["releases"]["items"]; //TODO: acessar index 0 aqui

    return AlbumModel(
      id: data["id"],
      uri: data["uri"],
      name: data["name"],
      type: data["type"],
      year: data["date"]["year"],
      imagesUrl: List<String>.from(
          data["coverArt"]["sources"].map((x) => AlbumModel.fromJson(x))),
    );
  }
}
