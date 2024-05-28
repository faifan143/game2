class UserModel {
  final int id;
  final String name;
  final String password;
  final List<LogModel> logs;

  UserModel({
    required this.id,
    required this.name,
    required this.password,
    required this.logs,
  });



  factory UserModel.fromJson(Map<String, dynamic> json) {
   
   
    List<dynamic> logsList = json['logs'] ?? [];
    List<LogModel> logs =
        logsList.map((logJson) => LogModel.fromJson(logJson)).toList();



    return UserModel(
      id: json['id'],
      name: json['name'],
      password: json['password'], 
      logs: logs,
    );
  }
}

class LogModel {
  final int id;
  final int score;
  final int mistakes;
  final DateTime date;

  LogModel({
    required this.id,
    required this.score,
    required this.mistakes,
    required this.date,
  });

  factory LogModel.fromJson(Map<String, dynamic> json) {
    return LogModel(
      id: json['id'],
      score: json['score'],
      mistakes: json['mistakes'],
      date: DateTime.parse(json['date']),
    );
  }
}
