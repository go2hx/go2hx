package _internal.crypto.internal.nistec.fiat;
function _p521Add(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(0 : stdgo.GoInt)], _arg2[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(1 : stdgo.GoInt)], _arg2[(1 : stdgo.GoInt)], ((_x2 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(2 : stdgo.GoInt)], _arg2[(2 : stdgo.GoInt)], ((_x4 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(3 : stdgo.GoInt)], _arg2[(3 : stdgo.GoInt)], ((_x6 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(4 : stdgo.GoInt)], _arg2[(4 : stdgo.GoInt)], ((_x8 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(5 : stdgo.GoInt)], _arg2[(5 : stdgo.GoInt)], ((_x10 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(6 : stdgo.GoInt)], _arg2[(6 : stdgo.GoInt)], ((_x12 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(7 : stdgo.GoInt)], _arg2[(7 : stdgo.GoInt)], ((_x14 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(8 : stdgo.GoInt)], _arg2[(8 : stdgo.GoInt)], ((_x16 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x1, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x3, (-1i64 : stdgo.GoUInt64), ((_x20 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x5, (-1i64 : stdgo.GoUInt64), ((_x22 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x23 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x7, (-1i64 : stdgo.GoUInt64), ((_x24 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x25 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x9, (-1i64 : stdgo.GoUInt64), ((_x26 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x11, (-1i64 : stdgo.GoUInt64), ((_x28 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x29 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x13, (-1i64 : stdgo.GoUInt64), ((_x30 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x31 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x15, (-1i64 : stdgo.GoUInt64), ((_x32 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x17, (511i64 : stdgo.GoUInt64), ((_x34 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x18 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x36 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x38 = __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x39), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x19, _x1);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x40), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x21, _x3);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x41), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x23, _x5);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x42), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x25, _x7);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x43), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x27, _x9);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x44), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x29, _x11);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x45), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x31, _x13);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x46), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x33, _x15);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x47), (_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x35, _x17);
        _out1[(0 : stdgo.GoInt)] = _x39;
        _out1[(1 : stdgo.GoInt)] = _x40;
        _out1[(2 : stdgo.GoInt)] = _x41;
        _out1[(3 : stdgo.GoInt)] = _x42;
        _out1[(4 : stdgo.GoInt)] = _x43;
        _out1[(5 : stdgo.GoInt)] = _x44;
        _out1[(6 : stdgo.GoInt)] = _x45;
        _out1[(7 : stdgo.GoInt)] = _x46;
        _out1[(8 : stdgo.GoInt)] = _x47;
    }
