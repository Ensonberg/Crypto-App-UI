import 'package:crypto_app_ui/app/data/model/portofilo_data_model.dart';
import 'package:crypto_app_ui/app/data/model/wallet_data_model.dart';
import 'package:crypto_app_ui/app/module/portfolio/repository.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  // Get data from Repository;
  final List<WalletDataModel> _list = PortfolioRepository.list;

  List<WalletDataModel> get list => _list;

  final List<PortfolioDataModel> _portfolioList =
      PortfolioRepository.portfolioList;

  List<PortfolioDataModel> get portfolioList => _portfolioList;
}
