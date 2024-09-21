package _internal.crypto.internal.nistec.fiat;
function _p256Square(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p256MontgomeryDomainFieldElement.T_p256MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(3 : stdgo.GoInt)]);
            _x6 = __tmp__._0;
            _x5 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(2 : stdgo.GoInt)]);
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(1 : stdgo.GoInt)]);
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(0 : stdgo.GoInt)]);
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
        var _x19 = ((((_x18 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x6 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-4294967295i64 : stdgo.GoUInt64));
            _x21 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (4294967295i64 : stdgo.GoUInt64));
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-1i64 : stdgo.GoUInt64));
            _x25 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x25, _x22, (0i64 : stdgo.GoUInt64));
            _x26 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x28 = ((((_x27 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x23 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x24, (0i64 : stdgo.GoUInt64));
            _x30 = __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x26, ((_x30 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x31 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x28, ((_x32 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x20, ((_x34 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x21, ((_x36 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(3 : stdgo.GoInt)]);
            _x40 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(2 : stdgo.GoInt)]);
            _x42 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(1 : stdgo.GoInt)]);
            _x44 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(0 : stdgo.GoInt)]);
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x46, _x43, (0i64 : stdgo.GoUInt64));
            _x47 = __tmp__._0;
            _x48 = __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x41, ((_x48 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x39, ((_x50 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53 = ((((_x52 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x40 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x31, _x45, (0i64 : stdgo.GoUInt64));
            _x54 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x33, _x47, ((_x55 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x56 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x35, _x49, ((_x57 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x58 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x37, _x51, ((_x59 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x60 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64), _x53, ((_x61 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-4294967295i64 : stdgo.GoUInt64));
            _x65 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (4294967295i64 : stdgo.GoUInt64));
            _x67 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x69 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x69, _x66, (0i64 : stdgo.GoUInt64));
            _x70 = __tmp__._0;
            _x71 = __tmp__._1;
        };
        var _x72 = ((((_x71 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x67 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _x68, (0i64 : stdgo.GoUInt64));
            _x74 = __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x70, ((_x74 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, _x72, ((_x76 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x64, ((_x78 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x79 = __tmp__._0;
            _x80 = __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x65, ((_x80 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x81 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x83 = ((((_x82 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x63 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(3 : stdgo.GoInt)]);
            _x85 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(2 : stdgo.GoInt)]);
            _x87 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(1 : stdgo.GoInt)]);
            _x89 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(0 : stdgo.GoInt)]);
            _x91 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x91, _x88, (0i64 : stdgo.GoUInt64));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x89, _x86, ((_x93 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x87, _x84, ((_x95 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98 = ((((_x97 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x85 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x75, _x90, (0i64 : stdgo.GoUInt64));
            _x99 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x77, _x92, ((_x100 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x101 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x79, _x94, ((_x102 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x103 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x81, _x96, ((_x104 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x83, _x98, ((_x106 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x99, (-4294967295i64 : stdgo.GoUInt64));
            _x110 = __tmp__._0;
            _x109 = __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x99, (4294967295i64 : stdgo.GoUInt64));
            _x112 = __tmp__._0;
            _x111 = __tmp__._1;
        };
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x99, (-1i64 : stdgo.GoUInt64));
            _x114 = __tmp__._0;
            _x113 = __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x114, _x111, (0i64 : stdgo.GoUInt64));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117 = ((((_x116 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x112 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x99, _x113, (0i64 : stdgo.GoUInt64));
            _x119 = __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x101, _x115, ((_x119 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x103, _x117, ((_x121 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x105, _x109, ((_x123 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x107, _x110, ((_x125 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128 = ((((_x127 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x108 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(3 : stdgo.GoInt)]);
            _x130 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(2 : stdgo.GoInt)]);
            _x132 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(1 : stdgo.GoInt)]);
            _x134 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(0 : stdgo.GoInt)]);
            _x136 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x136, _x133, (0i64 : stdgo.GoUInt64));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, _x131, ((_x138 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, _x129, ((_x140 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143 = ((((_x142 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x130 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x120, _x135, (0i64 : stdgo.GoUInt64));
            _x144 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x122, _x137, ((_x145 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x146 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x124, _x139, ((_x147 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x148 = __tmp__._0;
            _x149 = __tmp__._1;
        };
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x126, _x141, ((_x149 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x150 = __tmp__._0;
            _x151 = __tmp__._1;
        };
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _x143, ((_x151 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x152 = __tmp__._0;
            _x153 = __tmp__._1;
        };
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x144, (-4294967295i64 : stdgo.GoUInt64));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x144, (4294967295i64 : stdgo.GoUInt64));
            _x157 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x144, (-1i64 : stdgo.GoUInt64));
            _x159 = __tmp__._0;
            _x158 = __tmp__._1;
        };
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x159, _x156, (0i64 : stdgo.GoUInt64));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162 = ((((_x161 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + _x157 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x144, _x158, (0i64 : stdgo.GoUInt64));
            _x164 = __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x146, _x160, ((_x164 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x165 = __tmp__._0;
            _x166 = __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x148, _x162, ((_x166 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x167 = __tmp__._0;
            _x168 = __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x150, _x154, ((_x168 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x152, _x155, ((_x170 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173 = ((((_x172 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x153 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x165, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x167, (4294967295i64 : stdgo.GoUInt64), ((_x175 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x176 = __tmp__._0;
            _x177 = __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x169, (0i64 : stdgo.GoUInt64), ((_x177 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x178 = __tmp__._0;
            _x179 = __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x171, (-4294967295i64 : stdgo.GoUInt64), ((_x179 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x180 = __tmp__._0;
            _x181 = __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x173, (0i64 : stdgo.GoUInt64), ((_x181 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x183 = __tmp__._1;
        };
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x184), (_x183 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x174, _x165);
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x185), (_x183 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x176, _x167);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x186), (_x183 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x178, _x169);
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p256CmovznzU64._p256CmovznzU64(stdgo.Go.pointer(_x187), (_x183 : _internal.crypto.internal.nistec.fiat.Fiat_T_p256Uint1.T_p256Uint1), _x180, _x171);
        _out1[(0 : stdgo.GoInt)] = _x184;
        _out1[(1 : stdgo.GoInt)] = _x185;
        _out1[(2 : stdgo.GoInt)] = _x186;
        _out1[(3 : stdgo.GoInt)] = _x187;
    }
