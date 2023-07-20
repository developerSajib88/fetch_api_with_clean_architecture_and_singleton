import 'package:riverpod_with_fetch_api/domain/model/mydata_model.dart';
import 'package:riverpod_with_fetch_api/domain/mydata_domain.dart';
import 'package:http/http.dart' as http;

class MyDataDomainI extends MyDataDomain{


  @override
  Future<MyData?> getDataFromServer()async{
    String apiLink = "https://dummyjson.com/posts";
    http.Response response = await http.get(Uri.parse(apiLink));

    if(response.statusCode == 200){
      return myDataFromJson(response.body);
    }
  }


}