package stdgo._internal.runtime.cgo;
function newHandle(_v:stdgo.AnyInterface):stdgo._internal.runtime.cgo.Cgo_handle.Handle {
        var _h = (@:check2 stdgo._internal.runtime.cgo.Cgo__handleidx._handleIdx.add((new stdgo.GoUIntptr(1) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
        if (_h == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
            throw stdgo.Go.toInterface(("runtime/cgo: ran out of handle space" : stdgo.GoString));
        };
        @:check2 stdgo._internal.runtime.cgo.Cgo__handles._handles.store(stdgo.Go.toInterface(_h), _v);
        return (new stdgo.GoUIntptr(_h) : stdgo._internal.runtime.cgo.Cgo_handle.Handle);
    }
