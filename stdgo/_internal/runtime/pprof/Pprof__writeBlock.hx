package stdgo._internal.runtime.pprof;
function _writeBlock(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof__writeProfileInternal._writeProfileInternal(_w, _debug, ("contention" : stdgo.GoString), stdgo._internal.runtime.Runtime_blockProfile.blockProfile);
    }
