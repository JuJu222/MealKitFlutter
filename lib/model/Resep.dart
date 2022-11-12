import 'dart:ui';

class Resep {
  String? image;
  String? menuName;
  String? menuPortion;
  String? menuPrice;
  String? menuPreference;
  String? menuDescription;
  List<String>? menuIngredients;
  List<String>? menuTools;
  String? menuReview;
  List<String>? menuProcedure;

  Resep({
    required this.image,
    required this.menuName,
    required this.menuPortion,
    required this.menuPrice,
    required this.menuPreference,
    required this.menuDescription,
    required this.menuIngredients,
    required this.menuTools,
    required this.menuReview,
    required this.menuProcedure,
  });
}
