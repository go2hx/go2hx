package _internal.crypto.internal.nistec.fiat;
function _p384Sub(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>):Void {
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
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(1 : stdgo.GoInt)], _arg2[(1 : stdgo.GoInt)], ((_x2 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(2 : stdgo.GoInt)], _arg2[(2 : stdgo.GoInt)], ((_x4 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(3 : stdgo.GoInt)], _arg2[(3 : stdgo.GoInt)], ((_x6 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(4 : stdgo.GoInt)], _arg2[(4 : stdgo.GoInt)], ((_x8 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(5 : stdgo.GoInt)], _arg2[(5 : stdgo.GoInt)], ((_x10 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x13), (_x12 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), (0i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, ((_x13 & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), (0i64 : stdgo.GoUInt64));
            _x14 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x3, ((_x13 & (-4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x15 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x16 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, ((_x13 & (-2i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x17 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x18 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, _x13, ((_x19 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x9, _x13, ((_x21 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x13, ((_x23 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x24 = __tmp__._0;
        };
        _out1[(0 : stdgo.GoInt)] = _x14;
        _out1[(1 : stdgo.GoInt)] = _x16;
        _out1[(2 : stdgo.GoInt)] = _x18;
        _out1[(3 : stdgo.GoInt)] = _x20;
        _out1[(4 : stdgo.GoInt)] = _x22;
        _out1[(5 : stdgo.GoInt)] = _x24;
    }
