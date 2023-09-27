import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity dataConnectionChecker;

  NetworkInfoImpl(this.dataConnectionChecker);

  @override
  Future<bool> get isConnected async{
    var check = await dataConnectionChecker.checkConnectivity();

    if(check==ConnectivityResult.none){
      return false;
    }else{
      return true;
    }

  }
}