
class UserState {
  String userName;
  int userAge;
  UserState({ this.userName="",  this.userAge=0});
  UserState copyWith({
    String? userName,
    int? userAge,
  }) {
    return UserState(
        userName: userName ?? this.userName, userAge: userAge ?? this.userAge);
  }

  factory UserState.fromJson(Map<String, dynamic> json) {
    return UserState(userName: json["userName"], userAge: json["userAge"]);
  }
  Map<String,dynamic>toJson()=>{
    "userName":userName,
    "userAge":userAge,
  };
  @override
  String toString(){
    return """
     userName:$userName,
     userAge:$userAge,
    """;
  }

}
