import 'package:equatable/equatable.dart';

import '../../../domain/entities/exercice.dart';

class ExerciceResponse extends Equatable {
  final String id;
  final String partie;
  final String nom;
  final List<Object> cible;
  final List<Object> equipement;
  final String img;
  final String description;

  const ExerciceResponse({required this.id,
    required this.partie,
    required this.nom,
    required this.cible,
    required this.equipement,
    required this.img,
    required this.description});

  @override
  List<Object?> get props =>
      [id, partie, nom, cible, equipement, img, description];

  Exercice toEntity(){
    return Exercice(id: id, partie: partie, nom: nom, cible: cible, equipement: equipement, img: img, description: description);
  }

  factory ExerciceResponse.fromMap(Map<String, dynamic> map){
    return ExerciceResponse(id: map['id'] ?? '',
        partie: map['partie'] ?? '',
        nom: map['nom'] ?? '',
        cible: List<Object>.from(map['cible'] ?? []),
        equipement: List<Object>.from(map['equipement'] ?? []),
        img: map['img'] ?? '',
        description: map['description'] ?? '');
  }
}
