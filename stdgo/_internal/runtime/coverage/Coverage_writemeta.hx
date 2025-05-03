package stdgo._internal.runtime.coverage;
function writeMeta(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L35"
        if (_w == null) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L36"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: nil writer in WriteMeta" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L38"
        if (!stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L39"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: no meta-data available (binary not built with -cover?)" : stdgo.GoString));
        };
        var _ml = stdgo._internal.runtime.coverage.Coverage__getcovmetalist._getCovMetaList();
        //"file:///home/runner/.go/go1.21.3/src/runtime/coverage/apis.go#L42"
        return stdgo._internal.runtime.coverage.Coverage__writemetadata._writeMetaData(_w, _ml, stdgo._internal.runtime.coverage.Coverage__cmode._cmode, stdgo._internal.runtime.coverage.Coverage__cgran._cgran, stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__());
    }
