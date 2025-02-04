package stdgo._internal.crypto.internal.nistec.fiat;
function _p224Selectznz(_out1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg1:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224uint1.T_p224Uint1, _arg2:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg3:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1__pointer__ = stdgo.Go.pointer(_x1);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224cmovznzu64._p224CmovznzU64(_x1__pointer__, _arg1, _arg2[(0 : stdgo.GoInt)], _arg3[(0 : stdgo.GoInt)]);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2__pointer__ = stdgo.Go.pointer(_x2);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224cmovznzu64._p224CmovznzU64(_x2__pointer__, _arg1, _arg2[(1 : stdgo.GoInt)], _arg3[(1 : stdgo.GoInt)]);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x3__pointer__ = stdgo.Go.pointer(_x3);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224cmovznzu64._p224CmovznzU64(_x3__pointer__, _arg1, _arg2[(2 : stdgo.GoInt)], _arg3[(2 : stdgo.GoInt)]);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4__pointer__ = stdgo.Go.pointer(_x4);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p224cmovznzu64._p224CmovznzU64(_x4__pointer__, _arg1, _arg2[(3 : stdgo.GoInt)], _arg3[(3 : stdgo.GoInt)]);
        _out1[(0 : stdgo.GoInt)] = _x1;
        _out1[(1 : stdgo.GoInt)] = _x2;
        _out1[(2 : stdgo.GoInt)] = _x3;
        _out1[(3 : stdgo.GoInt)] = _x4;
    }
