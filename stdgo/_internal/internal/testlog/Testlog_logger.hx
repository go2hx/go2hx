package stdgo._internal.internal.testlog;
function logger():stdgo._internal.internal.testlog.Testlog_interface.Interface {
        var _impl = (stdgo._internal.internal.testlog.Testlog__logger._logger.load() : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L44"
        if (_impl == null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L45"
            return (null : stdgo._internal.internal.testlog.Testlog_interface.Interface);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testlog/log.go#L47"
        return ((stdgo.Go.typeAssert((_impl : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>)) : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>) : stdgo._internal.internal.testlog.Testlog_interface.Interface);
    }
