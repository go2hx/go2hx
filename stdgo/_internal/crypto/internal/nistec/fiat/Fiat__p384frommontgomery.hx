package stdgo._internal.crypto.internal.nistec.fiat;
function _p384FromMontgomery(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (4294967297i64 : stdgo.GoUInt64));
            _x2 = @:tmpset0 __tmp__._1;
        };
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-1i64 : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x4 = @:tmpset0 __tmp__._1;
        };
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-1i64 : stdgo.GoUInt64));
            _x7 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-1i64 : stdgo.GoUInt64));
            _x9 = @:tmpset0 __tmp__._0;
            _x8 = @:tmpset0 __tmp__._1;
        };
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-2i64 : stdgo.GoUInt64));
            _x11 = @:tmpset0 __tmp__._0;
            _x10 = @:tmpset0 __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-4294967296i64 : stdgo.GoUInt64));
            _x13 = @:tmpset0 __tmp__._0;
            _x12 = @:tmpset0 __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (4294967295i64 : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x14 = @:tmpset0 __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x12, (0i64 : stdgo.GoUInt64));
            _x16 = @:tmpset0 __tmp__._0;
            _x17 = @:tmpset0 __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x10, ((_x17 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x18 = @:tmpset0 __tmp__._0;
            _x19 = @:tmpset0 __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x8, ((_x19 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x20 = @:tmpset0 __tmp__._0;
            _x21 = @:tmpset0 __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x9, _x6, ((_x21 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x22 = @:tmpset0 __tmp__._0;
            _x23 = @:tmpset0 __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, _x4, ((_x23 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x24 = @:tmpset0 __tmp__._0;
            _x25 = @:tmpset0 __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x14, (0i64 : stdgo.GoUInt64));
            _x27 = @:tmpset0 __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x16, ((_x27 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x28 = @:tmpset0 __tmp__._0;
            _x29 = @:tmpset0 __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x18, ((_x29 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x30 = @:tmpset0 __tmp__._0;
            _x31 = @:tmpset0 __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x20, ((_x31 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x32 = @:tmpset0 __tmp__._0;
            _x33 = @:tmpset0 __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x22, ((_x33 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x34 = @:tmpset0 __tmp__._0;
            _x35 = @:tmpset0 __tmp__._1;
        };
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x24, ((_x35 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x36 = @:tmpset0 __tmp__._0;
            _x37 = @:tmpset0 __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), ((((_x25 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x5 : stdgo.GoUInt64)), ((_x37 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x38 = @:tmpset0 __tmp__._0;
            _x39 = @:tmpset0 __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, _arg1[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x40 = @:tmpset0 __tmp__._0;
            _x41 = @:tmpset0 __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, (0i64 : stdgo.GoUInt64), ((_x41 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x42 = @:tmpset0 __tmp__._0;
            _x43 = @:tmpset0 __tmp__._1;
        };
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, (0i64 : stdgo.GoUInt64), ((_x43 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x44 = @:tmpset0 __tmp__._0;
            _x45 = @:tmpset0 __tmp__._1;
        };
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, (0i64 : stdgo.GoUInt64), ((_x45 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x46 = @:tmpset0 __tmp__._0;
            _x47 = @:tmpset0 __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, (0i64 : stdgo.GoUInt64), ((_x47 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x48 = @:tmpset0 __tmp__._0;
            _x49 = @:tmpset0 __tmp__._1;
        };
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, (0i64 : stdgo.GoUInt64), ((_x49 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x50 = @:tmpset0 __tmp__._0;
            _x51 = @:tmpset0 __tmp__._1;
        };
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x40, (4294967297i64 : stdgo.GoUInt64));
            _x52 = @:tmpset0 __tmp__._1;
        };
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-1i64 : stdgo.GoUInt64));
            _x55 = @:tmpset0 __tmp__._0;
            _x54 = @:tmpset0 __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-1i64 : stdgo.GoUInt64));
            _x57 = @:tmpset0 __tmp__._0;
            _x56 = @:tmpset0 __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-1i64 : stdgo.GoUInt64));
            _x59 = @:tmpset0 __tmp__._0;
            _x58 = @:tmpset0 __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-2i64 : stdgo.GoUInt64));
            _x61 = @:tmpset0 __tmp__._0;
            _x60 = @:tmpset0 __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-4294967296i64 : stdgo.GoUInt64));
            _x63 = @:tmpset0 __tmp__._0;
            _x62 = @:tmpset0 __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (4294967295i64 : stdgo.GoUInt64));
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
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x63, _x60, ((_x67 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x68 = @:tmpset0 __tmp__._0;
            _x69 = @:tmpset0 __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x61, _x58, ((_x69 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x70 = @:tmpset0 __tmp__._0;
            _x71 = @:tmpset0 __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x59, _x56, ((_x71 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x72 = @:tmpset0 __tmp__._0;
            _x73 = @:tmpset0 __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, _x54, ((_x73 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x74 = @:tmpset0 __tmp__._0;
            _x75 = @:tmpset0 __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, _x64, (0i64 : stdgo.GoUInt64));
            _x77 = @:tmpset0 __tmp__._1;
        };
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x66, ((_x77 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x78 = @:tmpset0 __tmp__._0;
            _x79 = @:tmpset0 __tmp__._1;
        };
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x68, ((_x79 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x80 = @:tmpset0 __tmp__._0;
            _x81 = @:tmpset0 __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x46, _x70, ((_x81 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x82 = @:tmpset0 __tmp__._0;
            _x83 = @:tmpset0 __tmp__._1;
        };
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, _x72, ((_x83 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x84 = @:tmpset0 __tmp__._0;
            _x85 = @:tmpset0 __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, _x74, ((_x85 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x86 = @:tmpset0 __tmp__._0;
            _x87 = @:tmpset0 __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x51 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x39 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x75 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x55 : stdgo.GoUInt64)), ((_x87 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x88 = @:tmpset0 __tmp__._0;
            _x89 = @:tmpset0 __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x78, _arg1[(2 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x90 = @:tmpset0 __tmp__._0;
            _x91 = @:tmpset0 __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x80, (0i64 : stdgo.GoUInt64), ((_x91 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x92 = @:tmpset0 __tmp__._0;
            _x93 = @:tmpset0 __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, (0i64 : stdgo.GoUInt64), ((_x93 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x94 = @:tmpset0 __tmp__._0;
            _x95 = @:tmpset0 __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, (0i64 : stdgo.GoUInt64), ((_x95 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x96 = @:tmpset0 __tmp__._0;
            _x97 = @:tmpset0 __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x86, (0i64 : stdgo.GoUInt64), ((_x97 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x98 = @:tmpset0 __tmp__._0;
            _x99 = @:tmpset0 __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x88, (0i64 : stdgo.GoUInt64), ((_x99 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x100 = @:tmpset0 __tmp__._0;
            _x101 = @:tmpset0 __tmp__._1;
        };
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x90, (4294967297i64 : stdgo.GoUInt64));
            _x102 = @:tmpset0 __tmp__._1;
        };
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-1i64 : stdgo.GoUInt64));
            _x105 = @:tmpset0 __tmp__._0;
            _x104 = @:tmpset0 __tmp__._1;
        };
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-1i64 : stdgo.GoUInt64));
            _x107 = @:tmpset0 __tmp__._0;
            _x106 = @:tmpset0 __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-1i64 : stdgo.GoUInt64));
            _x109 = @:tmpset0 __tmp__._0;
            _x108 = @:tmpset0 __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-2i64 : stdgo.GoUInt64));
            _x111 = @:tmpset0 __tmp__._0;
            _x110 = @:tmpset0 __tmp__._1;
        };
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-4294967296i64 : stdgo.GoUInt64));
            _x113 = @:tmpset0 __tmp__._0;
            _x112 = @:tmpset0 __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (4294967295i64 : stdgo.GoUInt64));
            _x115 = @:tmpset0 __tmp__._0;
            _x114 = @:tmpset0 __tmp__._1;
        };
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x112, (0i64 : stdgo.GoUInt64));
            _x116 = @:tmpset0 __tmp__._0;
            _x117 = @:tmpset0 __tmp__._1;
        };
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x110, ((_x117 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x118 = @:tmpset0 __tmp__._0;
            _x119 = @:tmpset0 __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x108, ((_x119 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x120 = @:tmpset0 __tmp__._0;
            _x121 = @:tmpset0 __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x106, ((_x121 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x122 = @:tmpset0 __tmp__._0;
            _x123 = @:tmpset0 __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x107, _x104, ((_x123 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x124 = @:tmpset0 __tmp__._0;
            _x125 = @:tmpset0 __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x90, _x114, (0i64 : stdgo.GoUInt64));
            _x127 = @:tmpset0 __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x92, _x116, ((_x127 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x128 = @:tmpset0 __tmp__._0;
            _x129 = @:tmpset0 __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x94, _x118, ((_x129 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x130 = @:tmpset0 __tmp__._0;
            _x131 = @:tmpset0 __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x96, _x120, ((_x131 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x132 = @:tmpset0 __tmp__._0;
            _x133 = @:tmpset0 __tmp__._1;
        };
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x98, _x122, ((_x133 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x134 = @:tmpset0 __tmp__._0;
            _x135 = @:tmpset0 __tmp__._1;
        };
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x100, _x124, ((_x135 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x136 = @:tmpset0 __tmp__._0;
            _x137 = @:tmpset0 __tmp__._1;
        };
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x101 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x89 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x125 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x105 : stdgo.GoUInt64)), ((_x137 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x138 = @:tmpset0 __tmp__._0;
            _x139 = @:tmpset0 __tmp__._1;
        };
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _arg1[(3 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x140 = @:tmpset0 __tmp__._0;
            _x141 = @:tmpset0 __tmp__._1;
        };
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, (0i64 : stdgo.GoUInt64), ((_x141 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x142 = @:tmpset0 __tmp__._0;
            _x143 = @:tmpset0 __tmp__._1;
        };
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, (0i64 : stdgo.GoUInt64), ((_x143 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x144 = @:tmpset0 __tmp__._0;
            _x145 = @:tmpset0 __tmp__._1;
        };
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, (0i64 : stdgo.GoUInt64), ((_x145 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x146 = @:tmpset0 __tmp__._0;
            _x147 = @:tmpset0 __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x136, (0i64 : stdgo.GoUInt64), ((_x147 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x148 = @:tmpset0 __tmp__._0;
            _x149 = @:tmpset0 __tmp__._1;
        };
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x138, (0i64 : stdgo.GoUInt64), ((_x149 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x150 = @:tmpset0 __tmp__._0;
            _x151 = @:tmpset0 __tmp__._1;
        };
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x140, (4294967297i64 : stdgo.GoUInt64));
            _x152 = @:tmpset0 __tmp__._1;
        };
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-1i64 : stdgo.GoUInt64));
            _x155 = @:tmpset0 __tmp__._0;
            _x154 = @:tmpset0 __tmp__._1;
        };
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-1i64 : stdgo.GoUInt64));
            _x157 = @:tmpset0 __tmp__._0;
            _x156 = @:tmpset0 __tmp__._1;
        };
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-1i64 : stdgo.GoUInt64));
            _x159 = @:tmpset0 __tmp__._0;
            _x158 = @:tmpset0 __tmp__._1;
        };
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-2i64 : stdgo.GoUInt64));
            _x161 = @:tmpset0 __tmp__._0;
            _x160 = @:tmpset0 __tmp__._1;
        };
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-4294967296i64 : stdgo.GoUInt64));
            _x163 = @:tmpset0 __tmp__._0;
            _x162 = @:tmpset0 __tmp__._1;
        };
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (4294967295i64 : stdgo.GoUInt64));
            _x165 = @:tmpset0 __tmp__._0;
            _x164 = @:tmpset0 __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x165, _x162, (0i64 : stdgo.GoUInt64));
            _x166 = @:tmpset0 __tmp__._0;
            _x167 = @:tmpset0 __tmp__._1;
        };
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x163, _x160, ((_x167 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x168 = @:tmpset0 __tmp__._0;
            _x169 = @:tmpset0 __tmp__._1;
        };
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x161, _x158, ((_x169 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x170 = @:tmpset0 __tmp__._0;
            _x171 = @:tmpset0 __tmp__._1;
        };
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x159, _x156, ((_x171 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x172 = @:tmpset0 __tmp__._0;
            _x173 = @:tmpset0 __tmp__._1;
        };
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x157, _x154, ((_x173 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x174 = @:tmpset0 __tmp__._0;
            _x175 = @:tmpset0 __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x140, _x164, (0i64 : stdgo.GoUInt64));
            _x177 = @:tmpset0 __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x142, _x166, ((_x177 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x178 = @:tmpset0 __tmp__._0;
            _x179 = @:tmpset0 __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x144, _x168, ((_x179 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x180 = @:tmpset0 __tmp__._0;
            _x181 = @:tmpset0 __tmp__._1;
        };
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x146, _x170, ((_x181 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x182 = @:tmpset0 __tmp__._0;
            _x183 = @:tmpset0 __tmp__._1;
        };
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x148, _x172, ((_x183 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x184 = @:tmpset0 __tmp__._0;
            _x185 = @:tmpset0 __tmp__._1;
        };
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x150, _x174, ((_x185 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x186 = @:tmpset0 __tmp__._0;
            _x187 = @:tmpset0 __tmp__._1;
        };
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x151 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x139 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x175 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x155 : stdgo.GoUInt64)), ((_x187 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x188 = @:tmpset0 __tmp__._0;
            _x189 = @:tmpset0 __tmp__._1;
        };
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x178, _arg1[(4 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x190 = @:tmpset0 __tmp__._0;
            _x191 = @:tmpset0 __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x180, (0i64 : stdgo.GoUInt64), ((_x191 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x192 = @:tmpset0 __tmp__._0;
            _x193 = @:tmpset0 __tmp__._1;
        };
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x182, (0i64 : stdgo.GoUInt64), ((_x193 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x194 = @:tmpset0 __tmp__._0;
            _x195 = @:tmpset0 __tmp__._1;
        };
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x184, (0i64 : stdgo.GoUInt64), ((_x195 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x196 = @:tmpset0 __tmp__._0;
            _x197 = @:tmpset0 __tmp__._1;
        };
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x186, (0i64 : stdgo.GoUInt64), ((_x197 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x198 = @:tmpset0 __tmp__._0;
            _x199 = @:tmpset0 __tmp__._1;
        };
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x188, (0i64 : stdgo.GoUInt64), ((_x199 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x200 = @:tmpset0 __tmp__._0;
            _x201 = @:tmpset0 __tmp__._1;
        };
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (4294967297i64 : stdgo.GoUInt64));
            _x202 = @:tmpset0 __tmp__._1;
        };
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-1i64 : stdgo.GoUInt64));
            _x205 = @:tmpset0 __tmp__._0;
            _x204 = @:tmpset0 __tmp__._1;
        };
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-1i64 : stdgo.GoUInt64));
            _x207 = @:tmpset0 __tmp__._0;
            _x206 = @:tmpset0 __tmp__._1;
        };
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-1i64 : stdgo.GoUInt64));
            _x209 = @:tmpset0 __tmp__._0;
            _x208 = @:tmpset0 __tmp__._1;
        };
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-2i64 : stdgo.GoUInt64));
            _x211 = @:tmpset0 __tmp__._0;
            _x210 = @:tmpset0 __tmp__._1;
        };
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-4294967296i64 : stdgo.GoUInt64));
            _x213 = @:tmpset0 __tmp__._0;
            _x212 = @:tmpset0 __tmp__._1;
        };
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (4294967295i64 : stdgo.GoUInt64));
            _x215 = @:tmpset0 __tmp__._0;
            _x214 = @:tmpset0 __tmp__._1;
        };
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x215, _x212, (0i64 : stdgo.GoUInt64));
            _x216 = @:tmpset0 __tmp__._0;
            _x217 = @:tmpset0 __tmp__._1;
        };
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x213, _x210, ((_x217 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x218 = @:tmpset0 __tmp__._0;
            _x219 = @:tmpset0 __tmp__._1;
        };
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x211, _x208, ((_x219 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x220 = @:tmpset0 __tmp__._0;
            _x221 = @:tmpset0 __tmp__._1;
        };
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x206, ((_x221 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x222 = @:tmpset0 __tmp__._0;
            _x223 = @:tmpset0 __tmp__._1;
        };
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x207, _x204, ((_x223 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x224 = @:tmpset0 __tmp__._0;
            _x225 = @:tmpset0 __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x190, _x214, (0i64 : stdgo.GoUInt64));
            _x227 = @:tmpset0 __tmp__._1;
        };
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x192, _x216, ((_x227 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x228 = @:tmpset0 __tmp__._0;
            _x229 = @:tmpset0 __tmp__._1;
        };
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x218, ((_x229 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x230 = @:tmpset0 __tmp__._0;
            _x231 = @:tmpset0 __tmp__._1;
        };
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x220, ((_x231 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x232 = @:tmpset0 __tmp__._0;
            _x233 = @:tmpset0 __tmp__._1;
        };
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x222, ((_x233 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x234 = @:tmpset0 __tmp__._0;
            _x235 = @:tmpset0 __tmp__._1;
        };
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x224, ((_x235 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x236 = @:tmpset0 __tmp__._0;
            _x237 = @:tmpset0 __tmp__._1;
        };
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x201 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x189 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x225 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x205 : stdgo.GoUInt64)), ((_x237 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x238 = @:tmpset0 __tmp__._0;
            _x239 = @:tmpset0 __tmp__._1;
        };
        var _x240:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x228, _arg1[(5 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x240 = @:tmpset0 __tmp__._0;
            _x241 = @:tmpset0 __tmp__._1;
        };
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x230, (0i64 : stdgo.GoUInt64), ((_x241 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x242 = @:tmpset0 __tmp__._0;
            _x243 = @:tmpset0 __tmp__._1;
        };
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x245:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x232, (0i64 : stdgo.GoUInt64), ((_x243 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x244 = @:tmpset0 __tmp__._0;
            _x245 = @:tmpset0 __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x234, (0i64 : stdgo.GoUInt64), ((_x245 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x246 = @:tmpset0 __tmp__._0;
            _x247 = @:tmpset0 __tmp__._1;
        };
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x236, (0i64 : stdgo.GoUInt64), ((_x247 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x248 = @:tmpset0 __tmp__._0;
            _x249 = @:tmpset0 __tmp__._1;
        };
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x238, (0i64 : stdgo.GoUInt64), ((_x249 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x250 = @:tmpset0 __tmp__._0;
            _x251 = @:tmpset0 __tmp__._1;
        };
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x240, (4294967297i64 : stdgo.GoUInt64));
            _x252 = @:tmpset0 __tmp__._1;
        };
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-1i64 : stdgo.GoUInt64));
            _x255 = @:tmpset0 __tmp__._0;
            _x254 = @:tmpset0 __tmp__._1;
        };
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-1i64 : stdgo.GoUInt64));
            _x257 = @:tmpset0 __tmp__._0;
            _x256 = @:tmpset0 __tmp__._1;
        };
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-1i64 : stdgo.GoUInt64));
            _x259 = @:tmpset0 __tmp__._0;
            _x258 = @:tmpset0 __tmp__._1;
        };
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-2i64 : stdgo.GoUInt64));
            _x261 = @:tmpset0 __tmp__._0;
            _x260 = @:tmpset0 __tmp__._1;
        };
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-4294967296i64 : stdgo.GoUInt64));
            _x263 = @:tmpset0 __tmp__._0;
            _x262 = @:tmpset0 __tmp__._1;
        };
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (4294967295i64 : stdgo.GoUInt64));
            _x265 = @:tmpset0 __tmp__._0;
            _x264 = @:tmpset0 __tmp__._1;
        };
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x265, _x262, (0i64 : stdgo.GoUInt64));
            _x266 = @:tmpset0 __tmp__._0;
            _x267 = @:tmpset0 __tmp__._1;
        };
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x263, _x260, ((_x267 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x268 = @:tmpset0 __tmp__._0;
            _x269 = @:tmpset0 __tmp__._1;
        };
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x261, _x258, ((_x269 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x270 = @:tmpset0 __tmp__._0;
            _x271 = @:tmpset0 __tmp__._1;
        };
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x259, _x256, ((_x271 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x272 = @:tmpset0 __tmp__._0;
            _x273 = @:tmpset0 __tmp__._1;
        };
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x257, _x254, ((_x273 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x274 = @:tmpset0 __tmp__._0;
            _x275 = @:tmpset0 __tmp__._1;
        };
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x240, _x264, (0i64 : stdgo.GoUInt64));
            _x277 = @:tmpset0 __tmp__._1;
        };
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x242, _x266, ((_x277 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x278 = @:tmpset0 __tmp__._0;
            _x279 = @:tmpset0 __tmp__._1;
        };
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x244, _x268, ((_x279 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x280 = @:tmpset0 __tmp__._0;
            _x281 = @:tmpset0 __tmp__._1;
        };
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x246, _x270, ((_x281 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x282 = @:tmpset0 __tmp__._0;
            _x283 = @:tmpset0 __tmp__._1;
        };
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x248, _x272, ((_x283 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x284 = @:tmpset0 __tmp__._0;
            _x285 = @:tmpset0 __tmp__._1;
        };
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x250, _x274, ((_x285 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x286 = @:tmpset0 __tmp__._0;
            _x287 = @:tmpset0 __tmp__._1;
        };
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x251 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x239 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x275 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x255 : stdgo.GoUInt64)), ((_x287 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x288 = @:tmpset0 __tmp__._0;
            _x289 = @:tmpset0 __tmp__._1;
        };
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x278, (4294967295i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x290 = @:tmpset0 __tmp__._0;
            _x291 = @:tmpset0 __tmp__._1;
        };
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x280, (-4294967296i64 : stdgo.GoUInt64), ((_x291 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x292 = @:tmpset0 __tmp__._0;
            _x293 = @:tmpset0 __tmp__._1;
        };
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x282, (-2i64 : stdgo.GoUInt64), ((_x293 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x294 = @:tmpset0 __tmp__._0;
            _x295 = @:tmpset0 __tmp__._1;
        };
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x284, (-1i64 : stdgo.GoUInt64), ((_x295 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x296 = @:tmpset0 __tmp__._0;
            _x297 = @:tmpset0 __tmp__._1;
        };
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x286, (-1i64 : stdgo.GoUInt64), ((_x297 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x298 = @:tmpset0 __tmp__._0;
            _x299 = @:tmpset0 __tmp__._1;
        };
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x288, (-1i64 : stdgo.GoUInt64), ((_x299 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x300 = @:tmpset0 __tmp__._0;
            _x301 = @:tmpset0 __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x289 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x301 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x303 = @:tmpset0 __tmp__._1;
        };
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304__pointer__ = stdgo.Go.pointer(_x304);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x304__pointer__, (_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x290, _x278);
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x305__pointer__ = stdgo.Go.pointer(_x305);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x305__pointer__, (_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x292, _x280);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306__pointer__ = stdgo.Go.pointer(_x306);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x306__pointer__, (_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x294, _x282);
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x307__pointer__ = stdgo.Go.pointer(_x307);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x307__pointer__, (_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x296, _x284);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308__pointer__ = stdgo.Go.pointer(_x308);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x308__pointer__, (_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x298, _x286);
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x309__pointer__ = stdgo.Go.pointer(_x309);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x309__pointer__, (_x303 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x300, _x288);
        _out1[(0 : stdgo.GoInt)] = _x304;
        _out1[(1 : stdgo.GoInt)] = _x305;
        _out1[(2 : stdgo.GoInt)] = _x306;
        _out1[(3 : stdgo.GoInt)] = _x307;
        _out1[(4 : stdgo.GoInt)] = _x308;
        _out1[(5 : stdgo.GoInt)] = _x309;
    }
