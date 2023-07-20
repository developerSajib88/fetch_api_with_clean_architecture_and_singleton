import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/model/mydata_model.dart';
import '../../domain/mydata_domain.dart';

class MyDataState extends StateNotifier<MyData?>{

     final MyDataDomain _myDataDomain;

     MyDataState(this._myDataDomain):super(MyData.init());

     Future getData()async{
          state = await _myDataDomain.getDataFromServer();
     }

}