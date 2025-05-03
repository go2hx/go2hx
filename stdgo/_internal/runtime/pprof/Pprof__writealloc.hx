package stdgo._internal.runtime.pprof;
function _writeAlloc(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L538"
        return stdgo._internal.runtime.pprof.Pprof__writeheapinternal._writeHeapInternal(_w, _debug, ("alloc_space" : stdgo.GoString));
    }
