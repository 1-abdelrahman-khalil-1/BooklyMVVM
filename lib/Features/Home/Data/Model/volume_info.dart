import 'image_links.dart';

class VolumeInfo {
  String? title;
  List<dynamic>? authors;
  ImageLinks? imageLinks;
  String? previewLink;
  VolumeInfo({
    this.title,
    this.authors,
    this.imageLinks,
    this.previewLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        authors: json['authors'],
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
        previewLink: json['previewLink'] as String?,
      );
}
