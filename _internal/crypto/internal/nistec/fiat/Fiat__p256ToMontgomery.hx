package _internal.crypto.internal.nistec.fiat;
function _p256ToMontgomery(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256NonMontgomeryDomainFieldElement.T_p256NonMontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (21474836477i64 : stdgo.GoUInt64));
            _x6 = __tmp__._0;
            _x5 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-2i64 : stdgo.GoUInt64));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-17179869185i64 : stdgo.GoUInt64));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (3i64 : stdgo.GoUInt64));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _x9, (0i64 : stdgo.GoUInt64));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x14 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x8, _x5, ((_x16 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-4294967295i64 : stdgo.GoUInt64));
            _x20 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (4294967295i64 : stdgo.GoUInt64));
            _x22 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-1i64 : stdgo.GoUInt64));
            _x24 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x24, _x21, (0i64 : stdgo.GoUInt64));
            _x25 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x23, (0i64 : stdgo.GoUInt64));
            _x28 = __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x25, ((_x28 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x29 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, ((((_x26 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x22 : stdgo.GoUInt64)), ((_x30 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x31 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x19, ((_x32 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x18 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x6 : stdgo.GoUInt64)), _x20, ((_x34 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (21474836477i64 : stdgo.GoUInt64));
            _x38 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-2i64 : stdgo.GoUInt64));
            _x40 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-17179869185i64 : stdgo.GoUInt64));
            _x42 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (3i64 : stdgo.GoUInt64));
            _x44 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x41, (0i64 : stdgo.GoUInt64));
            _x45 = __tmp__._0;
            _x46 = __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x39, ((_x46 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x47 = __tmp__._0;
            _x48 = __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, _x37, ((_x48 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x29, _x43, (0i64 : stdgo.GoUInt64));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x31, _x45, ((_x52 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x33, _x47, ((_x54 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x35, _x49, ((_x56 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x51, (-4294967295i64 : stdgo.GoUInt64));
            _x60 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x51, (4294967295i64 : stdgo.GoUInt64));
            _x62 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x51, (-1i64 : stdgo.GoUInt64));
            _x64 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x61, (0i64 : stdgo.GoUInt64));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x51, _x63, (0i64 : stdgo.GoUInt64));
            _x68 = __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x53, _x65, ((_x68 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x55, ((((_x66 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x62 : stdgo.GoUInt64)), ((_x70 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, _x59, ((_x72 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((((_x58 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x36 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)) + ((((_x50 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x38 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x60, ((_x74 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (21474836477i64 : stdgo.GoUInt64));
            _x78 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-2i64 : stdgo.GoUInt64));
            _x80 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-17179869185i64 : stdgo.GoUInt64));
            _x82 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (3i64 : stdgo.GoUInt64));
            _x84 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, _x81, (0i64 : stdgo.GoUInt64));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, _x79, ((_x86 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x80, _x77, ((_x88 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x69, _x83, (0i64 : stdgo.GoUInt64));
            _x91 = __tmp__._0;
            _x92 = __tmp__._1;
        };
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x71, _x85, ((_x92 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x93 = __tmp__._0;
            _x94 = __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x87, ((_x94 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x95 = __tmp__._0;
            _x96 = __tmp__._1;
        };
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x75, _x89, ((_x96 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x97 = __tmp__._0;
            _x98 = __tmp__._1;
        };
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x91, (-4294967295i64 : stdgo.GoUInt64));
            _x100 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x91, (4294967295i64 : stdgo.GoUInt64));
            _x102 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x91, (-1i64 : stdgo.GoUInt64));
            _x104 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x104, _x101, (0i64 : stdgo.GoUInt64));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x91, _x103, (0i64 : stdgo.GoUInt64));
            _x108 = __tmp__._1;
        };
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x93, _x105, ((_x108 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x109 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x95, ((((_x106 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x102 : stdgo.GoUInt64)), ((_x110 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x97, _x99, ((_x112 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x113 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((((_x98 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x76 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)) + ((((_x90 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x78 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x100, ((_x114 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (21474836477i64 : stdgo.GoUInt64));
            _x118 = __tmp__._0;
            _x117 = __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-2i64 : stdgo.GoUInt64));
            _x120 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-17179869185i64 : stdgo.GoUInt64));
            _x122 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (3i64 : stdgo.GoUInt64));
            _x124 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x124, _x121, (0i64 : stdgo.GoUInt64));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x122, _x119, ((_x126 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x127 = __tmp__._0;
            _x128 = __tmp__._1;
        };
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x120, _x117, ((_x128 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x129 = __tmp__._0;
            _x130 = __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x123, (0i64 : stdgo.GoUInt64));
            _x131 = __tmp__._0;
            _x132 = __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x125, ((_x132 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x133 = __tmp__._0;
            _x134 = __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x127, ((_x134 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x129, ((_x136 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x131, (-4294967295i64 : stdgo.GoUInt64));
            _x140 = __tmp__._0;
            _x139 = __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x131, (4294967295i64 : stdgo.GoUInt64));
            _x142 = __tmp__._0;
            _x141 = __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x131, (-1i64 : stdgo.GoUInt64));
            _x144 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x144, _x141, (0i64 : stdgo.GoUInt64));
            _x145 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x131, _x143, (0i64 : stdgo.GoUInt64));
            _x148 = __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x133, _x145, ((_x148 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x135, ((((_x146 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x142 : stdgo.GoUInt64)), ((_x150 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x137, _x139, ((_x152 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((((_x138 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x116 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)) + ((((_x130 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x118 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x140, ((_x154 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x155 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x149, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x157 = __tmp__._0;
            _x158 = __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x151, (4294967295i64 : stdgo.GoUInt64), ((_x158 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x159 = __tmp__._0;
            _x160 = __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x153, (0i64 : stdgo.GoUInt64), ((_x160 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x161 = __tmp__._0;
            _x162 = __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x155, (-4294967295i64 : stdgo.GoUInt64), ((_x162 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x163 = __tmp__._0;
            _x164 = __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x156 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x164 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x166 = __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x167), (_x166 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x157, _x149);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x168), (_x166 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x159, _x151);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x169), (_x166 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x161, _x153);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x170), (_x166 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x163, _x155);
        _out1[(0 : stdgo.GoInt)] = _x167;
        _out1[(1 : stdgo.GoInt)] = _x168;
        _out1[(2 : stdgo.GoInt)] = _x169;
        _out1[(3 : stdgo.GoInt)] = _x170;
    }