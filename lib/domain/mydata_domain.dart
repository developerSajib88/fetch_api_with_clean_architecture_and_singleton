import 'package:riverpod_with_fetch_api/domain/model/mydata_model.dart';

abstract class MyDataDomain {
  Future<MyData?> getDataFromServer();
}