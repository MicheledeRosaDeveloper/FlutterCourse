import 'dart:convert';

class Branch {
  final String name;
  final String address;
  final bool isCoWorking;
  Branch({
    required this.name,
    required this.address,
    required this.isCoWorking,
  });

  Branch copyWith({
    String? name,
    String? address,
    bool? isCoWorking,
  }) {
    return Branch(
      name: name ?? this.name,
      address: address ?? this.address,
      isCoWorking: isCoWorking ?? this.isCoWorking,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'address': address});
    result.addAll({'isCoWorking': isCoWorking});
  
    return result;
  }

  factory Branch.fromMap(Map<String, dynamic> map) {
    return Branch(
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      isCoWorking: map['isCoWorking'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Branch.fromJson(String source) => Branch.fromMap(json.decode(source));

  @override
  String toString() => 'Branch(name: $name, address: $address, isCoWorking: $isCoWorking)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Branch &&
      other.name == name &&
      other.address == address &&
      other.isCoWorking == isCoWorking;
  }

  @override
  int get hashCode => name.hashCode ^ address.hashCode ^ isCoWorking.hashCode;
}
