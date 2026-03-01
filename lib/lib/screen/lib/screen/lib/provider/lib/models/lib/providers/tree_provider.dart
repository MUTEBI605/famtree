import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/tree.dart';

final userTreesProvider = StreamProvider.autoDispose<List<FamilyTree>>((ref) {
  final user = ref.watch(currentUserProvider);
  if (user == null) return Stream.value([]);

  return FirebaseFirestore.instance
      .collection('trees')
      .where('members', arrayContains: user.uid)
      .orderBy('createdAt', descending: true)
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => FamilyTree.fromMap(doc.id, doc.data()))
          .toList());
});
