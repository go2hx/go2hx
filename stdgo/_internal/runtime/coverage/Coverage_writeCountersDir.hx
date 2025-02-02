package stdgo._internal.runtime.coverage;
function writeCountersDir(_dir:stdgo.GoString):stdgo.Error {
        if (stdgo._internal.runtime.coverage.Coverage__cmode._cmode != ((3 : stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("WriteCountersDir invoked for program built with -covermode=%s (please use -covermode=atomic)" : stdgo.GoString), stdgo.Go.toInterface((stdgo._internal.runtime.coverage.Coverage__cmode._cmode.string() : stdgo.GoString)));
        };
        return stdgo._internal.runtime.coverage.Coverage__emitCounterDataToDirectory._emitCounterDataToDirectory(_dir?.__copy__());
    }
