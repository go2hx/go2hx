package stdgo._internal.crypto.internal.nistec.fiat;
function _p256FromMontgomery(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-4294967295i64 : stdgo.GoUInt64));
            _x3 = @:tmpset0 __tmp__._0;
            _x2 = @:tmpset0 __tmp__._1;
        };
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (4294967295i64 : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x4 = @:tmpset0 __tmp__._1;
        };
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x7 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, _x4, (0i64 : stdgo.GoUInt64));
            _x8 = @:tmpset0 __tmp__._0;
            _x9 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x6, (0i64 : stdgo.GoUInt64));
            _x11 = @:tmpset0 __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x8, ((_x11 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x12 = @:tmpset0 __tmp__._0;
            _x13 = @:tmpset0 __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _arg1[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x14 = @:tmpset0 __tmp__._0;
            _x15 = @:tmpset0 __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x14, (-4294967295i64 : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x14, (4294967295i64 : stdgo.GoUInt64));
            _x19 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x14, (-1i64 : stdgo.GoUInt64));
            _x21 = @:tmpset0 __tmp__._0;
            _x20 = @:tmpset0 __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x21, _x18, (0i64 : stdgo.GoUInt64));
            _x22 = @:tmpset0 __tmp__._0;
            _x23 = @:tmpset0 __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x14, _x20, (0i64 : stdgo.GoUInt64));
            _x25 = @:tmpset0 __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x15 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((((_x13 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((((_x9 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x5 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x22, ((_x25 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x26 = @:tmpset0 __tmp__._0;
            _x27 = @:tmpset0 __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x2, ((((_x23 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x19 : stdgo.GoUInt64)), ((_x27 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x28 = @:tmpset0 __tmp__._0;
            _x29 = @:tmpset0 __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x3, _x16, ((_x29 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x30 = @:tmpset0 __tmp__._0;
            _x31 = @:tmpset0 __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x26, _arg1[(2 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x32 = @:tmpset0 __tmp__._0;
            _x33 = @:tmpset0 __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, (0i64 : stdgo.GoUInt64), ((_x33 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x34 = @:tmpset0 __tmp__._0;
            _x35 = @:tmpset0 __tmp__._1;
        };
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, (0i64 : stdgo.GoUInt64), ((_x35 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x36 = @:tmpset0 __tmp__._0;
            _x37 = @:tmpset0 __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x32, (-4294967295i64 : stdgo.GoUInt64));
            _x39 = @:tmpset0 __tmp__._0;
            _x38 = @:tmpset0 __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x32, (4294967295i64 : stdgo.GoUInt64));
            _x41 = @:tmpset0 __tmp__._0;
            _x40 = @:tmpset0 __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x32, (-1i64 : stdgo.GoUInt64));
            _x43 = @:tmpset0 __tmp__._0;
            _x42 = @:tmpset0 __tmp__._1;
        };
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x43, _x40, (0i64 : stdgo.GoUInt64));
            _x44 = @:tmpset0 __tmp__._0;
            _x45 = @:tmpset0 __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, _x42, (0i64 : stdgo.GoUInt64));
            _x47 = @:tmpset0 __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, _x44, ((_x47 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x48 = @:tmpset0 __tmp__._0;
            _x49 = @:tmpset0 __tmp__._1;
        };
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, ((((_x45 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x41 : stdgo.GoUInt64)), ((_x49 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x50 = @:tmpset0 __tmp__._0;
            _x51 = @:tmpset0 __tmp__._1;
        };
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x37 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((((_x31 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x17 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x38, ((_x51 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x52 = @:tmpset0 __tmp__._0;
            _x53 = @:tmpset0 __tmp__._1;
        };
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, _arg1[(3 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x54 = @:tmpset0 __tmp__._0;
            _x55 = @:tmpset0 __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, (0i64 : stdgo.GoUInt64), ((_x55 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x56 = @:tmpset0 __tmp__._0;
            _x57 = @:tmpset0 __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x52, (0i64 : stdgo.GoUInt64), ((_x57 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x58 = @:tmpset0 __tmp__._0;
            _x59 = @:tmpset0 __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-4294967295i64 : stdgo.GoUInt64));
            _x61 = @:tmpset0 __tmp__._0;
            _x60 = @:tmpset0 __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (4294967295i64 : stdgo.GoUInt64));
            _x63 = @:tmpset0 __tmp__._0;
            _x62 = @:tmpset0 __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x65 = @:tmpset0 __tmp__._0;
            _x64 = @:tmpset0 __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x65, _x62, (0i64 : stdgo.GoUInt64));
            _x66 = @:tmpset0 __tmp__._0;
            _x67 = @:tmpset0 __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _x64, (0i64 : stdgo.GoUInt64));
            _x69 = @:tmpset0 __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x66, ((_x69 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x70 = @:tmpset0 __tmp__._0;
            _x71 = @:tmpset0 __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, ((((_x67 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x63 : stdgo.GoUInt64)), ((_x71 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x72 = @:tmpset0 __tmp__._0;
            _x73 = @:tmpset0 __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x59 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((((_x53 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x39 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x60, ((_x73 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x74 = @:tmpset0 __tmp__._0;
            _x75 = @:tmpset0 __tmp__._1;
        };
        var _x76 = ((((_x75 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x61 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x70, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x77 = @:tmpset0 __tmp__._0;
            _x78 = @:tmpset0 __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x72, (4294967295i64 : stdgo.GoUInt64), ((_x78 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x79 = @:tmpset0 __tmp__._0;
            _x80 = @:tmpset0 __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x74, (0i64 : stdgo.GoUInt64), ((_x80 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x81 = @:tmpset0 __tmp__._0;
            _x82 = @:tmpset0 __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x76, (-4294967295i64 : stdgo.GoUInt64), ((_x82 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x83 = @:tmpset0 __tmp__._0;
            _x84 = @:tmpset0 __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x84 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x86 = @:tmpset0 __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87__pointer__ = stdgo.Go.pointer(_x87);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x87__pointer__, (_x86 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x77, _x70);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88__pointer__ = stdgo.Go.pointer(_x88);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x88__pointer__, (_x86 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x79, _x72);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89__pointer__ = stdgo.Go.pointer(_x89);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x89__pointer__, (_x86 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x81, _x74);
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x90__pointer__ = stdgo.Go.pointer(_x90);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x90__pointer__, (_x86 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x83, _x76);
        _out1[(0 : stdgo.GoInt)] = _x87;
        _out1[(1 : stdgo.GoInt)] = _x88;
        _out1[(2 : stdgo.GoInt)] = _x89;
        _out1[(3 : stdgo.GoInt)] = _x90;
    }
