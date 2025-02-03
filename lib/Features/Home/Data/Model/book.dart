import 'volume_info.dart';

class Book {
  String? id;
  String? selfLink;
  VolumeInfo? volumeInfo;

  Book({
    this.id,
    this.selfLink,
    this.volumeInfo,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json['id'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      );
}
