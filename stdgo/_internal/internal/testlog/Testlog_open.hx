package stdgo._internal.internal.testlog;
function open(_name:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L59"
        {
            var _log = (stdgo._internal.internal.testlog.Testlog_logger.logger() : stdgo._internal.internal.testlog.Testlog_interface.Interface);
            if (_log != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L60"
                _log.open(_name?.__copy__());
            };
        };
    }
