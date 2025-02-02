package stdgo._internal.runtime.coverage;
function writeMetaDir(_dir:stdgo.GoString):stdgo.Error {
        if (!stdgo._internal.runtime.coverage.Coverage__finalHashComputed._finalHashComputed) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("error: no meta-data available (binary not built with -cover?)" : stdgo.GoString));
        };
        return stdgo._internal.runtime.coverage.Coverage__emitMetaDataToDirectory._emitMetaDataToDirectory(_dir?.__copy__(), stdgo._internal.runtime.coverage.Coverage__getCovMetaList._getCovMetaList());
    }
