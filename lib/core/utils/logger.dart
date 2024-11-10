class Logger {
  static LogMode _logMode = LogMode.debug;

  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
    }
  }
}

enum LogMode { debug, live }
