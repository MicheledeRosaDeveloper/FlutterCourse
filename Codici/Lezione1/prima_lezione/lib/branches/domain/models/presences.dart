class Presence {
  final int branchId;
  final DateTime dateTime;
  final String username;
  Presence({
    required this.branchId,
    required this.dateTime,
    required this.username,
  });

  Presence copyWith({
    int? branchId,
    DateTime? dateTime,
    String? username,
  }) {
    return Presence(
      branchId: branchId ?? this.branchId,
      dateTime: dateTime ?? this.dateTime,
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'branchId': branchId});
    result.addAll({'dateTime': dateTime.millisecondsSinceEpoch});
    result.addAll({'username': username});
  
    return result;
  }

  factory Presence.fromMap(Map<String, dynamic> map) {
    return Presence(
      branchId: map['branchId']?.toInt() ?? 0,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      username: map['username'] ?? '',
    );
  }


  @override
  String toString() => 'Presence(branchId: $branchId, dateTime: $dateTime, username: $username)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Presence &&
      other.branchId == branchId &&
      other.dateTime == dateTime &&
      other.username == username;
  }

  @override
  int get hashCode => branchId.hashCode ^ dateTime.hashCode ^ username.hashCode;
}
