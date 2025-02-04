package stdgo._internal.runtime.pprof;
function _writeHeap(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof__writeheapinternal._writeHeapInternal(_w, _debug, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
