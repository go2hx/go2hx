package stdgo._internal.runtime.pprof;
function _writeThreadCreate(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof__writeRuntimeProfile._writeRuntimeProfile(_w, _debug, ("threadcreate" : stdgo.GoString), function(_p:stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>, __0:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
            var _n = (0 : stdgo.GoInt), _ok = false;
            return stdgo._internal.runtime.Runtime_threadCreateProfile.threadCreateProfile(_p);
        });
    }
