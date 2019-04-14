

class LoginResponse {
  Errors _errors;
  String _message;
  List<Data> _data;
  License _license;

  LoginResponse(
      {Errors errors, String message, List<Data> data, License license}) {
    this._errors = errors;
    this._message = message;
    this._data = data;
    this._license = license;
  }

  Errors get errors => _errors;

  set errors(Errors errors) => _errors = errors;

  String get message => _message;

  set message(String message) => _message = message;

  List<Data> get data => _data;

  set data(List<Data> data) => _data = data;

  License get license => _license;

  set license(License license) => _license = license;

  LoginResponse.fromJson(Map<String, dynamic> json) {
    _errors =
    json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
    _message = json['message'];
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
    _license =
    json['license'] != null ? new License.fromJson(json['license']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._errors != null) {
      data['errors'] = this._errors.toJson();
    }
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    if (this._license != null) {
      data['license'] = this._license.toJson();
    }
    return data;
  }
}

class Errors {
  List<String> _account;

  Errors({List<String> account}) {
    this._account = account;
  }

  List<String> get account => _account;

  set account(List<String> account) => _account = account;

  Errors.fromJson(Map<String, dynamic> json) {
    _account = json['Account'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Account'] = this._account;
    return data;
  }
}

class Data {
  String _userId;
  String _email;
  Null _userName;
  String _firstName;
  String _lastName;
  String _shortName;
  String _profileByte;
  bool _isProfileImage;
  String _phoneNumber;
  String _token;
  String _refreshToken;
  Null _documentId;
  bool _emailConfirmed;
  String _userTimeZone;

  Data(
      {String userId,
        String email,
        Null userName,
        String firstName,
        String lastName,
        String shortName,
        String profileByte,
        bool isProfileImage,
        String phoneNumber,
        String token,
        String refreshToken,
        Null documentId,
        bool emailConfirmed,
        String userTimeZone}) {
    this._userId = userId;
    this._email = email;
    this._userName = userName;
    this._firstName = firstName;
    this._lastName = lastName;
    this._shortName = shortName;
    this._profileByte = profileByte;
    this._isProfileImage = isProfileImage;
    this._phoneNumber = phoneNumber;
    this._token = token;
    this._refreshToken = refreshToken;
    this._documentId = documentId;
    this._emailConfirmed = emailConfirmed;
    this._userTimeZone = userTimeZone;
  }

  String get userId => _userId;

  set userId(String userId) => _userId = userId;

  String get email => _email;

  set email(String email) => _email = email;

  Null get userName => _userName;

  set userName(Null userName) => _userName = userName;

  String get firstName => _firstName;

  set firstName(String firstName) => _firstName = firstName;

  String get lastName => _lastName;

  set lastName(String lastName) => _lastName = lastName;

  String get shortName => _shortName;

  set shortName(String shortName) => _shortName = shortName;

  String get profileByte => _profileByte;

  set profileByte(String profileByte) => _profileByte = profileByte;

  bool get isProfileImage => _isProfileImage;

  set isProfileImage(bool isProfileImage) => _isProfileImage = isProfileImage;

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;

  String get token => _token;

  set token(String token) => _token = token;

  String get refreshToken => _refreshToken;

  set refreshToken(String refreshToken) => _refreshToken = refreshToken;

  Null get documentId => _documentId;

  set documentId(Null documentId) => _documentId = documentId;

  bool get emailConfirmed => _emailConfirmed;

  set emailConfirmed(bool emailConfirmed) => _emailConfirmed = emailConfirmed;

  String get userTimeZone => _userTimeZone;

  set userTimeZone(String userTimeZone) => _userTimeZone = userTimeZone;

