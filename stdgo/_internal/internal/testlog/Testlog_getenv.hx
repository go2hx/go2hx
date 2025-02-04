package stdgo._internal.internal.testlog;
function getenv(_name:stdgo.GoString):Void {
        {
            var _log = (stdgo._internal.internal.testlog.Testlog_logger.logger() : stdgo._internal.internal.testlog.Testlog_interface.Interface);
            if (_log != null) {
                _log.getenv(_name?.__copy__());
            };
        };
    }
