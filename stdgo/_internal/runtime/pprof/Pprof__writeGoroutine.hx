package stdgo._internal.runtime.pprof;
function _writeGoroutine(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        if ((_debug >= (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.runtime.pprof.Pprof__writeGoroutineStacks._writeGoroutineStacks(_w);
        };
        return stdgo._internal.runtime.pprof.Pprof__writeRuntimeProfile._writeRuntimeProfile(_w, _debug, ("goroutine" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__runtime_goroutineProfileWithLabels._runtime_goroutineProfileWithLabels);
    }
