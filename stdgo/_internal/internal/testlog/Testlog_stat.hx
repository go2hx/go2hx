package stdgo._internal.internal.testlog;
function stat(_name:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L66"
        {
            var _log = (stdgo._internal.internal.testlog.Testlog_logger.logger() : stdgo._internal.internal.testlog.Testlog_interface.Interface);
            if (_log != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L67"
                _log.stat(_name?.__copy__());
            };
        };
    }
