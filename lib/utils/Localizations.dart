import 'package:get/get.dart';

class MyTranslation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en':{
      'hello':'Hello World'
    },
    'ar':{
      'hello':"مرحبا بالعالم"
    },
    'pt':{
      'hello': "Olá Mundo"
    }
  };
}