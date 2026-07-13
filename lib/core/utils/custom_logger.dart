import 'package:logger/logger.dart';

enum DeviceLogLevel { info, warning, error, debug, verbose }

class CustomLogger {
  static final Logger _logger = Logger();

  static void logToLogcat({
    required String tag,
    required String subTag,
    required String message,
    required DeviceLogLevel logLevel,
  }) {
    // Log to console using logger library
    switch (logLevel) {
      case DeviceLogLevel.info:
        _logger.i('$tag.$subTag: $message');
        break;
      case DeviceLogLevel.warning:
        _logger.w('$tag.$subTag: $message');
        break;
      case DeviceLogLevel.error:
        _logger.e('$tag.$subTag: $message');
        break;
      case DeviceLogLevel.debug:
        _logger.d('$tag.$subTag: $message');
        break;
      case DeviceLogLevel.verbose:
        _logger.v('$tag.$subTag: $message');
        break;
    }
  }

  // Prettified logs in terminal
  static void logInfo(dynamic info) {
    _logger.i(info);
  }

  static void logWarning(dynamic warning) {
    _logger.w(warning);
  }

  static void logError(dynamic error) {
    _logger.e(error);
  }
}
