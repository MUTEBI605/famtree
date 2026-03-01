class FamilyTree {
  final String id;
  final String name;
  final String createdBy;
  final DateTime createdAt;
  final List<String> members;

  FamilyTree({
    required this.id,
    required this.name,
    required this.createdBy,
    required this.createdAt,
    required this.members,
  });

  factory FamilyTree.fromMap(String id, Map<String, dynamic> map) {
    return FamilyTree(
      id: id,
      name: map['name'] ?? '',
      createdBy: map['createdBy'] ?? '',
      createdAt: DateTime.now(), // simplified for now
      members: List<String>.from(map['members'] ?? []),
    );
  }
}
