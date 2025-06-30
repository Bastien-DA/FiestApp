class User {
  final String userGuid;
  final String username;
  final String biologicalGender;
  final int age;
  final int height;
  final int weight;
  final String alcoholConsumption;
  final String? ppLink;

  User({
    required this.userGuid,
    required this.username,
    required this.biologicalGender,
    required this.age,
    required this.height,
    required this.weight,
    required this.alcoholConsumption,
    required this.ppLink,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userGuid: json['id'] as String,
      username: json['username'] as String,
      biologicalGender: json['biologicalGender'] as String,
      age: json['age'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
      alcoholConsumption: json['biologicalGender'] as String,
      ppLink: json['pp_link'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': userGuid,
      'username': username,
      'biologicalGender': biologicalGender,
      'age': age,
      'weight': weight,
      'height': height,
      'alcoholConsumption': alcoholConsumption,
      'ppLink': ppLink,
    };
  }
}
