package stdgo._internal.runtime.coverage;
function _emitCounterData():Void {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L282"
        if (((stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir == ((stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed : Bool) || stdgo._internal.runtime.coverage.Coverage__covprofilealreadyemitted._covProfileAlreadyEmitted : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L283"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L285"
        {
            var _err = (stdgo._internal.runtime.coverage.Coverage__emitcounterdatatodirectory._emitCounterDataToDirectory(stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L286"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage counter data emit failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L287"
                if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L288"
                    throw stdgo.Go.toInterface(("counter-data write failure" : stdgo.GoString));
                };
            };
        };
    }
