package stdgo._internal.crypto.internal.edwards25519;
function _fiatScalarNonzero(_out1:stdgo.Pointer<stdgo.GoUInt64>, _arg1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var _x1 = ((_arg1[(0 : stdgo.GoInt)] | ((_arg1[(1 : stdgo.GoInt)] | ((_arg1[(2 : stdgo.GoInt)] | _arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _out1.value = _x1;
    }
