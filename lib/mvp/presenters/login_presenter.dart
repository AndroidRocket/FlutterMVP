

import 'package:fulltoken/data/RestApiHelper.dart';
import 'package:fulltoken/mvp/models/requests/SignupRequest.dart';
import 'package:fulltoken/mvp/models/responses/LoginResponse.dart';
import 'package:fulltoken/utils/Constants.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

abstract class LoginWidgetContract {
  void onLoginSuccess(LoginResponse user);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginWidgetContract _view;
  RestWebCaller api = new RestWebCaller();

  LoginPagePresenter(this._view);

  getPrivateKey() async {
    final httpClient = Client();
    final client = Web3Client(RPC_URL, httpClient)..printErrors = true;

    final credentials = Credentials.fromPrivateKeyHex(PRIVATE_KEY);
    print(credentials.privateKey);
    print(credentials.publicKey);
    _view.onLoginSuccess(null);
  }

  doLogin(SignInRequest request) async {
    api.login(request).then((user) {
      handleLoginResponse(user);
    }).catchError((onError) => _view.onLoginError(onError.toString()));
  }

  handleLoginResponse(LoginResponse user) {
//    var db = new DatabaseHelper();
//    await db.saveUser(user);
    _view.onLoginSuccess(user);
  }
}
