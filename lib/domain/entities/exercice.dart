import 'package:equatable/equatable.dart';

class Exercice extends Equatable {
  final String id;
  final String partie;
  final String nom;
  final List<Object> cible;
  final List<Object> equipement;
  final String img;
  final String description;

  const Exercice({required this.id,
    required this.partie,
    required this.nom,
    required this.cible,
    required this.equipement,
    required this.img,
    required this.description});

  @override
  List<Object?> get props =>
      [id, partie, nom, cible, equipement, img, description];

}
