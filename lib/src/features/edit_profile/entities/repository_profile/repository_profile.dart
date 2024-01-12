

import '../../../register/entities/model/register_model.dart';
  abstract class RepositoryProfile{
Future< UserModel>    profile();
Future< UserModel>    update(   {required name, required phone, required email});
}
