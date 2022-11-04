import 'dart:convert';

class Branch {
  final String name;
  final String address;
  final bool isCoWorking;
  final String imagePath;
  Branch({
    required this.name,
    required this.address,
    required this.isCoWorking,
    required this.imagePath,
  });

  Branch copyWith({
    String? name,
    String? address,
    bool? isCoWorking,
    String? imagePath,
  }) {
    return Branch(
      name: name ?? this.name,
      address: address ?? this.address,
      isCoWorking: isCoWorking ?? this.isCoWorking,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'address': address});
    result.addAll({'isCoWorking': isCoWorking});
    result.addAll({'imagePath': imagePath});

    return result;
  }

  factory Branch.fromMap(Map<String, dynamic> map) {
    return Branch(
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      isCoWorking: map['isCoWorking'] ?? false,
      imagePath: map['imagePath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Branch.fromJson(String source) => Branch.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Branch(name: $name, address: $address, isCoWorking: $isCoWorking, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Branch &&
        other.name == name &&
        other.address == address &&
        other.isCoWorking == isCoWorking &&
        other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        address.hashCode ^
        isCoWorking.hashCode ^
        imagePath.hashCode;
  }
}
