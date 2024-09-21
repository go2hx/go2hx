package _internal.crypto.internal.nistec.fiat;
function _p256Selectznz(_out1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg1:_internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1, _arg2:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg3:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x1), _arg1, _arg2[(0 : stdgo.GoInt)], _arg3[(0 : stdgo.GoInt)]);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x2), _arg1, _arg2[(1 : stdgo.GoInt)], _arg3[(1 : stdgo.GoInt)]);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x3), _arg1, _arg2[(2 : stdgo.GoInt)], _arg3[(2 : stdgo.GoInt)]);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x4), _arg1, _arg2[(3 : stdgo.GoInt)], _arg3[(3 : stdgo.GoInt)]);
        _out1[(0 : stdgo.GoInt)] = _x1;
        _out1[(1 : stdgo.GoInt)] = _x2;
        _out1[(2 : stdgo.GoInt)] = _x3;
        _out1[(3 : stdgo.GoInt)] = _x4;
    }
