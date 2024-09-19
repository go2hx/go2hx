package stdgo._internal.runtime.pprof;
function _writeAlloc(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof__writeHeapInternal._writeHeapInternal(_w, _debug, ("alloc_space" : stdgo.GoString));
    }
