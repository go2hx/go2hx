package stdgo._internal.runtime.coverage;
function writeMeta(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        if (_w == null) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: nil writer in WriteMeta" : stdgo.GoString));
        };
        if (!stdgo._internal.runtime.coverage.Coverage__finalhashcomputed._finalHashComputed) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: no meta-data available (binary not built with -cover?)" : stdgo.GoString));
        };
        var _ml = stdgo._internal.runtime.coverage.Coverage__getcovmetalist._getCovMetaList();
        return stdgo._internal.runtime.coverage.Coverage__writemetadata._writeMetaData(_w, _ml, stdgo._internal.runtime.coverage.Coverage__cmode._cmode, stdgo._internal.runtime.coverage.Coverage__cgran._cgran, stdgo._internal.runtime.coverage.Coverage__finalhash._finalHash?.__copy__());
    }
