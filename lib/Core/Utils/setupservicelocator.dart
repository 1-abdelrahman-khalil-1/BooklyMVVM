import 'package:bookly/Core/Utils/api_services.dart';
import 'package:bookly/Features/DetailsForBook/Data/repo/detailsrepoImplentation.dart';
import 'package:bookly/Features/Home/Data/repo/homerepoimplement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
final get_it = GetIt.instance;

void Setupservicelocator (){
get_it.registerSingleton<ApiServices>(ApiServices(Dio()));

get_it.registerSingleton<Homerepoimplement>(Homerepoimplement(get_it.get<ApiServices>()));
get_it.registerSingleton<Detailsrepoimplentation>(Detailsrepoimplentation(get_it.get<ApiServices>()));

}