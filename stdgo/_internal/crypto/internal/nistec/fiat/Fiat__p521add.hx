package stdgo._internal.crypto.internal.nistec.fiat;
function _p521Add(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(0 : stdgo.GoInt)], _arg2[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x1 = @:tmpset0 __tmp__._0;
            _x2 = @:tmpset0 __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(1 : stdgo.GoInt)], _arg2[(1 : stdgo.GoInt)], ((_x2 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x3 = @:tmpset0 __tmp__._0;
            _x4 = @:tmpset0 __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(2 : stdgo.GoInt)], _arg2[(2 : stdgo.GoInt)], ((_x4 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(3 : stdgo.GoInt)], _arg2[(3 : stdgo.GoInt)], ((_x6 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x7 = @:tmpset0 __tmp__._0;
            _x8 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(4 : stdgo.GoInt)], _arg2[(4 : stdgo.GoInt)], ((_x8 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x9 = @:tmpset0 __tmp__._0;
            _x10 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(5 : stdgo.GoInt)], _arg2[(5 : stdgo.GoInt)], ((_x10 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x11 = @:tmpset0 __tmp__._0;
            _x12 = @:tmpset0 __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(6 : stdgo.GoInt)], _arg2[(6 : stdgo.GoInt)], ((_x12 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x13 = @:tmpset0 __tmp__._0;
            _x14 = @:tmpset0 __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(7 : stdgo.GoInt)], _arg2[(7 : stdgo.GoInt)], ((_x14 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(8 : stdgo.GoInt)], _arg2[(8 : stdgo.GoInt)], ((_x16 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x1, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x19 = @:tmpset0 __tmp__._0;
            _x20 = @:tmpset0 __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x3, (-1i64 : stdgo.GoUInt64), ((_x20 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x21 = @:tmpset0 __tmp__._0;
            _x22 = @:tmpset0 __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x5, (-1i64 : stdgo.GoUInt64), ((_x22 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x23 = @:tmpset0 __tmp__._0;
            _x24 = @:tmpset0 __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x7, (-1i64 : stdgo.GoUInt64), ((_x24 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x25 = @:tmpset0 __tmp__._0;
            _x26 = @:tmpset0 __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x9, (-1i64 : stdgo.GoUInt64), ((_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x27 = @:tmpset0 __tmp__._0;
            _x28 = @:tmpset0 __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x11, (-1i64 : stdgo.GoUInt64), ((_x28 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x29 = @:tmpset0 __tmp__._0;
            _x30 = @:tmpset0 __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x13, (-1i64 : stdgo.GoUInt64), ((_x30 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x31 = @:tmpset0 __tmp__._0;
            _x32 = @:tmpset0 __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x15, (-1i64 : stdgo.GoUInt64), ((_x32 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x33 = @:tmpset0 __tmp__._0;
            _x34 = @:tmpset0 __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x17, (511i64 : stdgo.GoUInt64), ((_x34 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x35 = @:tmpset0 __tmp__._0;
            _x36 = @:tmpset0 __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x18 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x36 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x38 = @:tmpset0 __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39__pointer__ = stdgo.Go.pointer(_x39);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x39__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x19, _x1);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40__pointer__ = stdgo.Go.pointer(_x40);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x40__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x21, _x3);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41__pointer__ = stdgo.Go.pointer(_x41);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x41__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x23, _x5);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42__pointer__ = stdgo.Go.pointer(_x42);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x42__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x25, _x7);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43__pointer__ = stdgo.Go.pointer(_x43);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x43__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x27, _x9);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44__pointer__ = stdgo.Go.pointer(_x44);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x44__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x29, _x11);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45__pointer__ = stdgo.Go.pointer(_x45);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x45__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x31, _x13);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46__pointer__ = stdgo.Go.pointer(_x46);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x46__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x33, _x15);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x47__pointer__ = stdgo.Go.pointer(_x47);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x47__pointer__, (_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x35, _x17);
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
