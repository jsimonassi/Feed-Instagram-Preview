

class ApplicationUser{

  String _id;
  String _name;
  String _instagramUser;
  String _email;
  String _urlImage;
  String _password;
  String _pushId;

  ApplicationUser();

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "id" : this._id,
      "name" : this._name,
      "email" : this._email,
      "instagram_user": this._instagramUser,
      "url_image": this._urlImage,
      "password": this._password,
      "push_id": this._pushId,
    };
    return map;
  }

  ApplicationUser mapToUser(Map<String, dynamic> mapUser){
    ApplicationUser user = new ApplicationUser();
    user.name = mapUser["name"];
    user.password = mapUser["password"];
    user.email = mapUser["email"];
    user.instagramUser = mapUser["instagram_user"];
    user.urlImage = mapUser["url_image"];
    user.id = mapUser["id"];
    user.pushId = mapUser["push_id"];
    return user;
  }


  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  String get pushId => _pushId;

  set pushId(String value) {
    _pushId = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get urlImage => _urlImage;

  set urlImage(String value) {
    _urlImage = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  set name(String value) {
    _name = value;
  }

  String get instagramUser => _instagramUser;

  set instagramUser(String value) {
    _instagramUser = value;
  }
}