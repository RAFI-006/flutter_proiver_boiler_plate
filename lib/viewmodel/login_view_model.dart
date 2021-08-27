import 'package:flutter/widgets.dart';
import 'package:flutterproviderboilerplate/get_it/locator.dart';
import 'package:flutterproviderboilerplate/models/generic_response_model.dart';
import 'package:flutterproviderboilerplate/services/login_service_imp.dart';
import 'package:flutterproviderboilerplate/utils/delegate.dart';
import 'package:stacked/stacked.dart';

enum ViewState { Loading, Completed, Error, Idle }

class LoginViewModel extends BaseViewModel {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;
  var username = TextEditingController();
  var password = TextEditingController();
  Delegate _delegate;
  var _loginServices = locator<LoginServiceImp>();


  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  LoginViewModel(this._delegate);

  Future<GenericResponse?> login() async {
    setState(ViewState.Loading);
    try {
      var response = await _loginServices.login(username.text, password.text);

      if (response.hasError ?? true) {
        _delegate.onError(response.message);
      } else {
        _delegate.onSuccess();
      }
    } catch (e) {
      _delegate.onError('our msg');
    }
  }
}
