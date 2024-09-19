package _internal.crypto.internal.nistec.fiat;
function _p224Sub(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p224MontgomeryDomainFieldElement.T_p224MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p224MontgomeryDomainFieldElement.T_p224MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p224MontgomeryDomainFieldElement.T_p224MontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(0 : stdgo.GoInt)], _arg2[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(1 : stdgo.GoInt)], _arg2[(1 : stdgo.GoInt)], ((_x2 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(2 : stdgo.GoInt)], _arg2[(2 : stdgo.GoInt)], ((_x4 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(3 : stdgo.GoInt)], _arg2[(3 : stdgo.GoInt)], ((_x6 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p224CmovznzU64._p224CmovznzU64(stdgo.Go.pointer(_x9), (_x8 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1), (0i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, (((_x9 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) & (1i64 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x10 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x3, ((_x9 & (-4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x11 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64));
            _x12 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, _x9, ((_x13 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64));
            _x14 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, ((_x9 & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x15 : _internal.crypto.internal.nistec.fiat.Fiat_T_p224Uint1.T_p224Uint1) : stdgo.GoUInt64));
            _x16 = __tmp__._0;
        };
        _out1[(0 : stdgo.GoInt)] = _x10;
        _out1[(1 : stdgo.GoInt)] = _x12;
        _out1[(2 : stdgo.GoInt)] = _x14;
        _out1[(3 : stdgo.GoInt)] = _x16;
    }
