package stdgo._internal.log;
function _getBuffer():stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> {
        var _p = (stdgo.Go.typeAssert((stdgo._internal.log.Log__bufferPool._bufferPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        (_p : stdgo.Slice<stdgo.GoUInt8>).__setData__((((_p : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _p;
    }