package stdgo._internal.internal.testlog;
function setLogger(_impl:stdgo._internal.internal.testlog.Testlog_interface.Interface):Void {
        if (@:check2 stdgo._internal.internal.testlog.Testlog__logger._logger.load() != null) {
            throw stdgo.Go.toInterface(("testlog: SetLogger must be called only once" : stdgo.GoString));
        };
        @:check2 stdgo._internal.internal.testlog.Testlog__logger._logger.store(stdgo.Go.toInterface((stdgo.Go.setRef(_impl) : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>)));
    }
