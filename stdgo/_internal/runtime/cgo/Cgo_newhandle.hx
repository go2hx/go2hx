package stdgo._internal.runtime.cgo;
function newHandle(_v:stdgo.AnyInterface):stdgo._internal.runtime.cgo.Cgo_handle.Handle {
        var _h = (stdgo._internal.runtime.cgo.Cgo__handleidx._handleIdx.add((new stdgo.GoUIntptr(1) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
        //"file:///home/runner/.go/go1.21.3/src/runtime/cgo/handle.go#L110"
        if (_h == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/cgo/handle.go#L111"
            throw stdgo.Go.toInterface(("runtime/cgo: ran out of handle space" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/cgo/handle.go#L114"
        stdgo._internal.runtime.cgo.Cgo__handles._handles.store(stdgo.Go.toInterface(_h), _v);
        //"file:///home/runner/.go/go1.21.3/src/runtime/cgo/handle.go#L115"
        return (new stdgo.GoUIntptr(_h) : stdgo._internal.runtime.cgo.Cgo_handle.Handle);
    }
