package stdgo._internal.internal.testlog;
function getenv(_name:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L52"
        {
            var _log = (stdgo._internal.internal.testlog.Testlog_logger.logger() : stdgo._internal.internal.testlog.Testlog_interface.Interface);
            if (_log != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L53"
                _log.getenv(_name?.__copy__());
            };
        };
    }
