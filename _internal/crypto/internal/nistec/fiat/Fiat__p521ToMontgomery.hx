package _internal.crypto.internal.nistec.fiat;
function _p521ToMontgomery(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521NonMontgomeryDomainFieldElement.T_p521NonMontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(0 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x2 = __tmp__._0;
            _x1 = __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(1 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x4 = __tmp__._0;
            _x3 = __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x2, _x3, (0i64 : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (511i64 : stdgo.GoUInt64));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x14 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x16 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x18 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x20 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x22 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
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
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x22, _x19, ((_x26 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x20, _x17, ((_x28 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x29 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x18, _x15, ((_x30 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x31 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x16, _x13, ((_x32 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x14, _x11, ((_x34 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _x9, ((_x36 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x38 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x39 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x23, (0i64 : stdgo.GoUInt64));
            _x42 = __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, _x25, ((_x42 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x43 = __tmp__._0;
            _x44 = __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x6 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x4 : stdgo.GoUInt64)), _x27, ((_x44 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x45 = __tmp__._0;
            _x46 = __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x29, ((_x46 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x47 = __tmp__._0;
            _x48 = __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x31, ((_x48 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x33, ((_x50 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x35, ((_x52 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x37, ((_x54 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x39, ((_x56 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(2 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x60 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x45, _x59, (0i64 : stdgo.GoUInt64));
            _x61 = __tmp__._0;
            _x62 = __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x47, _x60, ((_x62 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x49, (0i64 : stdgo.GoUInt64), ((_x64 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x51, (0i64 : stdgo.GoUInt64), ((_x66 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x53, (0i64 : stdgo.GoUInt64), ((_x68 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x55, (0i64 : stdgo.GoUInt64), ((_x70 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, (0i64 : stdgo.GoUInt64), ((_x72 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (511i64 : stdgo.GoUInt64));
            _x76 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x78 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x80 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x82 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x84 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x86 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x88 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x90 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x92 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x92, _x89, (0i64 : stdgo.GoUInt64));
            _x93 = __tmp__._0;
            _x94 = __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x90, _x87, ((_x94 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x95 = __tmp__._0;
            _x96 = __tmp__._1;
        };
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x88, _x85, ((_x96 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x97 = __tmp__._0;
            _x98 = __tmp__._1;
        };
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x86, _x83, ((_x98 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x99 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, _x81, ((_x100 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x101 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, _x79, ((_x102 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x103 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x80, _x77, ((_x104 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x78, _x75, ((_x106 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x43, _x91, (0i64 : stdgo.GoUInt64));
            _x110 = __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x61, _x93, ((_x110 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x63, _x95, ((_x112 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x113 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x65, _x97, ((_x114 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x67, _x99, ((_x116 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x117 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x69, _x101, ((_x118 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x119 = __tmp__._0;
            _x120 = __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x71, _x103, ((_x120 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x121 = __tmp__._0;
            _x122 = __tmp__._1;
        };
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x105, ((_x122 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x123 = __tmp__._0;
            _x124 = __tmp__._1;
        };
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x74 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x58 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x40 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x8 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x107, ((_x124 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(3 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x128 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x127, (0i64 : stdgo.GoUInt64));
            _x129 = __tmp__._0;
            _x130 = __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x128, ((_x130 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x131 = __tmp__._0;
            _x132 = __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x117, (0i64 : stdgo.GoUInt64), ((_x132 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x133 = __tmp__._0;
            _x134 = __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x119, (0i64 : stdgo.GoUInt64), ((_x134 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x121, (0i64 : stdgo.GoUInt64), ((_x136 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x123, (0i64 : stdgo.GoUInt64), ((_x138 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x125, (0i64 : stdgo.GoUInt64), ((_x140 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (511i64 : stdgo.GoUInt64));
            _x144 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x146 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x148 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x150 = __tmp__._0;
            _x149 = __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x152 = __tmp__._0;
            _x151 = __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x154 = __tmp__._0;
            _x153 = __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x156 = __tmp__._0;
            _x155 = __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x160, _x157, (0i64 : stdgo.GoUInt64));
            _x161 = __tmp__._0;
            _x162 = __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x158, _x155, ((_x162 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x163 = __tmp__._0;
            _x164 = __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x156, _x153, ((_x164 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x165 = __tmp__._0;
            _x166 = __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x154, _x151, ((_x166 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x167 = __tmp__._0;
            _x168 = __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x152, _x149, ((_x168 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x150, _x147, ((_x170 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x148, _x145, ((_x172 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x146, _x143, ((_x174 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x159, (0i64 : stdgo.GoUInt64));
            _x178 = __tmp__._1;
        };
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x129, _x161, ((_x178 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x131, _x163, ((_x180 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x133, _x165, ((_x182 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x135, _x167, ((_x184 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x137, _x169, ((_x186 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x139, _x171, ((_x188 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x189 = __tmp__._0;
            _x190 = __tmp__._1;
        };
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x141, _x173, ((_x190 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x191 = __tmp__._0;
            _x192 = __tmp__._1;
        };
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x142 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x126 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x108 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x76 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x175, ((_x192 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x193 = __tmp__._0;
            _x194 = __tmp__._1;
        };
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(4 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x196 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x181, _x195, (0i64 : stdgo.GoUInt64));
            _x197 = __tmp__._0;
            _x198 = __tmp__._1;
        };
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x183, _x196, ((_x198 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x199 = __tmp__._0;
            _x200 = __tmp__._1;
        };
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x185, (0i64 : stdgo.GoUInt64), ((_x200 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x201 = __tmp__._0;
            _x202 = __tmp__._1;
        };
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x187, (0i64 : stdgo.GoUInt64), ((_x202 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x203 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x189, (0i64 : stdgo.GoUInt64), ((_x204 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x205 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x191, (0i64 : stdgo.GoUInt64), ((_x206 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x207 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x193, (0i64 : stdgo.GoUInt64), ((_x208 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x209 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (511i64 : stdgo.GoUInt64));
            _x212 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x214 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x216 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x218 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x220 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x222 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x228, _x225, (0i64 : stdgo.GoUInt64));
            _x229 = __tmp__._0;
            _x230 = __tmp__._1;
        };
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x226, _x223, ((_x230 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x231 = __tmp__._0;
            _x232 = __tmp__._1;
        };
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x224, _x221, ((_x232 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x233 = __tmp__._0;
            _x234 = __tmp__._1;
        };
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x222, _x219, ((_x234 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x220, _x217, ((_x236 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x240:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x218, _x215, ((_x238 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x216, _x213, ((_x240 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x214, _x211, ((_x242 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x179, _x227, (0i64 : stdgo.GoUInt64));
            _x246 = __tmp__._1;
        };
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x197, _x229, ((_x246 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x247 = __tmp__._0;
            _x248 = __tmp__._1;
        };
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x199, _x231, ((_x248 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x249 = __tmp__._0;
            _x250 = __tmp__._1;
        };
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x201, _x233, ((_x250 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x251 = __tmp__._0;
            _x252 = __tmp__._1;
        };
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x203, _x235, ((_x252 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x253 = __tmp__._0;
            _x254 = __tmp__._1;
        };
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x205, _x237, ((_x254 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x255 = __tmp__._0;
            _x256 = __tmp__._1;
        };
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x207, _x239, ((_x256 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x257 = __tmp__._0;
            _x258 = __tmp__._1;
        };
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x241, ((_x258 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x259 = __tmp__._0;
            _x260 = __tmp__._1;
        };
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x210 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x194 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x176 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x144 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x243, ((_x260 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x261 = __tmp__._0;
            _x262 = __tmp__._1;
        };
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(5 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x264 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x249, _x263, (0i64 : stdgo.GoUInt64));
            _x265 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x251, _x264, ((_x266 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x267 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x253, (0i64 : stdgo.GoUInt64), ((_x268 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x269 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x255, (0i64 : stdgo.GoUInt64), ((_x270 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x271 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x257, (0i64 : stdgo.GoUInt64), ((_x272 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x273 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x259, (0i64 : stdgo.GoUInt64), ((_x274 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x275 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x261, (0i64 : stdgo.GoUInt64), ((_x276 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x277 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (511i64 : stdgo.GoUInt64));
            _x280 = __tmp__._0;
            _x279 = __tmp__._1;
        };
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x282 = __tmp__._0;
            _x281 = __tmp__._1;
        };
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x284 = __tmp__._0;
            _x283 = __tmp__._1;
        };
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x286 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x288 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x290 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x292 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x294 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x296 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x296, _x293, (0i64 : stdgo.GoUInt64));
            _x297 = __tmp__._0;
            _x298 = __tmp__._1;
        };
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x294, _x291, ((_x298 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x299 = __tmp__._0;
            _x300 = __tmp__._1;
        };
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x292, _x289, ((_x300 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x301 = __tmp__._0;
            _x302 = __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x290, _x287, ((_x302 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x288, _x285, ((_x304 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x286, _x283, ((_x306 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x284, _x281, ((_x308 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x282, _x279, ((_x310 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x311 = __tmp__._0;
            _x312 = __tmp__._1;
        };
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x247, _x295, (0i64 : stdgo.GoUInt64));
            _x314 = __tmp__._1;
        };
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x265, _x297, ((_x314 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x267, _x299, ((_x316 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x269, _x301, ((_x318 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x271, _x303, ((_x320 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x321 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x273, _x305, ((_x322 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x323 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x275, _x307, ((_x324 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x325 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x309, ((_x326 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x327 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x278 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x262 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x244 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x212 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x311, ((_x328 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x329 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(6 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x332 = __tmp__._0;
            _x331 = __tmp__._1;
        };
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x317, _x331, (0i64 : stdgo.GoUInt64));
            _x333 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x319, _x332, ((_x334 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x335 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x321, (0i64 : stdgo.GoUInt64), ((_x336 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x337 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x323, (0i64 : stdgo.GoUInt64), ((_x338 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x339 = __tmp__._0;
            _x340 = __tmp__._1;
        };
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x325, (0i64 : stdgo.GoUInt64), ((_x340 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x341 = __tmp__._0;
            _x342 = __tmp__._1;
        };
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x327, (0i64 : stdgo.GoUInt64), ((_x342 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x343 = __tmp__._0;
            _x344 = __tmp__._1;
        };
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x329, (0i64 : stdgo.GoUInt64), ((_x344 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x345 = __tmp__._0;
            _x346 = __tmp__._1;
        };
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (511i64 : stdgo.GoUInt64));
            _x348 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x350 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x352 = __tmp__._0;
            _x351 = __tmp__._1;
        };
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x354 = __tmp__._0;
            _x353 = __tmp__._1;
        };
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x356 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x358 = __tmp__._0;
            _x357 = __tmp__._1;
        };
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x360 = __tmp__._0;
            _x359 = __tmp__._1;
        };
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x362 = __tmp__._0;
            _x361 = __tmp__._1;
        };
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x364 = __tmp__._0;
            _x363 = __tmp__._1;
        };
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x364, _x361, (0i64 : stdgo.GoUInt64));
            _x365 = __tmp__._0;
            _x366 = __tmp__._1;
        };
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x362, _x359, ((_x366 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x360, _x357, ((_x368 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x358, _x355, ((_x370 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x356, _x353, ((_x372 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x376:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x354, _x351, ((_x374 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x377:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x352, _x349, ((_x376 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x377 = __tmp__._0;
            _x378 = __tmp__._1;
        };
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x350, _x347, ((_x378 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x379 = __tmp__._0;
            _x380 = __tmp__._1;
        };
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x315, _x363, (0i64 : stdgo.GoUInt64));
            _x382 = __tmp__._1;
        };
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x333, _x365, ((_x382 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x383 = __tmp__._0;
            _x384 = __tmp__._1;
        };
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x335, _x367, ((_x384 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x385 = __tmp__._0;
            _x386 = __tmp__._1;
        };
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x337, _x369, ((_x386 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x387 = __tmp__._0;
            _x388 = __tmp__._1;
        };
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x339, _x371, ((_x388 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x389 = __tmp__._0;
            _x390 = __tmp__._1;
        };
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x341, _x373, ((_x390 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x391 = __tmp__._0;
            _x392 = __tmp__._1;
        };
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x343, _x375, ((_x392 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x393 = __tmp__._0;
            _x394 = __tmp__._1;
        };
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x345, _x377, ((_x394 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x346 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x330 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x312 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x280 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x379, ((_x396 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(7 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x400 = __tmp__._0;
            _x399 = __tmp__._1;
        };
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x385, _x399, (0i64 : stdgo.GoUInt64));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x403:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x387, _x400, ((_x402 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x403 = __tmp__._0;
            _x404 = __tmp__._1;
        };
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x389, (0i64 : stdgo.GoUInt64), ((_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x405 = __tmp__._0;
            _x406 = __tmp__._1;
        };
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x391, (0i64 : stdgo.GoUInt64), ((_x406 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x407 = __tmp__._0;
            _x408 = __tmp__._1;
        };
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x393, (0i64 : stdgo.GoUInt64), ((_x408 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x409 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x411:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x412:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x395, (0i64 : stdgo.GoUInt64), ((_x410 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x411 = __tmp__._0;
            _x412 = __tmp__._1;
        };
        var _x413:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x397, (0i64 : stdgo.GoUInt64), ((_x412 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x413 = __tmp__._0;
            _x414 = __tmp__._1;
        };
        var _x415:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (511i64 : stdgo.GoUInt64));
            _x416 = __tmp__._0;
            _x415 = __tmp__._1;
        };
        var _x417:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x418:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x418 = __tmp__._0;
            _x417 = __tmp__._1;
        };
        var _x419:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x420:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x420 = __tmp__._0;
            _x419 = __tmp__._1;
        };
        var _x421:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x422:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x422 = __tmp__._0;
            _x421 = __tmp__._1;
        };
        var _x423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x424:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x424 = __tmp__._0;
            _x423 = __tmp__._1;
        };
        var _x425:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x426:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x426 = __tmp__._0;
            _x425 = __tmp__._1;
        };
        var _x427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x428 = __tmp__._0;
            _x427 = __tmp__._1;
        };
        var _x429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x430 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x431:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x432:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x432 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x434:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x432, _x429, (0i64 : stdgo.GoUInt64));
            _x433 = __tmp__._0;
            _x434 = __tmp__._1;
        };
        var _x435:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x430, _x427, ((_x434 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x435 = __tmp__._0;
            _x436 = __tmp__._1;
        };
        var _x437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x428, _x425, ((_x436 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x437 = __tmp__._0;
            _x438 = __tmp__._1;
        };
        var _x439:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x440:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x426, _x423, ((_x438 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x439 = __tmp__._0;
            _x440 = __tmp__._1;
        };
        var _x441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x442:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x424, _x421, ((_x440 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x441 = __tmp__._0;
            _x442 = __tmp__._1;
        };
        var _x443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x444:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x422, _x419, ((_x442 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x443 = __tmp__._0;
            _x444 = __tmp__._1;
        };
        var _x445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x446:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x420, _x417, ((_x444 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x445 = __tmp__._0;
            _x446 = __tmp__._1;
        };
        var _x447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x418, _x415, ((_x446 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x447 = __tmp__._0;
            _x448 = __tmp__._1;
        };
        var _x450:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x383, _x431, (0i64 : stdgo.GoUInt64));
            _x450 = __tmp__._1;
        };
        var _x451:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x452:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x401, _x433, ((_x450 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x454:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x403, _x435, ((_x452 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x453 = __tmp__._0;
            _x454 = __tmp__._1;
        };
        var _x455:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x405, _x437, ((_x454 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x455 = __tmp__._0;
            _x456 = __tmp__._1;
        };
        var _x457:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x458:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x407, _x439, ((_x456 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x457 = __tmp__._0;
            _x458 = __tmp__._1;
        };
        var _x459:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x409, _x441, ((_x458 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x459 = __tmp__._0;
            _x460 = __tmp__._1;
        };
        var _x461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x462:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x411, _x443, ((_x460 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x461 = __tmp__._0;
            _x462 = __tmp__._1;
        };
        var _x463:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x464:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x413, _x445, ((_x462 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x463 = __tmp__._0;
            _x464 = __tmp__._1;
        };
        var _x465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x466:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x414 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x398 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x380 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x348 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x447, ((_x464 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x465 = __tmp__._0;
            _x466 = __tmp__._1;
        };
        var _x467:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x468:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(8 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x468 = __tmp__._0;
            _x467 = __tmp__._1;
        };
        var _x469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x470:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x453, _x467, (0i64 : stdgo.GoUInt64));
            _x469 = __tmp__._0;
            _x470 = __tmp__._1;
        };
        var _x471:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x472:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x455, _x468, ((_x470 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x471 = __tmp__._0;
            _x472 = __tmp__._1;
        };
        var _x473:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x457, (0i64 : stdgo.GoUInt64), ((_x472 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x473 = __tmp__._0;
            _x474 = __tmp__._1;
        };
        var _x475:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x476:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x459, (0i64 : stdgo.GoUInt64), ((_x474 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x475 = __tmp__._0;
            _x476 = __tmp__._1;
        };
        var _x477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x478:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x461, (0i64 : stdgo.GoUInt64), ((_x476 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x477 = __tmp__._0;
            _x478 = __tmp__._1;
        };
        var _x479:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x480:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x463, (0i64 : stdgo.GoUInt64), ((_x478 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x479 = __tmp__._0;
            _x480 = __tmp__._1;
        };
        var _x481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x482:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x465, (0i64 : stdgo.GoUInt64), ((_x480 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x481 = __tmp__._0;
            _x482 = __tmp__._1;
        };
        var _x483:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (511i64 : stdgo.GoUInt64));
            _x484 = __tmp__._0;
            _x483 = __tmp__._1;
        };
        var _x485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x486:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x486 = __tmp__._0;
            _x485 = __tmp__._1;
        };
        var _x487:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x488:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x488 = __tmp__._0;
            _x487 = __tmp__._1;
        };
        var _x489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x490:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x490 = __tmp__._0;
            _x489 = __tmp__._1;
        };
        var _x491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x492:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x492 = __tmp__._0;
            _x491 = __tmp__._1;
        };
        var _x493:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x494:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x494 = __tmp__._0;
            _x493 = __tmp__._1;
        };
        var _x495:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x496:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x496 = __tmp__._0;
            _x495 = __tmp__._1;
        };
        var _x497:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x498:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x498 = __tmp__._0;
            _x497 = __tmp__._1;
        };
        var _x499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x500 = __tmp__._0;
            _x499 = __tmp__._1;
        };
        var _x501:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x502:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x500, _x497, (0i64 : stdgo.GoUInt64));
            _x501 = __tmp__._0;
            _x502 = __tmp__._1;
        };
        var _x503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x498, _x495, ((_x502 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x503 = __tmp__._0;
            _x504 = __tmp__._1;
        };
        var _x505:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x496, _x493, ((_x504 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x505 = __tmp__._0;
            _x506 = __tmp__._1;
        };
        var _x507:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x494, _x491, ((_x506 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x507 = __tmp__._0;
            _x508 = __tmp__._1;
        };
        var _x509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x510:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x492, _x489, ((_x508 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x509 = __tmp__._0;
            _x510 = __tmp__._1;
        };
        var _x511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x512:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x490, _x487, ((_x510 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x511 = __tmp__._0;
            _x512 = __tmp__._1;
        };
        var _x513:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x514:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x488, _x485, ((_x512 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x513 = __tmp__._0;
            _x514 = __tmp__._1;
        };
        var _x515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x516:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x486, _x483, ((_x514 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x515 = __tmp__._0;
            _x516 = __tmp__._1;
        };
        var _x518:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x451, _x499, (0i64 : stdgo.GoUInt64));
            _x518 = __tmp__._1;
        };
        var _x519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x520:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x469, _x501, ((_x518 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x519 = __tmp__._0;
            _x520 = __tmp__._1;
        };
        var _x521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x522:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x471, _x503, ((_x520 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x521 = __tmp__._0;
            _x522 = __tmp__._1;
        };
        var _x523:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x524:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x473, _x505, ((_x522 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x523 = __tmp__._0;
            _x524 = __tmp__._1;
        };
        var _x525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x526:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x475, _x507, ((_x524 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x525 = __tmp__._0;
            _x526 = __tmp__._1;
        };
        var _x527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x528:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x477, _x509, ((_x526 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x527 = __tmp__._0;
            _x528 = __tmp__._1;
        };
        var _x529:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x530:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x479, _x511, ((_x528 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x529 = __tmp__._0;
            _x530 = __tmp__._1;
        };
        var _x531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x532:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x481, _x513, ((_x530 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x531 = __tmp__._0;
            _x532 = __tmp__._1;
        };
        var _x533:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x534:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x482 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x466 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x448 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x416 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x515, ((_x532 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x533 = __tmp__._0;
            _x534 = __tmp__._1;
        };
        var _x535 = ((((_x534 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x516 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x484 : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x537:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x519, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x536 = __tmp__._0;
            _x537 = __tmp__._1;
        };
        var _x538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x521, (-1i64 : stdgo.GoUInt64), ((_x537 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x538 = __tmp__._0;
            _x539 = __tmp__._1;
        };
        var _x540:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x541:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x523, (-1i64 : stdgo.GoUInt64), ((_x539 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x540 = __tmp__._0;
            _x541 = __tmp__._1;
        };
        var _x542:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x543:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x525, (-1i64 : stdgo.GoUInt64), ((_x541 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x542 = __tmp__._0;
            _x543 = __tmp__._1;
        };
        var _x544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x545:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x527, (-1i64 : stdgo.GoUInt64), ((_x543 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x544 = __tmp__._0;
            _x545 = __tmp__._1;
        };
        var _x546:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x547:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x529, (-1i64 : stdgo.GoUInt64), ((_x545 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x546 = __tmp__._0;
            _x547 = __tmp__._1;
        };
        var _x548:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x549:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x531, (-1i64 : stdgo.GoUInt64), ((_x547 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x548 = __tmp__._0;
            _x549 = __tmp__._1;
        };
        var _x550:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x551:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x533, (-1i64 : stdgo.GoUInt64), ((_x549 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x550 = __tmp__._0;
            _x551 = __tmp__._1;
        };
        var _x552:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x553:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x535, (511i64 : stdgo.GoUInt64), ((_x551 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x552 = __tmp__._0;
            _x553 = __tmp__._1;
        };
        var _x555:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x553 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x555 = __tmp__._1;
        };
        var _x556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x556), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x536, _x519);
        var _x557:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x557), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x538, _x521);
        var _x558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x558), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x540, _x523);
        var _x559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x559), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x542, _x525);
        var _x560:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x560), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x544, _x527);
        var _x561:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x561), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x546, _x529);
        var _x562:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x562), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x548, _x531);
        var _x563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x563), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x550, _x533);
        var _x564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x564), (_x555 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x552, _x535);
        _out1[(0 : stdgo.GoInt)] = _x556;
        _out1[(1 : stdgo.GoInt)] = _x557;
        _out1[(2 : stdgo.GoInt)] = _x558;
        _out1[(3 : stdgo.GoInt)] = _x559;
        _out1[(4 : stdgo.GoInt)] = _x560;
        _out1[(5 : stdgo.GoInt)] = _x561;
        _out1[(6 : stdgo.GoInt)] = _x562;
        _out1[(7 : stdgo.GoInt)] = _x563;
        _out1[(8 : stdgo.GoInt)] = _x564;
    }
