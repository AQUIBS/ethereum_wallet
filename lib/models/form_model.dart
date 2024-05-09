class FormModel {
  final double dividor;
  final int count;

  FormModel(
    this.dividor,
    this.count,
  );

  FormModel copyWith({
    double? dividor,
    int? count,
  }) {
    return FormModel(
      dividor ?? this.dividor,
      count ?? this.count,
    );
  }

  factory FormModel.def() {
    return FormModel(3.2, 0);
  }
}
