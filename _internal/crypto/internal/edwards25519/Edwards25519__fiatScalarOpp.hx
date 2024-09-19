package _internal.crypto.internal.edwards25519;
function _fiatScalarOpp(_out1:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), _arg1[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), _arg1[(1 : stdgo.GoInt)], ((_x2 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), _arg1[(2 : stdgo.GoInt)], ((_x4 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), _arg1[(3 : stdgo.GoInt)], ((_x6 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarCmovznzU64._fiatScalarCmovznzU64(stdgo.Go.pointer(_x9), (_x8 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1), (0i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, ((_x9 & (6346243789798364141i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), (0i64 : stdgo.GoUInt64));
            _x10 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x3, ((_x9 & (1503914060200516822i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x11 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x12 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, (0i64 : stdgo.GoUInt64), ((_x13 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x14 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, ((_x9 & (1152921504606846976i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x15 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x16 = __tmp__._0;
        };
        _out1[(0 : stdgo.GoInt)] = _x10;
        _out1[(1 : stdgo.GoInt)] = _x12;
        _out1[(2 : stdgo.GoInt)] = _x14;
        _out1[(3 : stdgo.GoInt)] = _x16;
    }