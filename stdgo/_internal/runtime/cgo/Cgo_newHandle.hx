package stdgo._internal.runtime.cgo;
function newHandle(_v:stdgo.AnyInterface):stdgo._internal.runtime.cgo.Cgo_Handle.Handle {
        var _h = (stdgo._internal.runtime.cgo.Cgo__handleIdx._handleIdx.add((1 : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
        if (_h == ((0 : stdgo.GoUIntptr))) {
            throw stdgo.Go.toInterface(("runtime/cgo: ran out of handle space" : stdgo.GoString));
        };
        stdgo._internal.runtime.cgo.Cgo__handles._handles.store(stdgo.Go.toInterface(_h), _v);
        return (_h : stdgo._internal.runtime.cgo.Cgo_Handle.Handle);
    }
