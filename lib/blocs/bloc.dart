import 'dart:async';
import 'validators.dart';

class Bloc extends Object with Validators {
  final _phoneNum =StreamController<String>();
  final _validationCode = StreamController<List<int>>();
  final _password = StreamController<List<int>>();

  //Add data to stream
  Stream<String> get phoneNum => _phoneNum.stream.transform(validatePhone);
  Stream<List<int>> get validationCode => _validationCode.stream.transform(validateValidationCode);
  Stream<List<int>> get password => _password.stream.transform(validatePassword);

  //Change data
  Function(String) get changePhone => _phoneNum.sink.add;
  Function(List<int>) get changeValidationCode => _validationCode.sink.add;
  Function(List<int>) get changePassword => _password.sink.add;

  //cleanup
  dispose(){
    _phoneNum.close();
    _validationCode.close();
    _password.close();
  }
}