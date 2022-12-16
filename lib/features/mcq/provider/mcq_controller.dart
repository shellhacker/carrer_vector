import 'package:carrer_vector/features/mcq/repo_services/mcq_base_api_services.dart';
import 'package:flutter/cupertino.dart';

import '../model/responsemodel.dart';

class McqController extends ChangeNotifier {
  bool abilitiesBool = false;
  @override
  notifyListeners();
  mcqBaseFunction(context) async {
    McqBaseModel? response =
        await McqBaseService.instance.mcqBaseapiCallingLogin(context);
    print("dfvkdfkc${response!.links}");
  }
}
