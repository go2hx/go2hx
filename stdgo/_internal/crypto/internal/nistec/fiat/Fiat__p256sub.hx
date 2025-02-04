package stdgo._internal.crypto.internal.nistec.fiat;
function _p256Sub(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(0 : stdgo.GoInt)], _arg2[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x1 = @:tmpset0 __tmp__._0;
            _x2 = @:tmpset0 __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(1 : stdgo.GoInt)], _arg2[(1 : stdgo.GoInt)], ((_x2 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x3 = @:tmpset0 __tmp__._0;
            _x4 = @:tmpset0 __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(2 : stdgo.GoInt)], _arg2[(2 : stdgo.GoInt)], ((_x4 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_arg1[(3 : stdgo.GoInt)], _arg2[(3 : stdgo.GoInt)], ((_x6 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x7 = @:tmpset0 __tmp__._0;
            _x8 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9__pointer__ = stdgo.Go.pointer(_x9);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x9__pointer__, (_x8 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), (0i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64));
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x9, (0i64 : stdgo.GoUInt64));
            _x10 = @:tmpset0 __tmp__._0;
            _x11 = @:tmpset0 __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x3, ((_x9 & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x11 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x12 = @:tmpset0 __tmp__._0;
            _x13 = @:tmpset0 __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, (0i64 : stdgo.GoUInt64), ((_x13 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x14 = @:tmpset0 __tmp__._0;
            _x15 = @:tmpset0 __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, ((_x9 & (-4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64)), ((_x15 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x16 = @:tmpset0 __tmp__._0;
        };
        _out1[(0 : stdgo.GoInt)] = _x10;
        _out1[(1 : stdgo.GoInt)] = _x12;
        _out1[(2 : stdgo.GoInt)] = _x14;
        _out1[(3 : stdgo.GoInt)] = _x16;
    }
