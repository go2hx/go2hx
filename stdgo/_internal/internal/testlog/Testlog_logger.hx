package stdgo._internal.internal.testlog;
function logger():stdgo._internal.internal.testlog.Testlog_interface.Interface {
        var _impl = (@:check2 stdgo._internal.internal.testlog.Testlog__logger._logger.load() : stdgo.AnyInterface);
        if (_impl == null) {
            return (null : stdgo._internal.internal.testlog.Testlog_interface.Interface);
        };
        return ((stdgo.Go.typeAssert((_impl : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>)) : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>) : stdgo._internal.internal.testlog.Testlog_interface.Interface);
    }
