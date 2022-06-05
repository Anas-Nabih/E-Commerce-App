import 'package:e_commerse_app_uising_getx/res/storge/preference/const.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorage{


  /// write
  setSelectedLanguage(String value) async{
    await GetStorage().write(Const.APP_LOCAL, value);
  }

  /// read
   Future<String>  get getSelectedLanguage async {
    return await GetStorage().read(Const.APP_LOCAL);
   }



}