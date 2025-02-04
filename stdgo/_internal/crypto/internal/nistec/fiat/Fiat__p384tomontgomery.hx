package stdgo._internal.crypto.internal.nistec.fiat;
function _p384ToMontgomery(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384nonmontgomerydomainfieldelement.T_p384NonMontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(4 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5 = (_arg1[(5 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x6 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (8589934592i64 : stdgo.GoUInt64));
            _x8 = @:tmpset0 __tmp__._0;
            _x7 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (-8589934592i64 : stdgo.GoUInt64));
            _x10 = @:tmpset0 __tmp__._0;
            _x9 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (8589934592i64 : stdgo.GoUInt64));
            _x12 = @:tmpset0 __tmp__._0;
            _x11 = @:tmpset0 __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (-8589934591i64 : stdgo.GoUInt64));
            _x14 = @:tmpset0 __tmp__._0;
            _x13 = @:tmpset0 __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x14, _x11, (0i64 : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _x9, ((_x16 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x18 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x19 = @:tmpset0 __tmp__._0;
            _x20 = @:tmpset0 __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x8, _x6, ((_x20 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x21 = @:tmpset0 __tmp__._0;
            _x22 = @:tmpset0 __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x13, (4294967297i64 : stdgo.GoUInt64));
            _x23 = @:tmpset0 __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-1i64 : stdgo.GoUInt64));
            _x26 = @:tmpset0 __tmp__._0;
            _x25 = @:tmpset0 __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-1i64 : stdgo.GoUInt64));
            _x28 = @:tmpset0 __tmp__._0;
            _x27 = @:tmpset0 __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-1i64 : stdgo.GoUInt64));
            _x30 = @:tmpset0 __tmp__._0;
            _x29 = @:tmpset0 __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-2i64 : stdgo.GoUInt64));
            _x32 = @:tmpset0 __tmp__._0;
            _x31 = @:tmpset0 __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-4294967296i64 : stdgo.GoUInt64));
            _x34 = @:tmpset0 __tmp__._0;
            _x33 = @:tmpset0 __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (4294967295i64 : stdgo.GoUInt64));
            _x36 = @:tmpset0 __tmp__._0;
            _x35 = @:tmpset0 __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, _x33, (0i64 : stdgo.GoUInt64));
            _x37 = @:tmpset0 __tmp__._0;
            _x38 = @:tmpset0 __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, _x31, ((_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x39 = @:tmpset0 __tmp__._0;
            _x40 = @:tmpset0 __tmp__._1;
        };
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, _x29, ((_x40 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x41 = @:tmpset0 __tmp__._0;
            _x42 = @:tmpset0 __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, _x27, ((_x42 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x43 = @:tmpset0 __tmp__._0;
            _x44 = @:tmpset0 __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, _x25, ((_x44 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x45 = @:tmpset0 __tmp__._0;
            _x46 = @:tmpset0 __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x35, (0i64 : stdgo.GoUInt64));
            _x48 = @:tmpset0 __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x37, ((_x48 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x49 = @:tmpset0 __tmp__._0;
            _x50 = @:tmpset0 __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x39, ((_x50 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x51 = @:tmpset0 __tmp__._0;
            _x52 = @:tmpset0 __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x41, ((_x52 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x53 = @:tmpset0 __tmp__._0;
            _x54 = @:tmpset0 __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x21, _x43, ((_x54 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x55 = @:tmpset0 __tmp__._0;
            _x56 = @:tmpset0 __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((_x22 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), _x45, ((_x56 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x57 = @:tmpset0 __tmp__._0;
            _x58 = @:tmpset0 __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), ((((_x46 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x26 : stdgo.GoUInt64)), ((_x58 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x59 = @:tmpset0 __tmp__._0;
            _x60 = @:tmpset0 __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (8589934592i64 : stdgo.GoUInt64));
            _x62 = @:tmpset0 __tmp__._0;
            _x61 = @:tmpset0 __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-8589934592i64 : stdgo.GoUInt64));
            _x64 = @:tmpset0 __tmp__._0;
            _x63 = @:tmpset0 __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (8589934592i64 : stdgo.GoUInt64));
            _x66 = @:tmpset0 __tmp__._0;
            _x65 = @:tmpset0 __tmp__._1;
        };
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-8589934591i64 : stdgo.GoUInt64));
            _x68 = @:tmpset0 __tmp__._0;
            _x67 = @:tmpset0 __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x68, _x65, (0i64 : stdgo.GoUInt64));
            _x69 = @:tmpset0 __tmp__._0;
            _x70 = @:tmpset0 __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x66, _x63, ((_x70 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x71 = @:tmpset0 __tmp__._0;
            _x72 = @:tmpset0 __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x61, ((_x72 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x73 = @:tmpset0 __tmp__._0;
            _x74 = @:tmpset0 __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x1, ((_x74 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x75 = @:tmpset0 __tmp__._0;
            _x76 = @:tmpset0 __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x49, _x67, (0i64 : stdgo.GoUInt64));
            _x77 = @:tmpset0 __tmp__._0;
            _x78 = @:tmpset0 __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x51, _x69, ((_x78 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x79 = @:tmpset0 __tmp__._0;
            _x80 = @:tmpset0 __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x53, _x71, ((_x80 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x81 = @:tmpset0 __tmp__._0;
            _x82 = @:tmpset0 __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x55, _x73, ((_x82 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x83 = @:tmpset0 __tmp__._0;
            _x84 = @:tmpset0 __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, _x75, ((_x84 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x85 = @:tmpset0 __tmp__._0;
            _x86 = @:tmpset0 __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x59, ((_x76 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x86 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x87 = @:tmpset0 __tmp__._0;
            _x88 = @:tmpset0 __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x77, (4294967297i64 : stdgo.GoUInt64));
            _x89 = @:tmpset0 __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-1i64 : stdgo.GoUInt64));
            _x92 = @:tmpset0 __tmp__._0;
            _x91 = @:tmpset0 __tmp__._1;
        };
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-1i64 : stdgo.GoUInt64));
            _x94 = @:tmpset0 __tmp__._0;
            _x93 = @:tmpset0 __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-1i64 : stdgo.GoUInt64));
            _x96 = @:tmpset0 __tmp__._0;
            _x95 = @:tmpset0 __tmp__._1;
        };
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-2i64 : stdgo.GoUInt64));
            _x98 = @:tmpset0 __tmp__._0;
            _x97 = @:tmpset0 __tmp__._1;
        };
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-4294967296i64 : stdgo.GoUInt64));
            _x100 = @:tmpset0 __tmp__._0;
            _x99 = @:tmpset0 __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (4294967295i64 : stdgo.GoUInt64));
            _x102 = @:tmpset0 __tmp__._0;
            _x101 = @:tmpset0 __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x102, _x99, (0i64 : stdgo.GoUInt64));
            _x103 = @:tmpset0 __tmp__._0;
            _x104 = @:tmpset0 __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x100, _x97, ((_x104 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x105 = @:tmpset0 __tmp__._0;
            _x106 = @:tmpset0 __tmp__._1;
        };
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x98, _x95, ((_x106 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x107 = @:tmpset0 __tmp__._0;
            _x108 = @:tmpset0 __tmp__._1;
        };
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x96, _x93, ((_x108 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x109 = @:tmpset0 __tmp__._0;
            _x110 = @:tmpset0 __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x94, _x91, ((_x110 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x111 = @:tmpset0 __tmp__._0;
            _x112 = @:tmpset0 __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x77, _x101, (0i64 : stdgo.GoUInt64));
            _x114 = @:tmpset0 __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x79, _x103, ((_x114 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x115 = @:tmpset0 __tmp__._0;
            _x116 = @:tmpset0 __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x81, _x105, ((_x116 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x117 = @:tmpset0 __tmp__._0;
            _x118 = @:tmpset0 __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x83, _x107, ((_x118 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x119 = @:tmpset0 __tmp__._0;
            _x120 = @:tmpset0 __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x85, _x109, ((_x120 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x121 = @:tmpset0 __tmp__._0;
            _x122 = @:tmpset0 __tmp__._1;
        };
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x87, _x111, ((_x122 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x123 = @:tmpset0 __tmp__._0;
            _x124 = @:tmpset0 __tmp__._1;
        };
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x88 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x60 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x112 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x92 : stdgo.GoUInt64)), ((_x124 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x125 = @:tmpset0 __tmp__._0;
            _x126 = @:tmpset0 __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (8589934592i64 : stdgo.GoUInt64));
            _x128 = @:tmpset0 __tmp__._0;
            _x127 = @:tmpset0 __tmp__._1;
        };
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-8589934592i64 : stdgo.GoUInt64));
            _x130 = @:tmpset0 __tmp__._0;
            _x129 = @:tmpset0 __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (8589934592i64 : stdgo.GoUInt64));
            _x132 = @:tmpset0 __tmp__._0;
            _x131 = @:tmpset0 __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-8589934591i64 : stdgo.GoUInt64));
            _x134 = @:tmpset0 __tmp__._0;
            _x133 = @:tmpset0 __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, _x131, (0i64 : stdgo.GoUInt64));
            _x135 = @:tmpset0 __tmp__._0;
            _x136 = @:tmpset0 __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, _x129, ((_x136 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x137 = @:tmpset0 __tmp__._0;
            _x138 = @:tmpset0 __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, _x127, ((_x138 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x139 = @:tmpset0 __tmp__._0;
            _x140 = @:tmpset0 __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _x2, ((_x140 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x141 = @:tmpset0 __tmp__._0;
            _x142 = @:tmpset0 __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x133, (0i64 : stdgo.GoUInt64));
            _x143 = @:tmpset0 __tmp__._0;
            _x144 = @:tmpset0 __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x117, _x135, ((_x144 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x145 = @:tmpset0 __tmp__._0;
            _x146 = @:tmpset0 __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x119, _x137, ((_x146 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x147 = @:tmpset0 __tmp__._0;
            _x148 = @:tmpset0 __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x121, _x139, ((_x148 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x149 = @:tmpset0 __tmp__._0;
            _x150 = @:tmpset0 __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x123, _x141, ((_x150 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x151 = @:tmpset0 __tmp__._0;
            _x152 = @:tmpset0 __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x125, ((_x142 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x152 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x153 = @:tmpset0 __tmp__._0;
            _x154 = @:tmpset0 __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x143, (4294967297i64 : stdgo.GoUInt64));
            _x155 = @:tmpset0 __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-1i64 : stdgo.GoUInt64));
            _x158 = @:tmpset0 __tmp__._0;
            _x157 = @:tmpset0 __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-1i64 : stdgo.GoUInt64));
            _x160 = @:tmpset0 __tmp__._0;
            _x159 = @:tmpset0 __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-1i64 : stdgo.GoUInt64));
            _x162 = @:tmpset0 __tmp__._0;
            _x161 = @:tmpset0 __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-2i64 : stdgo.GoUInt64));
            _x164 = @:tmpset0 __tmp__._0;
            _x163 = @:tmpset0 __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-4294967296i64 : stdgo.GoUInt64));
            _x166 = @:tmpset0 __tmp__._0;
            _x165 = @:tmpset0 __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (4294967295i64 : stdgo.GoUInt64));
            _x168 = @:tmpset0 __tmp__._0;
            _x167 = @:tmpset0 __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x168, _x165, (0i64 : stdgo.GoUInt64));
            _x169 = @:tmpset0 __tmp__._0;
            _x170 = @:tmpset0 __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x166, _x163, ((_x170 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x171 = @:tmpset0 __tmp__._0;
            _x172 = @:tmpset0 __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x164, _x161, ((_x172 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x173 = @:tmpset0 __tmp__._0;
            _x174 = @:tmpset0 __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x162, _x159, ((_x174 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x175 = @:tmpset0 __tmp__._0;
            _x176 = @:tmpset0 __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x160, _x157, ((_x176 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x177 = @:tmpset0 __tmp__._0;
            _x178 = @:tmpset0 __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x143, _x167, (0i64 : stdgo.GoUInt64));
            _x180 = @:tmpset0 __tmp__._1;
        };
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x145, _x169, ((_x180 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x181 = @:tmpset0 __tmp__._0;
            _x182 = @:tmpset0 __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x147, _x171, ((_x182 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x183 = @:tmpset0 __tmp__._0;
            _x184 = @:tmpset0 __tmp__._1;
        };
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x149, _x173, ((_x184 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x185 = @:tmpset0 __tmp__._0;
            _x186 = @:tmpset0 __tmp__._1;
        };
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x151, _x175, ((_x186 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x187 = @:tmpset0 __tmp__._0;
            _x188 = @:tmpset0 __tmp__._1;
        };
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x153, _x177, ((_x188 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x189 = @:tmpset0 __tmp__._0;
            _x190 = @:tmpset0 __tmp__._1;
        };
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x154 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x126 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x178 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x158 : stdgo.GoUInt64)), ((_x190 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x191 = @:tmpset0 __tmp__._0;
            _x192 = @:tmpset0 __tmp__._1;
        };
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (8589934592i64 : stdgo.GoUInt64));
            _x194 = @:tmpset0 __tmp__._0;
            _x193 = @:tmpset0 __tmp__._1;
        };
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-8589934592i64 : stdgo.GoUInt64));
            _x196 = @:tmpset0 __tmp__._0;
            _x195 = @:tmpset0 __tmp__._1;
        };
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (8589934592i64 : stdgo.GoUInt64));
            _x198 = @:tmpset0 __tmp__._0;
            _x197 = @:tmpset0 __tmp__._1;
        };
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-8589934591i64 : stdgo.GoUInt64));
            _x200 = @:tmpset0 __tmp__._0;
            _x199 = @:tmpset0 __tmp__._1;
        };
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x197, (0i64 : stdgo.GoUInt64));
            _x201 = @:tmpset0 __tmp__._0;
            _x202 = @:tmpset0 __tmp__._1;
        };
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x195, ((_x202 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x203 = @:tmpset0 __tmp__._0;
            _x204 = @:tmpset0 __tmp__._1;
        };
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x193, ((_x204 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x205 = @:tmpset0 __tmp__._0;
            _x206 = @:tmpset0 __tmp__._1;
        };
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x3, ((_x206 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x207 = @:tmpset0 __tmp__._0;
            _x208 = @:tmpset0 __tmp__._1;
        };
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x181, _x199, (0i64 : stdgo.GoUInt64));
            _x209 = @:tmpset0 __tmp__._0;
            _x210 = @:tmpset0 __tmp__._1;
        };
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x183, _x201, ((_x210 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x211 = @:tmpset0 __tmp__._0;
            _x212 = @:tmpset0 __tmp__._1;
        };
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x185, _x203, ((_x212 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x213 = @:tmpset0 __tmp__._0;
            _x214 = @:tmpset0 __tmp__._1;
        };
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x187, _x205, ((_x214 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x215 = @:tmpset0 __tmp__._0;
            _x216 = @:tmpset0 __tmp__._1;
        };
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x189, _x207, ((_x216 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x217 = @:tmpset0 __tmp__._0;
            _x218 = @:tmpset0 __tmp__._1;
        };
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x191, ((_x208 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x218 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x219 = @:tmpset0 __tmp__._0;
            _x220 = @:tmpset0 __tmp__._1;
        };
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x209, (4294967297i64 : stdgo.GoUInt64));
            _x221 = @:tmpset0 __tmp__._1;
        };
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-1i64 : stdgo.GoUInt64));
            _x224 = @:tmpset0 __tmp__._0;
            _x223 = @:tmpset0 __tmp__._1;
        };
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-1i64 : stdgo.GoUInt64));
            _x226 = @:tmpset0 __tmp__._0;
            _x225 = @:tmpset0 __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-1i64 : stdgo.GoUInt64));
            _x228 = @:tmpset0 __tmp__._0;
            _x227 = @:tmpset0 __tmp__._1;
        };
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-2i64 : stdgo.GoUInt64));
            _x230 = @:tmpset0 __tmp__._0;
            _x229 = @:tmpset0 __tmp__._1;
        };
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-4294967296i64 : stdgo.GoUInt64));
            _x232 = @:tmpset0 __tmp__._0;
            _x231 = @:tmpset0 __tmp__._1;
        };
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (4294967295i64 : stdgo.GoUInt64));
            _x234 = @:tmpset0 __tmp__._0;
            _x233 = @:tmpset0 __tmp__._1;
        };
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x234, _x231, (0i64 : stdgo.GoUInt64));
            _x235 = @:tmpset0 __tmp__._0;
            _x236 = @:tmpset0 __tmp__._1;
        };
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x232, _x229, ((_x236 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x237 = @:tmpset0 __tmp__._0;
            _x238 = @:tmpset0 __tmp__._1;
        };
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x240:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x230, _x227, ((_x238 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x239 = @:tmpset0 __tmp__._0;
            _x240 = @:tmpset0 __tmp__._1;
        };
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x228, _x225, ((_x240 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x241 = @:tmpset0 __tmp__._0;
            _x242 = @:tmpset0 __tmp__._1;
        };
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x226, _x223, ((_x242 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x243 = @:tmpset0 __tmp__._0;
            _x244 = @:tmpset0 __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x233, (0i64 : stdgo.GoUInt64));
            _x246 = @:tmpset0 __tmp__._1;
        };
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x211, _x235, ((_x246 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x247 = @:tmpset0 __tmp__._0;
            _x248 = @:tmpset0 __tmp__._1;
        };
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x213, _x237, ((_x248 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x249 = @:tmpset0 __tmp__._0;
            _x250 = @:tmpset0 __tmp__._1;
        };
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x215, _x239, ((_x250 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x251 = @:tmpset0 __tmp__._0;
            _x252 = @:tmpset0 __tmp__._1;
        };
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x217, _x241, ((_x252 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x253 = @:tmpset0 __tmp__._0;
            _x254 = @:tmpset0 __tmp__._1;
        };
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x219, _x243, ((_x254 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x255 = @:tmpset0 __tmp__._0;
            _x256 = @:tmpset0 __tmp__._1;
        };
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x220 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x192 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x244 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x224 : stdgo.GoUInt64)), ((_x256 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x257 = @:tmpset0 __tmp__._0;
            _x258 = @:tmpset0 __tmp__._1;
        };
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (8589934592i64 : stdgo.GoUInt64));
            _x260 = @:tmpset0 __tmp__._0;
            _x259 = @:tmpset0 __tmp__._1;
        };
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-8589934592i64 : stdgo.GoUInt64));
            _x262 = @:tmpset0 __tmp__._0;
            _x261 = @:tmpset0 __tmp__._1;
        };
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (8589934592i64 : stdgo.GoUInt64));
            _x264 = @:tmpset0 __tmp__._0;
            _x263 = @:tmpset0 __tmp__._1;
        };
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-8589934591i64 : stdgo.GoUInt64));
            _x266 = @:tmpset0 __tmp__._0;
            _x265 = @:tmpset0 __tmp__._1;
        };
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x266, _x263, (0i64 : stdgo.GoUInt64));
            _x267 = @:tmpset0 __tmp__._0;
            _x268 = @:tmpset0 __tmp__._1;
        };
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x264, _x261, ((_x268 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x269 = @:tmpset0 __tmp__._0;
            _x270 = @:tmpset0 __tmp__._1;
        };
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x262, _x259, ((_x270 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x271 = @:tmpset0 __tmp__._0;
            _x272 = @:tmpset0 __tmp__._1;
        };
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x260, _x4, ((_x272 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x273 = @:tmpset0 __tmp__._0;
            _x274 = @:tmpset0 __tmp__._1;
        };
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x247, _x265, (0i64 : stdgo.GoUInt64));
            _x275 = @:tmpset0 __tmp__._0;
            _x276 = @:tmpset0 __tmp__._1;
        };
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x249, _x267, ((_x276 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x277 = @:tmpset0 __tmp__._0;
            _x278 = @:tmpset0 __tmp__._1;
        };
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x251, _x269, ((_x278 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x279 = @:tmpset0 __tmp__._0;
            _x280 = @:tmpset0 __tmp__._1;
        };
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x253, _x271, ((_x280 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x281 = @:tmpset0 __tmp__._0;
            _x282 = @:tmpset0 __tmp__._1;
        };
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x255, _x273, ((_x282 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x283 = @:tmpset0 __tmp__._0;
            _x284 = @:tmpset0 __tmp__._1;
        };
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x257, ((_x274 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x284 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x285 = @:tmpset0 __tmp__._0;
            _x286 = @:tmpset0 __tmp__._1;
        };
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x275, (4294967297i64 : stdgo.GoUInt64));
            _x287 = @:tmpset0 __tmp__._1;
        };
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-1i64 : stdgo.GoUInt64));
            _x290 = @:tmpset0 __tmp__._0;
            _x289 = @:tmpset0 __tmp__._1;
        };
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-1i64 : stdgo.GoUInt64));
            _x292 = @:tmpset0 __tmp__._0;
            _x291 = @:tmpset0 __tmp__._1;
        };
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-1i64 : stdgo.GoUInt64));
            _x294 = @:tmpset0 __tmp__._0;
            _x293 = @:tmpset0 __tmp__._1;
        };
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-2i64 : stdgo.GoUInt64));
            _x296 = @:tmpset0 __tmp__._0;
            _x295 = @:tmpset0 __tmp__._1;
        };
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-4294967296i64 : stdgo.GoUInt64));
            _x298 = @:tmpset0 __tmp__._0;
            _x297 = @:tmpset0 __tmp__._1;
        };
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (4294967295i64 : stdgo.GoUInt64));
            _x300 = @:tmpset0 __tmp__._0;
            _x299 = @:tmpset0 __tmp__._1;
        };
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x300, _x297, (0i64 : stdgo.GoUInt64));
            _x301 = @:tmpset0 __tmp__._0;
            _x302 = @:tmpset0 __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x298, _x295, ((_x302 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x303 = @:tmpset0 __tmp__._0;
            _x304 = @:tmpset0 __tmp__._1;
        };
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x296, _x293, ((_x304 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x305 = @:tmpset0 __tmp__._0;
            _x306 = @:tmpset0 __tmp__._1;
        };
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x294, _x291, ((_x306 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x307 = @:tmpset0 __tmp__._0;
            _x308 = @:tmpset0 __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x292, _x289, ((_x308 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x309 = @:tmpset0 __tmp__._0;
            _x310 = @:tmpset0 __tmp__._1;
        };
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x275, _x299, (0i64 : stdgo.GoUInt64));
            _x312 = @:tmpset0 __tmp__._1;
        };
        var _x313:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x301, ((_x312 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x313 = @:tmpset0 __tmp__._0;
            _x314 = @:tmpset0 __tmp__._1;
        };
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x279, _x303, ((_x314 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x315 = @:tmpset0 __tmp__._0;
            _x316 = @:tmpset0 __tmp__._1;
        };
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x281, _x305, ((_x316 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x317 = @:tmpset0 __tmp__._0;
            _x318 = @:tmpset0 __tmp__._1;
        };
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x283, _x307, ((_x318 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x319 = @:tmpset0 __tmp__._0;
            _x320 = @:tmpset0 __tmp__._1;
        };
        var _x321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x285, _x309, ((_x320 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x321 = @:tmpset0 __tmp__._0;
            _x322 = @:tmpset0 __tmp__._1;
        };
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x286 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x258 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x310 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x290 : stdgo.GoUInt64)), ((_x322 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x323 = @:tmpset0 __tmp__._0;
            _x324 = @:tmpset0 __tmp__._1;
        };
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (8589934592i64 : stdgo.GoUInt64));
            _x326 = @:tmpset0 __tmp__._0;
            _x325 = @:tmpset0 __tmp__._1;
        };
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (-8589934592i64 : stdgo.GoUInt64));
            _x328 = @:tmpset0 __tmp__._0;
            _x327 = @:tmpset0 __tmp__._1;
        };
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (8589934592i64 : stdgo.GoUInt64));
            _x330 = @:tmpset0 __tmp__._0;
            _x329 = @:tmpset0 __tmp__._1;
        };
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (-8589934591i64 : stdgo.GoUInt64));
            _x332 = @:tmpset0 __tmp__._0;
            _x331 = @:tmpset0 __tmp__._1;
        };
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x332, _x329, (0i64 : stdgo.GoUInt64));
            _x333 = @:tmpset0 __tmp__._0;
            _x334 = @:tmpset0 __tmp__._1;
        };
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x330, _x327, ((_x334 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x335 = @:tmpset0 __tmp__._0;
            _x336 = @:tmpset0 __tmp__._1;
        };
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x328, _x325, ((_x336 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x337 = @:tmpset0 __tmp__._0;
            _x338 = @:tmpset0 __tmp__._1;
        };
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x326, _x5, ((_x338 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x339 = @:tmpset0 __tmp__._0;
            _x340 = @:tmpset0 __tmp__._1;
        };
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x313, _x331, (0i64 : stdgo.GoUInt64));
            _x341 = @:tmpset0 __tmp__._0;
            _x342 = @:tmpset0 __tmp__._1;
        };
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x315, _x333, ((_x342 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x343 = @:tmpset0 __tmp__._0;
            _x344 = @:tmpset0 __tmp__._1;
        };
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x317, _x335, ((_x344 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x345 = @:tmpset0 __tmp__._0;
            _x346 = @:tmpset0 __tmp__._1;
        };
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x319, _x337, ((_x346 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x347 = @:tmpset0 __tmp__._0;
            _x348 = @:tmpset0 __tmp__._1;
        };
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x321, _x339, ((_x348 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x349 = @:tmpset0 __tmp__._0;
            _x350 = @:tmpset0 __tmp__._1;
        };
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x323, ((_x340 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x350 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x351 = @:tmpset0 __tmp__._0;
            _x352 = @:tmpset0 __tmp__._1;
        };
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x341, (4294967297i64 : stdgo.GoUInt64));
            _x353 = @:tmpset0 __tmp__._1;
        };
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-1i64 : stdgo.GoUInt64));
            _x356 = @:tmpset0 __tmp__._0;
            _x355 = @:tmpset0 __tmp__._1;
        };
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-1i64 : stdgo.GoUInt64));
            _x358 = @:tmpset0 __tmp__._0;
            _x357 = @:tmpset0 __tmp__._1;
        };
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-1i64 : stdgo.GoUInt64));
            _x360 = @:tmpset0 __tmp__._0;
            _x359 = @:tmpset0 __tmp__._1;
        };
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-2i64 : stdgo.GoUInt64));
            _x362 = @:tmpset0 __tmp__._0;
            _x361 = @:tmpset0 __tmp__._1;
        };
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-4294967296i64 : stdgo.GoUInt64));
            _x364 = @:tmpset0 __tmp__._0;
            _x363 = @:tmpset0 __tmp__._1;
        };
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (4294967295i64 : stdgo.GoUInt64));
            _x366 = @:tmpset0 __tmp__._0;
            _x365 = @:tmpset0 __tmp__._1;
        };
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x366, _x363, (0i64 : stdgo.GoUInt64));
            _x367 = @:tmpset0 __tmp__._0;
            _x368 = @:tmpset0 __tmp__._1;
        };
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x364, _x361, ((_x368 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x369 = @:tmpset0 __tmp__._0;
            _x370 = @:tmpset0 __tmp__._1;
        };
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x362, _x359, ((_x370 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x371 = @:tmpset0 __tmp__._0;
            _x372 = @:tmpset0 __tmp__._1;
        };
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x360, _x357, ((_x372 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x373 = @:tmpset0 __tmp__._0;
            _x374 = @:tmpset0 __tmp__._1;
        };
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x376:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x358, _x355, ((_x374 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x375 = @:tmpset0 __tmp__._0;
            _x376 = @:tmpset0 __tmp__._1;
        };
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x341, _x365, (0i64 : stdgo.GoUInt64));
            _x378 = @:tmpset0 __tmp__._1;
        };
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x343, _x367, ((_x378 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x379 = @:tmpset0 __tmp__._0;
            _x380 = @:tmpset0 __tmp__._1;
        };
        var _x381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x345, _x369, ((_x380 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x381 = @:tmpset0 __tmp__._0;
            _x382 = @:tmpset0 __tmp__._1;
        };
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x347, _x371, ((_x382 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x383 = @:tmpset0 __tmp__._0;
            _x384 = @:tmpset0 __tmp__._1;
        };
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x349, _x373, ((_x384 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x385 = @:tmpset0 __tmp__._0;
            _x386 = @:tmpset0 __tmp__._1;
        };
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x351, _x375, ((_x386 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x387 = @:tmpset0 __tmp__._0;
            _x388 = @:tmpset0 __tmp__._1;
        };
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x352 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x324 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x376 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64) + _x356 : stdgo.GoUInt64)), ((_x388 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x389 = @:tmpset0 __tmp__._0;
            _x390 = @:tmpset0 __tmp__._1;
        };
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x379, (4294967295i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x391 = @:tmpset0 __tmp__._0;
            _x392 = @:tmpset0 __tmp__._1;
        };
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x381, (-4294967296i64 : stdgo.GoUInt64), ((_x392 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x393 = @:tmpset0 __tmp__._0;
            _x394 = @:tmpset0 __tmp__._1;
        };
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x383, (-2i64 : stdgo.GoUInt64), ((_x394 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x395 = @:tmpset0 __tmp__._0;
            _x396 = @:tmpset0 __tmp__._1;
        };
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x385, (-1i64 : stdgo.GoUInt64), ((_x396 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x397 = @:tmpset0 __tmp__._0;
            _x398 = @:tmpset0 __tmp__._1;
        };
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x387, (-1i64 : stdgo.GoUInt64), ((_x398 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x399 = @:tmpset0 __tmp__._0;
            _x400 = @:tmpset0 __tmp__._1;
        };
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x389, (-1i64 : stdgo.GoUInt64), ((_x400 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x401 = @:tmpset0 __tmp__._0;
            _x402 = @:tmpset0 __tmp__._1;
        };
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x390 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x402 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x404 = @:tmpset0 __tmp__._1;
        };
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x405__pointer__ = stdgo.Go.pointer(_x405);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x405__pointer__, (_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x391, _x379);
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x406__pointer__ = stdgo.Go.pointer(_x406);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x406__pointer__, (_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x393, _x381);
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x407__pointer__ = stdgo.Go.pointer(_x407);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x407__pointer__, (_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x395, _x383);
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x408__pointer__ = stdgo.Go.pointer(_x408);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x408__pointer__, (_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x397, _x385);
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x409__pointer__ = stdgo.Go.pointer(_x409);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x409__pointer__, (_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x399, _x387);
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x410__pointer__ = stdgo.Go.pointer(_x410);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x410__pointer__, (_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x401, _x389);
        _out1[(0 : stdgo.GoInt)] = _x405;
        _out1[(1 : stdgo.GoInt)] = _x406;
        _out1[(2 : stdgo.GoInt)] = _x407;
        _out1[(3 : stdgo.GoInt)] = _x408;
        _out1[(4 : stdgo.GoInt)] = _x409;
        _out1[(5 : stdgo.GoInt)] = _x410;
    }
