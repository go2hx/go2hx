package stdgo._internal.runtime.coverage;
function _emitCounterData():Void {
        if (((stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir == ((stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed : Bool) || stdgo._internal.runtime.coverage.Coverage__covprofilealreadyemitted._covProfileAlreadyEmitted : Bool)) {
            return;
        };
        {
            var _err = (stdgo._internal.runtime.coverage.Coverage__emitcounterdatatodirectory._emitCounterDataToDirectory(stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir?.__copy__()) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage counter data emit failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
                    throw stdgo.Go.toInterface(("counter-data write failure" : stdgo.GoString));
                };
            };
        };
    }
