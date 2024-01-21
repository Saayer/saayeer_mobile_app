import 'package:saayer/core/app_config/app_config.dart';
import 'package:saayer/core/utils/enums.dart';

void main() {
  AppConfig appConfig =
      AppConfig(flavorType: FlavorType.STAGING, appName: 'saayer stg');
  appConfig.initializeApp();
}
