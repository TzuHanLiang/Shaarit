import 'dart:async';

class Validators{
  final validatePhone = StreamTransformer<String, String>.fromHandlers(
    handleData: (phone, sink){
      if(phone.length == 9 && phone.startsWith('0')){
        sink.add(phone);
      }else{
        sink.addError('Enter a valid phone number');
      }
    }
  );

  final validateValidationCode = StreamTransformer<List<int>, List<int>>.fromHandlers(
    handleData: (validationCode, sink){
      if(validationCode.length == 6){
        sink.add(validationCode);
      }else{
        sink.addError('ValidationCode only contains 6 number');
      }
    }
  );

  final validatePassword = StreamTransformer<List<int>, List<int>>.fromHandlers(
    handleData: (password, sink){
      if(password.length == 6){
        sink.add(password);
      }else{
        sink.addError('Password only contains 6 number');
      }
    }
  );
}