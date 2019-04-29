class User{

  String  username ;

  String  password ;

  String  email ;

  int id;



  User(this.username ,this.password , this.email );

  User.map(dynamic obj){

    this.username = obj['username'];

    this.password = obj['password'];

    this.email = obj['email'];

    this.id = obj['id'];

  }

  
  String get _username => username;

  String get _password => password;

  String get _email => email;

  int get _id => id;



  Map<String , dynamic> toMap(){

    var map = new Map<String , dynamic>();

    map['username'] = _username;

    map['password'] = _password;

    map['email'] = _email;

    if(id != null){
      map['id'] = _id;
    }
    return map;
  }

  User.fromMap(Map<String , dynamic>map){

    this.username = map['username'];

    this.password = map['password'];

    this.email = map['email'];

    this.id = map['id'];

  }

}