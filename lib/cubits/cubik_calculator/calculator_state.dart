class Cubiccalkulator {
  int a;
  int b;
  int result;
  Cubiccalkulator({required this.a, required this.b, required this.result});
  Cubiccalkulator copyWith({int? a, int? b, int? result}) {
    return Cubiccalkulator(
        a: a ?? this.a, b: b ?? this.b, result: result ?? this.result);
  }

  factory Cubiccalkulator.fromJson(Map<String, dynamic> json) {
    return Cubiccalkulator(a: json['a'], b: json['b'], result: json['result']);
  }
  Map<String, dynamic> toJson() => {'a': a, 'b': b, 'result': result};
  @override
  String toString() {
    return """
       a:$a,
       b:$b, 
       result:$result
    """;
  }
}
