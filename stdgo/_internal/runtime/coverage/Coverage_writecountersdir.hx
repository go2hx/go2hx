package stdgo._internal.runtime.coverage;
function writeCountersDir(_dir:stdgo.GoString):stdgo.Error {
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode != ((3 : stdgo._internal.internal.coverage.Coverage_countermode.CounterMode))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("WriteCountersDir invoked for program built with -covermode=%s (please use -covermode=atomic)" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString)));
        };
        return stdgo._internal.runtime.coverage.Coverage__emitcounterdatatodirectory._emitCounterDataToDirectory(_dir?.__copy__());
    }
