class Lucky {
  String lucky;

  Lucky({this.lucky});

  Lucky.newLucky(String luck) {
    this.lucky = luck;
  }

  factory Lucky.fromJson(Map<dynamic, dynamic> json) {
    return Lucky(
      lucky: json['frase'] as String,
    );
  }
}
