package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _flushTransform(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Bool {
        if (((_rb._out.length) < (_rb._nrune * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return false;
        };
        _rb._out = (_rb._out.__slice__(_rb._flushCopy(_rb._out)) : stdgo.Slice<stdgo.GoUInt8>);
        return true;
    }
