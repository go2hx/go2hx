package stdgo._internal.runtime.coverage;
function _emitMetaData():Void {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L124"
        if (stdgo._internal.runtime.coverage.Coverage__covprofilealreadyemitted._covProfileAlreadyEmitted) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L125"
            return;
        };
        var __tmp__ = stdgo._internal.runtime.coverage.Coverage__prepareformetaemit._prepareForMetaEmit(), _ml:stdgo.Slice<stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob.CovMetaBlob> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L128"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L129"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage meta-data prep failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L130"
            if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L131"
                throw stdgo.Go.toInterface(("meta-data write failure" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L134"
        if ((_ml.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L135"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("program not built with -cover\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L136"
            return;
        };
        stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir = stdgo._internal.os.Os_getenv.getenv(("GOCOVERDIR" : stdgo.GoString))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L140"
        if (stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L141"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("warning: GOCOVERDIR not set, no coverage data emitted\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L142"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L145"
        {
            var _err = (stdgo._internal.runtime.coverage.Coverage__emitmetadatatodirectory._emitMetaDataToDirectory(stdgo._internal.runtime.coverage.Coverage__gocoverdir._goCoverDir?.__copy__(), _ml) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L146"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("error: coverage meta-data emit failed: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L147"
                if (stdgo._internal.os.Os_getenv.getenv(("GOCOVERDEBUG" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/emit.go#L148"
                    throw stdgo.Go.toInterface(("meta-data write failure" : stdgo.GoString));
                };
            };
        };
    }
