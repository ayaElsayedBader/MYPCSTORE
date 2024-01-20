
import '../model/register_model.dart';

abstract class RepositoryRegister {
  Future< UserModel>    addUser(
      {required name,
          required  email,
          required  phone,
          required nationalId,
          required passWord,
          required userImage ,   required token,});


}
