import 'package:dio/dio.dart';
import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:freshproject/api/api_model/exchange_rate_model/exchnage_rate_model.dart';
import 'package:freshproject/helper/data_helper.dart';
import 'package:freshproject/services/api_url.dart';
import 'package:freshproject/services/method.dart';
import 'package:freshproject/services/rest_client.dart';

class ExchangeRateController extends BaseController{
  Future<ExchnageRateModel>callexchangerateApi({
  required String  amount,
  required  String  from,
  required String  to,
  required String  paymentMethod,
  required String type, 
  }
  )async{
    ExchnageRateModel ? excahngeratedata;
    try{
final params =<String , dynamic>{};
final map =<String , dynamic>{};
  map["amount"]=amount;
  map['from']=from;
  map["to"]=to;
  map["paymentMethod"]=paymentMethod;
  map["type"]=type;
  final formData = FormData.fromMap({
    
  });
   restClient = RestClient();
      final result = await restClient!
          .request(ApiUrl.exchangerate, Method.POST, params, map, formData);
          DataHelper.debugPrintLog("loginResult", result);
      if (result != null) {
        excahngeratedata = ExchnageRateModel.fromJson(result);
        return excahngeratedata;
      }
      }catch(e){
    rethrow;
    }
      return excahngeratedata!;
  }
}