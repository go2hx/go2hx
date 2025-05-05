package stdgo._internal.internal.testlog;
function setLogger(_impl:stdgo._internal.internal.testlog.Testlog_interface.Interface):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L34"
        if (stdgo._internal.internal.testlog.Testlog__logger._logger.load() != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L35"
            throw stdgo.Go.toInterface(("testlog: SetLogger must be called only once" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L37"
        stdgo._internal.internal.testlog.Testlog__logger._logger.store(stdgo.Go.toInterface((stdgo.Go.setRef(_impl) : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>)));
    }
