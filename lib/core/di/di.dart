 import 'package:get_it/get_it.dart';
import 'package:riverpod_with_fetch_api/domain/mydata_domain.dart';
import 'package:riverpod_with_fetch_api/infrustructure/mydata_domain_i.dart';

final di = GetIt.instance;

Future<void> init()async{
 di.registerLazySingleton<MyDataDomain>(() => MyDataDomainI());
}