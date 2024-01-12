import '../helper/cache_helper.dart';

var token;
var nationalId;
var savedNationalId = CacheHelper.getData(key: "national_id");

var newToken=  CacheHelper.getData(
key: "newToken",);
var onBoarding = CacheHelper.getData(key: "onBoarding");


