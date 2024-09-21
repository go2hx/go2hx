package _internal.crypto.internal.nistec.fiat;
function _p384ToMontgomery(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement>):Void {
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
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (-8589934592i64 : stdgo.GoUInt64));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (8589934592i64 : stdgo.GoUInt64));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, (-8589934591i64 : stdgo.GoUInt64));
            _x14 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x14, _x11, (0i64 : stdgo.GoUInt64));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _x9, ((_x16 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x18 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x8, _x6, ((_x20 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x13, (4294967297i64 : stdgo.GoUInt64));
            _x23 = __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-1i64 : stdgo.GoUInt64));
            _x26 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-1i64 : stdgo.GoUInt64));
            _x28 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-1i64 : stdgo.GoUInt64));
            _x30 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-2i64 : stdgo.GoUInt64));
            _x32 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (-4294967296i64 : stdgo.GoUInt64));
            _x34 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x23, (4294967295i64 : stdgo.GoUInt64));
            _x36 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, _x33, (0i64 : stdgo.GoUInt64));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, _x31, ((_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x39 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, _x29, ((_x40 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x41 = __tmp__._0;
            _x42 = __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, _x27, ((_x42 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x43 = __tmp__._0;
            _x44 = __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, _x25, ((_x44 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x45 = __tmp__._0;
            _x46 = __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x35, (0i64 : stdgo.GoUInt64));
            _x48 = __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x37, ((_x48 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x39, ((_x50 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x41, ((_x52 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x21, _x43, ((_x54 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((_x22 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), _x45, ((_x56 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), ((((_x46 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x26 : stdgo.GoUInt64)), ((_x58 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x59 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (8589934592i64 : stdgo.GoUInt64));
            _x62 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-8589934592i64 : stdgo.GoUInt64));
            _x64 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (8589934592i64 : stdgo.GoUInt64));
            _x66 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-8589934591i64 : stdgo.GoUInt64));
            _x68 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x68, _x65, (0i64 : stdgo.GoUInt64));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x66, _x63, ((_x70 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x61, ((_x72 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x1, ((_x74 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x49, _x67, (0i64 : stdgo.GoUInt64));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x51, _x69, ((_x78 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x79 = __tmp__._0;
            _x80 = __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x53, _x71, ((_x80 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x81 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x55, _x73, ((_x82 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x83 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, _x75, ((_x84 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x59, ((_x76 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x86 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x77, (4294967297i64 : stdgo.GoUInt64));
            _x89 = __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-1i64 : stdgo.GoUInt64));
            _x92 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-1i64 : stdgo.GoUInt64));
            _x94 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-1i64 : stdgo.GoUInt64));
            _x96 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-2i64 : stdgo.GoUInt64));
            _x98 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (-4294967296i64 : stdgo.GoUInt64));
            _x100 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x89, (4294967295i64 : stdgo.GoUInt64));
            _x102 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x102, _x99, (0i64 : stdgo.GoUInt64));
            _x103 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x100, _x97, ((_x104 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x98, _x95, ((_x106 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x96, _x93, ((_x108 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x109 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x94, _x91, ((_x110 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x77, _x101, (0i64 : stdgo.GoUInt64));
            _x114 = __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x79, _x103, ((_x114 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x81, _x105, ((_x116 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x117 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x83, _x107, ((_x118 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x119 = __tmp__._0;
            _x120 = __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x85, _x109, ((_x120 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x121 = __tmp__._0;
            _x122 = __tmp__._1;
        };
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x87, _x111, ((_x122 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x123 = __tmp__._0;
            _x124 = __tmp__._1;
        };
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x88 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x60 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x112 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x92 : stdgo.GoUInt64)), ((_x124 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (8589934592i64 : stdgo.GoUInt64));
            _x128 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-8589934592i64 : stdgo.GoUInt64));
            _x130 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (8589934592i64 : stdgo.GoUInt64));
            _x132 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-8589934591i64 : stdgo.GoUInt64));
            _x134 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, _x131, (0i64 : stdgo.GoUInt64));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, _x129, ((_x136 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, _x127, ((_x138 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _x2, ((_x140 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x133, (0i64 : stdgo.GoUInt64));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x117, _x135, ((_x144 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x145 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x119, _x137, ((_x146 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x147 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x121, _x139, ((_x148 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x123, _x141, ((_x150 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x125, ((_x142 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x152 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x143, (4294967297i64 : stdgo.GoUInt64));
            _x155 = __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-1i64 : stdgo.GoUInt64));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-1i64 : stdgo.GoUInt64));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-1i64 : stdgo.GoUInt64));
            _x162 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-2i64 : stdgo.GoUInt64));
            _x164 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (-4294967296i64 : stdgo.GoUInt64));
            _x166 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x155, (4294967295i64 : stdgo.GoUInt64));
            _x168 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x168, _x165, (0i64 : stdgo.GoUInt64));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x166, _x163, ((_x170 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x164, _x161, ((_x172 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x162, _x159, ((_x174 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x160, _x157, ((_x176 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x143, _x167, (0i64 : stdgo.GoUInt64));
            _x180 = __tmp__._1;
        };
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x145, _x169, ((_x180 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x147, _x171, ((_x182 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x149, _x173, ((_x184 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x151, _x175, ((_x186 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x153, _x177, ((_x188 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x189 = __tmp__._0;
            _x190 = __tmp__._1;
        };
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x154 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x126 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x178 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x158 : stdgo.GoUInt64)), ((_x190 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x191 = __tmp__._0;
            _x192 = __tmp__._1;
        };
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (8589934592i64 : stdgo.GoUInt64));
            _x194 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-8589934592i64 : stdgo.GoUInt64));
            _x196 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (8589934592i64 : stdgo.GoUInt64));
            _x198 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-8589934591i64 : stdgo.GoUInt64));
            _x200 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x197, (0i64 : stdgo.GoUInt64));
            _x201 = __tmp__._0;
            _x202 = __tmp__._1;
        };
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x195, ((_x202 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x203 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x193, ((_x204 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x205 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x3, ((_x206 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x207 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x181, _x199, (0i64 : stdgo.GoUInt64));
            _x209 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x183, _x201, ((_x210 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x211 = __tmp__._0;
            _x212 = __tmp__._1;
        };
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x185, _x203, ((_x212 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x213 = __tmp__._0;
            _x214 = __tmp__._1;
        };
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x187, _x205, ((_x214 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x215 = __tmp__._0;
            _x216 = __tmp__._1;
        };
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x189, _x207, ((_x216 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x217 = __tmp__._0;
            _x218 = __tmp__._1;
        };
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x191, ((_x208 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x218 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x219 = __tmp__._0;
            _x220 = __tmp__._1;
        };
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x209, (4294967297i64 : stdgo.GoUInt64));
            _x221 = __tmp__._1;
        };
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-1i64 : stdgo.GoUInt64));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-1i64 : stdgo.GoUInt64));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-1i64 : stdgo.GoUInt64));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-2i64 : stdgo.GoUInt64));
            _x230 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (-4294967296i64 : stdgo.GoUInt64));
            _x232 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x221, (4294967295i64 : stdgo.GoUInt64));
            _x234 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x234, _x231, (0i64 : stdgo.GoUInt64));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x232, _x229, ((_x236 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x240:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x230, _x227, ((_x238 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x228, _x225, ((_x240 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x226, _x223, ((_x242 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x233, (0i64 : stdgo.GoUInt64));
            _x246 = __tmp__._1;
        };
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x211, _x235, ((_x246 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x247 = __tmp__._0;
            _x248 = __tmp__._1;
        };
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x213, _x237, ((_x248 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x249 = __tmp__._0;
            _x250 = __tmp__._1;
        };
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x215, _x239, ((_x250 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x251 = __tmp__._0;
            _x252 = __tmp__._1;
        };
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x217, _x241, ((_x252 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x253 = __tmp__._0;
            _x254 = __tmp__._1;
        };
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x219, _x243, ((_x254 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x255 = __tmp__._0;
            _x256 = __tmp__._1;
        };
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x220 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x192 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x244 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x224 : stdgo.GoUInt64)), ((_x256 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x257 = __tmp__._0;
            _x258 = __tmp__._1;
        };
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (8589934592i64 : stdgo.GoUInt64));
            _x260 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-8589934592i64 : stdgo.GoUInt64));
            _x262 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (8589934592i64 : stdgo.GoUInt64));
            _x264 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-8589934591i64 : stdgo.GoUInt64));
            _x266 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x266, _x263, (0i64 : stdgo.GoUInt64));
            _x267 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x264, _x261, ((_x268 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x269 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x262, _x259, ((_x270 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x271 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x260, _x4, ((_x272 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x273 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x247, _x265, (0i64 : stdgo.GoUInt64));
            _x275 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x249, _x267, ((_x276 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x277 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x251, _x269, ((_x278 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x279 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x253, _x271, ((_x280 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x281 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x255, _x273, ((_x282 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x283 = __tmp__._0;
            _x284 = __tmp__._1;
        };
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x257, ((_x274 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x284 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x285 = __tmp__._0;
            _x286 = __tmp__._1;
        };
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x275, (4294967297i64 : stdgo.GoUInt64));
            _x287 = __tmp__._1;
        };
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-1i64 : stdgo.GoUInt64));
            _x290 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-1i64 : stdgo.GoUInt64));
            _x292 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-1i64 : stdgo.GoUInt64));
            _x294 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-2i64 : stdgo.GoUInt64));
            _x296 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (-4294967296i64 : stdgo.GoUInt64));
            _x298 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x287, (4294967295i64 : stdgo.GoUInt64));
            _x300 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x300, _x297, (0i64 : stdgo.GoUInt64));
            _x301 = __tmp__._0;
            _x302 = __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x298, _x295, ((_x302 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x296, _x293, ((_x304 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x294, _x291, ((_x306 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x292, _x289, ((_x308 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x275, _x299, (0i64 : stdgo.GoUInt64));
            _x312 = __tmp__._1;
        };
        var _x313:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x301, ((_x312 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x313 = __tmp__._0;
            _x314 = __tmp__._1;
        };
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x279, _x303, ((_x314 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x281, _x305, ((_x316 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x283, _x307, ((_x318 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x285, _x309, ((_x320 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x321 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x286 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x258 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x310 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x290 : stdgo.GoUInt64)), ((_x322 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x323 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (8589934592i64 : stdgo.GoUInt64));
            _x326 = __tmp__._0;
            _x325 = __tmp__._1;
        };
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (-8589934592i64 : stdgo.GoUInt64));
            _x328 = __tmp__._0;
            _x327 = __tmp__._1;
        };
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (8589934592i64 : stdgo.GoUInt64));
            _x330 = __tmp__._0;
            _x329 = __tmp__._1;
        };
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, (-8589934591i64 : stdgo.GoUInt64));
            _x332 = __tmp__._0;
            _x331 = __tmp__._1;
        };
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x332, _x329, (0i64 : stdgo.GoUInt64));
            _x333 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x330, _x327, ((_x334 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x335 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x328, _x325, ((_x336 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x337 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x326, _x5, ((_x338 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x339 = __tmp__._0;
            _x340 = __tmp__._1;
        };
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x313, _x331, (0i64 : stdgo.GoUInt64));
            _x341 = __tmp__._0;
            _x342 = __tmp__._1;
        };
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x315, _x333, ((_x342 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x343 = __tmp__._0;
            _x344 = __tmp__._1;
        };
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x317, _x335, ((_x344 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x345 = __tmp__._0;
            _x346 = __tmp__._1;
        };
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x319, _x337, ((_x346 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x347 = __tmp__._0;
            _x348 = __tmp__._1;
        };
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x321, _x339, ((_x348 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x349 = __tmp__._0;
            _x350 = __tmp__._1;
        };
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x323, ((_x340 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), ((_x350 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x351 = __tmp__._0;
            _x352 = __tmp__._1;
        };
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x341, (4294967297i64 : stdgo.GoUInt64));
            _x353 = __tmp__._1;
        };
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-1i64 : stdgo.GoUInt64));
            _x356 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-1i64 : stdgo.GoUInt64));
            _x358 = __tmp__._0;
            _x357 = __tmp__._1;
        };
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-1i64 : stdgo.GoUInt64));
            _x360 = __tmp__._0;
            _x359 = __tmp__._1;
        };
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-2i64 : stdgo.GoUInt64));
            _x362 = __tmp__._0;
            _x361 = __tmp__._1;
        };
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (-4294967296i64 : stdgo.GoUInt64));
            _x364 = __tmp__._0;
            _x363 = __tmp__._1;
        };
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x353, (4294967295i64 : stdgo.GoUInt64));
            _x366 = __tmp__._0;
            _x365 = __tmp__._1;
        };
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x366, _x363, (0i64 : stdgo.GoUInt64));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x364, _x361, ((_x368 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x362, _x359, ((_x370 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x360, _x357, ((_x372 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x376:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x358, _x355, ((_x374 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x341, _x365, (0i64 : stdgo.GoUInt64));
            _x378 = __tmp__._1;
        };
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x343, _x367, ((_x378 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x379 = __tmp__._0;
            _x380 = __tmp__._1;
        };
        var _x381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x345, _x369, ((_x380 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x381 = __tmp__._0;
            _x382 = __tmp__._1;
        };
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x347, _x371, ((_x382 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x383 = __tmp__._0;
            _x384 = __tmp__._1;
        };
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x349, _x373, ((_x384 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x385 = __tmp__._0;
            _x386 = __tmp__._1;
        };
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x351, _x375, ((_x386 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x387 = __tmp__._0;
            _x388 = __tmp__._1;
        };
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x352 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x324 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x376 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x356 : stdgo.GoUInt64)), ((_x388 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x389 = __tmp__._0;
            _x390 = __tmp__._1;
        };
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x379, (4294967295i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x391 = __tmp__._0;
            _x392 = __tmp__._1;
        };
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x381, (-4294967296i64 : stdgo.GoUInt64), ((_x392 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x393 = __tmp__._0;
            _x394 = __tmp__._1;
        };
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x383, (-2i64 : stdgo.GoUInt64), ((_x394 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x385, (-1i64 : stdgo.GoUInt64), ((_x396 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x387, (-1i64 : stdgo.GoUInt64), ((_x398 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x399 = __tmp__._0;
            _x400 = __tmp__._1;
        };
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x389, (-1i64 : stdgo.GoUInt64), ((_x400 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x390 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x402 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x404 = __tmp__._1;
        };
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x405), (_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x391, _x379);
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x406), (_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x393, _x381);
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x407), (_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x395, _x383);
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x408), (_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x397, _x385);
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x409), (_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x399, _x387);
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x410), (_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x401, _x389);
        _out1[(0 : stdgo.GoInt)] = _x405;
        _out1[(1 : stdgo.GoInt)] = _x406;
        _out1[(2 : stdgo.GoInt)] = _x407;
        _out1[(3 : stdgo.GoInt)] = _x408;
        _out1[(4 : stdgo.GoInt)] = _x409;
        _out1[(5 : stdgo.GoInt)] = _x410;
    }
