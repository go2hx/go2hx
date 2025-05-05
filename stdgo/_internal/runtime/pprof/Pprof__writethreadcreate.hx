package stdgo._internal.runtime.pprof;
function _writeThreadCreate(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L676"
        return stdgo._internal.runtime.pprof.Pprof__writeruntimeprofile._writeRuntimeProfile(_w, _debug, ("threadcreate" : stdgo.GoString), function(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>, __0:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
            var _n = (0 : stdgo.GoInt), _ok = false;
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L677"
            return stdgo._internal.runtime.Runtime_threadcreateprofile.threadCreateProfile(_p);
        });
    }
