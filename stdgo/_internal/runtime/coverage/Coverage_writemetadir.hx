package stdgo._internal.runtime.coverage;
function writeMetaDir(_dir:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L22"
        if (!stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L23"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: no meta-data available (binary not built with -cover?)" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L25"
        return stdgo._internal.runtime.coverage.Coverage__emitmetadatatodirectory._emitMetaDataToDirectory(_dir?.__copy__(), stdgo._internal.runtime.coverage.Coverage__getcovmetalist._getCovMetaList());
    }
