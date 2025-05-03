package stdgo._internal.runtime.coverage;
function writeCountersDir(_dir:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L53"
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode != ((3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L54"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("WriteCountersDir invoked for program built with -covermode=%s (please use -covermode=atomic)" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L56"
        return stdgo._internal.runtime.coverage.Coverage__emitcounterdatatodirectory._emitCounterDataToDirectory(_dir?.__copy__());
    }
