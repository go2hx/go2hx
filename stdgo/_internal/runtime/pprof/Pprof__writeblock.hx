package stdgo._internal.runtime.pprof;
function _writeBlock(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L856"
        return stdgo._internal.runtime.pprof.Pprof__writeprofileinternal._writeProfileInternal(_w, _debug, ("contention" : stdgo.GoString), stdgo._internal.runtime.Runtime_blockprofile.blockProfile);
    }