  Data.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _email = json['email'];
    _userName = json['userName'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _shortName = json['shortName'];
    _profileByte = json['profileByte'];
    _isProfileImage = json['isProfileImage'];
    _phoneNumber = json['phoneNumber'];
    _token = json['token'];
    _refreshToken = json['refreshToken'];
    _documentId = json['documentId'];
    _emailConfirmed = json['emailConfirmed'];
    _userTimeZone = json['userTimeZone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['email'] = this._email;
    data['userName'] = this._userName;
    data['firstName'] = this._firstName;
    data['lastName'] = this._lastName;
    data['shortName'] = this._shortName;
    data['profileByte'] = this._profileByte;
    data['isProfileImage'] = this._isProfileImage;
    data['phoneNumber'] = this._phoneNumber;
    data['token'] = this._token;
    data['refreshToken'] = this._refreshToken;
    data['documentId'] = this._documentId;
    data['emailConfirmed'] = this._emailConfirmed;
    data['userTimeZone'] = this._userTimeZone;
    return data;
  }
}

class License {
  String _acknowledgementMessage;
  String _informationMessage;
  String _displayRedRibbon;
  List<FeaturesSupported> _featuresSupported;
  String _supportedFileTypes;
  bool _expired;

  License(
      {String acknowledgementMessage,
        String informationMessage,
        String displayRedRibbon,
        List<FeaturesSupported> featuresSupported,
        String supportedFileTypes,
        bool expired}) {
    this._acknowledgementMessage = acknowledgementMessage;
    this._informationMessage = informationMessage;
    this._displayRedRibbon = displayRedRibbon;
    this._featuresSupported = featuresSupported;
    this._supportedFileTypes = supportedFileTypes;
    this._expired = expired;
  }

  String get acknowledgementMessage => _acknowledgementMessage;

  set acknowledgementMessage(Null acknowledgementMessage) =>
      _acknowledgementMessage = acknowledgementMessage;

  String get informationMessage => _informationMessage;

  set informationMessage(String informationMessage) =>
      _informationMessage = informationMessage;

  String get displayRedRibbon => _displayRedRibbon;

  set displayRedRibbon(String displayRedRibbon) =>
      _displayRedRibbon = displayRedRibbon;

  List<FeaturesSupported> get featuresSupported => _featuresSupported;

  set featuresSupported(List<FeaturesSupported> featuresSupported) =>
      _featuresSupported = featuresSupported;

  String get supportedFileTypes => _supportedFileTypes;

  set supportedFileTypes(String supportedFileTypes) =>
      _supportedFileTypes = supportedFileTypes;

  bool get expired => _expired;

  set expired(bool expired) => _expired = expired;

  License.fromJson(Map<String, dynamic> json) {
    _acknowledgementMessage = json['acknowledgementMessage'];
    _informationMessage = json['informationMessage']!=null?json['informationMessage']:"";
    _displayRedRibbon = json['displayRedRibbon']!=null?json['displayRedRibbon']:"";
    if (json['featuresSupported'] != null) {
      _featuresSupported = new List<FeaturesSupported>();
      json['featuresSupported'].forEach((v) {
        _featuresSupported.add(new FeaturesSupported.fromJson(v));
      });
    }
    _supportedFileTypes = json['supportedFileTypes'];
    _expired = json['expired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acknowledgementMessage'] = this._acknowledgementMessage;
    data['informationMessage'] = this._informationMessage;
    data['displayRedRibbon'] = this._displayRedRibbon;
    if (this._featuresSupported != null) {
      data['featuresSupported'] =
          this._featuresSupported.map((v) => v.toJson()).toList();
    }
    data['supportedFileTypes'] = this._supportedFileTypes;
    data['expired'] = this._expired;
    return data;
  }
}

class FeaturesSupported {
  String _id;
  String _featureName;
  bool _placeholderExpired;

  FeaturesSupported({String id, String featureName, bool placeholderExpired}) {
    this._id = id;
    this._featureName = featureName;
    this._placeholderExpired = placeholderExpired;
  }

  String get id => _id;

  set id(String id) => _id = id;

  String get featureName => _featureName;

  set featureName(String featureName) => _featureName = featureName;

  bool get placeholderExpired => _placeholderExpired;

  set placeholderExpired(bool placeholderExpired) =>
      _placeholderExpired = placeholderExpired;

  FeaturesSupported.fromJson(Map<String, dynamic> json) {
    _id = json['Id'];
    _featureName = json['featureName'];
    _placeholderExpired = json['placeholderExpired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this._id;
    data['featureName'] = this._featureName;
    data['placeholderExpired'] = this._placeholderExpired;
    return data;
  }
}
