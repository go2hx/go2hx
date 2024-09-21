package _internal.crypto.internal.nistec.fiat;
function _p521FromMontgomery(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521NonMontgomeryDomainFieldElement.T_p521NonMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (511i64 : stdgo.GoUInt64));
            _x3 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x9 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x17 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x19 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x16, (0i64 : stdgo.GoUInt64));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x14, ((_x21 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x12, ((_x23 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x24 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x10, ((_x25 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x26 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x8, ((_x27 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x9, _x6, ((_x29 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, _x4, ((_x31 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, _x2, ((_x33 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x18, (0i64 : stdgo.GoUInt64));
            _x37 = __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x20, ((_x37 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x22, ((_x39 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x24, ((_x41 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x26, ((_x43 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x28, ((_x45 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x30, ((_x47 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x32, ((_x49 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x34, ((_x51 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x52 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, _arg1[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x54 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, (0i64 : stdgo.GoUInt64), ((_x55 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x56 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, (0i64 : stdgo.GoUInt64), ((_x57 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x58 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, (0i64 : stdgo.GoUInt64), ((_x59 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x60 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x46, (0i64 : stdgo.GoUInt64), ((_x61 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, (0i64 : stdgo.GoUInt64), ((_x63 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x64 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, (0i64 : stdgo.GoUInt64), ((_x65 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x66 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x52, (0i64 : stdgo.GoUInt64), ((_x67 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x68 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (511i64 : stdgo.GoUInt64));
            _x71 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x73 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x75 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x77 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x79 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x81 = __tmp__._0;
            _x80 = __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x83 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x85 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x54, (-1i64 : stdgo.GoUInt64));
            _x87 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x87, _x84, (0i64 : stdgo.GoUInt64));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x85, _x82, ((_x89 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x83, _x80, ((_x91 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x81, _x78, ((_x93 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x79, _x76, ((_x95 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x77, _x74, ((_x97 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x75, _x72, ((_x99 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x70, ((_x101 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x102 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _x86, (0i64 : stdgo.GoUInt64));
            _x105 = __tmp__._1;
        };
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x88, ((_x105 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x106 = __tmp__._0;
            _x107 = __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, _x90, ((_x107 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x108 = __tmp__._0;
            _x109 = __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x92, ((_x109 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x110 = __tmp__._0;
            _x111 = __tmp__._1;
        };
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x94, ((_x111 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x112 = __tmp__._0;
            _x113 = __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x96, ((_x113 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x114 = __tmp__._0;
            _x115 = __tmp__._1;
        };
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x66, _x98, ((_x115 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x116 = __tmp__._0;
            _x117 = __tmp__._1;
        };
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x68, _x100, ((_x117 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x69 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x53 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x35 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x3 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x102, ((_x119 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x106, _arg1[(2 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x108, (0i64 : stdgo.GoUInt64), ((_x123 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x110, (0i64 : stdgo.GoUInt64), ((_x125 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x112, (0i64 : stdgo.GoUInt64), ((_x127 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x114, (0i64 : stdgo.GoUInt64), ((_x129 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x116, (0i64 : stdgo.GoUInt64), ((_x131 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x118, (0i64 : stdgo.GoUInt64), ((_x133 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x134 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x120, (0i64 : stdgo.GoUInt64), ((_x135 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x136 = __tmp__._0;
            _x137 = __tmp__._1;
        };
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (511i64 : stdgo.GoUInt64));
            _x139 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x141 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x143 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x145 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x147 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x149 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x151 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x153 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x122, (-1i64 : stdgo.GoUInt64));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x155, _x152, (0i64 : stdgo.GoUInt64));
            _x156 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x153, _x150, ((_x157 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x158 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x151, _x148, ((_x159 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x149, _x146, ((_x161 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x162 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x147, _x144, ((_x163 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x164 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x145, _x142, ((_x165 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x143, _x140, ((_x167 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x168 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x141, _x138, ((_x169 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x170 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x122, _x154, (0i64 : stdgo.GoUInt64));
            _x173 = __tmp__._1;
        };
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x124, _x156, ((_x173 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x126, _x158, ((_x175 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x176 = __tmp__._0;
            _x177 = __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _x160, ((_x177 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x178 = __tmp__._0;
            _x179 = __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, _x162, ((_x179 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x180 = __tmp__._0;
            _x181 = __tmp__._1;
        };
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, _x164, ((_x181 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x182 = __tmp__._0;
            _x183 = __tmp__._1;
        };
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, _x166, ((_x183 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x184 = __tmp__._0;
            _x185 = __tmp__._1;
        };
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x136, _x168, ((_x185 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x186 = __tmp__._0;
            _x187 = __tmp__._1;
        };
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x137 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x121 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x103 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x71 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x170, ((_x187 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x188 = __tmp__._0;
            _x189 = __tmp__._1;
        };
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x174, _arg1[(3 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x190 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x176, (0i64 : stdgo.GoUInt64), ((_x191 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x178, (0i64 : stdgo.GoUInt64), ((_x193 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x180, (0i64 : stdgo.GoUInt64), ((_x195 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x182, (0i64 : stdgo.GoUInt64), ((_x197 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x184, (0i64 : stdgo.GoUInt64), ((_x199 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x186, (0i64 : stdgo.GoUInt64), ((_x201 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x202 = __tmp__._0;
            _x203 = __tmp__._1;
        };
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x188, (0i64 : stdgo.GoUInt64), ((_x203 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x204 = __tmp__._0;
            _x205 = __tmp__._1;
        };
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (511i64 : stdgo.GoUInt64));
            _x207 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x209 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x211 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x213 = __tmp__._0;
            _x212 = __tmp__._1;
        };
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x215 = __tmp__._0;
            _x214 = __tmp__._1;
        };
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x217 = __tmp__._0;
            _x216 = __tmp__._1;
        };
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x219 = __tmp__._0;
            _x218 = __tmp__._1;
        };
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x221 = __tmp__._0;
            _x220 = __tmp__._1;
        };
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (-1i64 : stdgo.GoUInt64));
            _x223 = __tmp__._0;
            _x222 = __tmp__._1;
        };
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x223, _x220, (0i64 : stdgo.GoUInt64));
            _x224 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x221, _x218, ((_x225 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x226 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x219, _x216, ((_x227 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x228 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x217, _x214, ((_x229 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x230 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x215, _x212, ((_x231 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x232 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x213, _x210, ((_x233 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x234 = __tmp__._0;
            _x235 = __tmp__._1;
        };
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x211, _x208, ((_x235 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x236 = __tmp__._0;
            _x237 = __tmp__._1;
        };
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x206, ((_x237 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x238 = __tmp__._0;
            _x239 = __tmp__._1;
        };
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x190, _x222, (0i64 : stdgo.GoUInt64));
            _x241 = __tmp__._1;
        };
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x192, _x224, ((_x241 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x242 = __tmp__._0;
            _x243 = __tmp__._1;
        };
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x245:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x226, ((_x243 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x244 = __tmp__._0;
            _x245 = __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x228, ((_x245 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x230, ((_x247 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x232, ((_x249 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x202, _x234, ((_x251 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x204, _x236, ((_x253 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x205 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x189 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x171 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x139 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x238, ((_x255 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x242, _arg1[(4 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x244, (0i64 : stdgo.GoUInt64), ((_x259 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x260 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x246, (0i64 : stdgo.GoUInt64), ((_x261 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x262 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x248, (0i64 : stdgo.GoUInt64), ((_x263 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x264 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x250, (0i64 : stdgo.GoUInt64), ((_x265 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x266 = __tmp__._0;
            _x267 = __tmp__._1;
        };
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x252, (0i64 : stdgo.GoUInt64), ((_x267 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x268 = __tmp__._0;
            _x269 = __tmp__._1;
        };
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x254, (0i64 : stdgo.GoUInt64), ((_x269 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x270 = __tmp__._0;
            _x271 = __tmp__._1;
        };
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x256, (0i64 : stdgo.GoUInt64), ((_x271 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x272 = __tmp__._0;
            _x273 = __tmp__._1;
        };
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (511i64 : stdgo.GoUInt64));
            _x275 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x277 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x279 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x281 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x283 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x285 = __tmp__._0;
            _x284 = __tmp__._1;
        };
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x287 = __tmp__._0;
            _x286 = __tmp__._1;
        };
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x289 = __tmp__._0;
            _x288 = __tmp__._1;
        };
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x258, (-1i64 : stdgo.GoUInt64));
            _x291 = __tmp__._0;
            _x290 = __tmp__._1;
        };
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x291, _x288, (0i64 : stdgo.GoUInt64));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x289, _x286, ((_x293 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x287, _x284, ((_x295 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x285, _x282, ((_x297 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x283, _x280, ((_x299 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x300 = __tmp__._0;
            _x301 = __tmp__._1;
        };
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x281, _x278, ((_x301 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x302 = __tmp__._0;
            _x303 = __tmp__._1;
        };
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x279, _x276, ((_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x304 = __tmp__._0;
            _x305 = __tmp__._1;
        };
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x274, ((_x305 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x306 = __tmp__._0;
            _x307 = __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x258, _x290, (0i64 : stdgo.GoUInt64));
            _x309 = __tmp__._1;
        };
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x260, _x292, ((_x309 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x310 = __tmp__._0;
            _x311 = __tmp__._1;
        };
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x313:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x262, _x294, ((_x311 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x312 = __tmp__._0;
            _x313 = __tmp__._1;
        };
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x264, _x296, ((_x313 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x314 = __tmp__._0;
            _x315 = __tmp__._1;
        };
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x266, _x298, ((_x315 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x316 = __tmp__._0;
            _x317 = __tmp__._1;
        };
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x268, _x300, ((_x317 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x318 = __tmp__._0;
            _x319 = __tmp__._1;
        };
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x270, _x302, ((_x319 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x320 = __tmp__._0;
            _x321 = __tmp__._1;
        };
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x272, _x304, ((_x321 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x322 = __tmp__._0;
            _x323 = __tmp__._1;
        };
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x273 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x257 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x239 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x207 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x306, ((_x323 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x324 = __tmp__._0;
            _x325 = __tmp__._1;
        };
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x310, _arg1[(5 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x326 = __tmp__._0;
            _x327 = __tmp__._1;
        };
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x312, (0i64 : stdgo.GoUInt64), ((_x327 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x328 = __tmp__._0;
            _x329 = __tmp__._1;
        };
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x314, (0i64 : stdgo.GoUInt64), ((_x329 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x330 = __tmp__._0;
            _x331 = __tmp__._1;
        };
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x316, (0i64 : stdgo.GoUInt64), ((_x331 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x332 = __tmp__._0;
            _x333 = __tmp__._1;
        };
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x318, (0i64 : stdgo.GoUInt64), ((_x333 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x334 = __tmp__._0;
            _x335 = __tmp__._1;
        };
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x320, (0i64 : stdgo.GoUInt64), ((_x335 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x336 = __tmp__._0;
            _x337 = __tmp__._1;
        };
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x322, (0i64 : stdgo.GoUInt64), ((_x337 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x338 = __tmp__._0;
            _x339 = __tmp__._1;
        };
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x324, (0i64 : stdgo.GoUInt64), ((_x339 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x340 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (511i64 : stdgo.GoUInt64));
            _x343 = __tmp__._0;
            _x342 = __tmp__._1;
        };
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x345 = __tmp__._0;
            _x344 = __tmp__._1;
        };
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x347 = __tmp__._0;
            _x346 = __tmp__._1;
        };
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x349 = __tmp__._0;
            _x348 = __tmp__._1;
        };
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x351 = __tmp__._0;
            _x350 = __tmp__._1;
        };
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x353 = __tmp__._0;
            _x352 = __tmp__._1;
        };
        var _x354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x355 = __tmp__._0;
            _x354 = __tmp__._1;
        };
        var _x356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x357 = __tmp__._0;
            _x356 = __tmp__._1;
        };
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x326, (-1i64 : stdgo.GoUInt64));
            _x359 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x359, _x356, (0i64 : stdgo.GoUInt64));
            _x360 = __tmp__._0;
            _x361 = __tmp__._1;
        };
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x357, _x354, ((_x361 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x362 = __tmp__._0;
            _x363 = __tmp__._1;
        };
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x355, _x352, ((_x363 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x364 = __tmp__._0;
            _x365 = __tmp__._1;
        };
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x353, _x350, ((_x365 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x366 = __tmp__._0;
            _x367 = __tmp__._1;
        };
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x351, _x348, ((_x367 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x368 = __tmp__._0;
            _x369 = __tmp__._1;
        };
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x349, _x346, ((_x369 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x370 = __tmp__._0;
            _x371 = __tmp__._1;
        };
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x347, _x344, ((_x371 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x372 = __tmp__._0;
            _x373 = __tmp__._1;
        };
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x345, _x342, ((_x373 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x374 = __tmp__._0;
            _x375 = __tmp__._1;
        };
        var _x377:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x326, _x358, (0i64 : stdgo.GoUInt64));
            _x377 = __tmp__._1;
        };
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x328, _x360, ((_x377 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x378 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x330, _x362, ((_x379 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x380 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x332, _x364, ((_x381 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x382 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x334, _x366, ((_x383 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x384 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x336, _x368, ((_x385 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x386 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x338, _x370, ((_x387 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x388 = __tmp__._0;
            _x389 = __tmp__._1;
        };
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x340, _x372, ((_x389 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x390 = __tmp__._0;
            _x391 = __tmp__._1;
        };
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x341 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x325 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x307 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x275 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x374, ((_x391 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x392 = __tmp__._0;
            _x393 = __tmp__._1;
        };
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x378, _arg1[(6 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x394 = __tmp__._0;
            _x395 = __tmp__._1;
        };
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x380, (0i64 : stdgo.GoUInt64), ((_x395 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x396 = __tmp__._0;
            _x397 = __tmp__._1;
        };
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x382, (0i64 : stdgo.GoUInt64), ((_x397 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x398 = __tmp__._0;
            _x399 = __tmp__._1;
        };
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x384, (0i64 : stdgo.GoUInt64), ((_x399 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x400 = __tmp__._0;
            _x401 = __tmp__._1;
        };
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x403:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x386, (0i64 : stdgo.GoUInt64), ((_x401 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x402 = __tmp__._0;
            _x403 = __tmp__._1;
        };
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x388, (0i64 : stdgo.GoUInt64), ((_x403 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x404 = __tmp__._0;
            _x405 = __tmp__._1;
        };
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x390, (0i64 : stdgo.GoUInt64), ((_x405 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x406 = __tmp__._0;
            _x407 = __tmp__._1;
        };
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x392, (0i64 : stdgo.GoUInt64), ((_x407 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x408 = __tmp__._0;
            _x409 = __tmp__._1;
        };
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x411:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (511i64 : stdgo.GoUInt64));
            _x411 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x412:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x413:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x413 = __tmp__._0;
            _x412 = __tmp__._1;
        };
        var _x414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x415:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x415 = __tmp__._0;
            _x414 = __tmp__._1;
        };
        var _x416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x417:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x417 = __tmp__._0;
            _x416 = __tmp__._1;
        };
        var _x418:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x419:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x419 = __tmp__._0;
            _x418 = __tmp__._1;
        };
        var _x420:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x421:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x421 = __tmp__._0;
            _x420 = __tmp__._1;
        };
        var _x422:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x423 = __tmp__._0;
            _x422 = __tmp__._1;
        };
        var _x424:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x425:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x425 = __tmp__._0;
            _x424 = __tmp__._1;
        };
        var _x426:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x394, (-1i64 : stdgo.GoUInt64));
            _x427 = __tmp__._0;
            _x426 = __tmp__._1;
        };
        var _x428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x427, _x424, (0i64 : stdgo.GoUInt64));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x431:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x425, _x422, ((_x429 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x423, _x420, ((_x431 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x432 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x434:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x435:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x421, _x418, ((_x433 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x434 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x419, _x416, ((_x435 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x436 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x439:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x417, _x414, ((_x437 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x438 = __tmp__._0;
            _x439 = __tmp__._1;
        };
        var _x440:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x415, _x412, ((_x439 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x440 = __tmp__._0;
            _x441 = __tmp__._1;
        };
        var _x442:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x413, _x410, ((_x441 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x442 = __tmp__._0;
            _x443 = __tmp__._1;
        };
        var _x445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x394, _x426, (0i64 : stdgo.GoUInt64));
            _x445 = __tmp__._1;
        };
        var _x446:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x396, _x428, ((_x445 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x446 = __tmp__._0;
            _x447 = __tmp__._1;
        };
        var _x448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x449:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x398, _x430, ((_x447 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x448 = __tmp__._0;
            _x449 = __tmp__._1;
        };
        var _x450:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x451:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x400, _x432, ((_x449 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x450 = __tmp__._0;
            _x451 = __tmp__._1;
        };
        var _x452:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x453:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x402, _x434, ((_x451 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x452 = __tmp__._0;
            _x453 = __tmp__._1;
        };
        var _x454:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x455:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x404, _x436, ((_x453 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x454 = __tmp__._0;
            _x455 = __tmp__._1;
        };
        var _x456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x457:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x406, _x438, ((_x455 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x456 = __tmp__._0;
            _x457 = __tmp__._1;
        };
        var _x458:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x459:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x408, _x440, ((_x457 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x458 = __tmp__._0;
            _x459 = __tmp__._1;
        };
        var _x460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x409 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x393 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x375 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x343 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x442, ((_x459 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x460 = __tmp__._0;
            _x461 = __tmp__._1;
        };
        var _x462:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x463:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x446, _arg1[(7 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x462 = __tmp__._0;
            _x463 = __tmp__._1;
        };
        var _x464:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x448, (0i64 : stdgo.GoUInt64), ((_x463 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x464 = __tmp__._0;
            _x465 = __tmp__._1;
        };
        var _x466:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x467:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x450, (0i64 : stdgo.GoUInt64), ((_x465 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x466 = __tmp__._0;
            _x467 = __tmp__._1;
        };
        var _x468:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x452, (0i64 : stdgo.GoUInt64), ((_x467 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x468 = __tmp__._0;
            _x469 = __tmp__._1;
        };
        var _x470:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x471:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x454, (0i64 : stdgo.GoUInt64), ((_x469 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x470 = __tmp__._0;
            _x471 = __tmp__._1;
        };
        var _x472:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x473:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x456, (0i64 : stdgo.GoUInt64), ((_x471 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x472 = __tmp__._0;
            _x473 = __tmp__._1;
        };
        var _x474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x475:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x458, (0i64 : stdgo.GoUInt64), ((_x473 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x474 = __tmp__._0;
            _x475 = __tmp__._1;
        };
        var _x476:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x460, (0i64 : stdgo.GoUInt64), ((_x475 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x476 = __tmp__._0;
            _x477 = __tmp__._1;
        };
        var _x478:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x479:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (511i64 : stdgo.GoUInt64));
            _x479 = __tmp__._0;
            _x478 = __tmp__._1;
        };
        var _x480:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x481 = __tmp__._0;
            _x480 = __tmp__._1;
        };
        var _x482:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x483:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x483 = __tmp__._0;
            _x482 = __tmp__._1;
        };
        var _x484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x485 = __tmp__._0;
            _x484 = __tmp__._1;
        };
        var _x486:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x487:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x487 = __tmp__._0;
            _x486 = __tmp__._1;
        };
        var _x488:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x489 = __tmp__._0;
            _x488 = __tmp__._1;
        };
        var _x490:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x491 = __tmp__._0;
            _x490 = __tmp__._1;
        };
        var _x492:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x493:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x493 = __tmp__._0;
            _x492 = __tmp__._1;
        };
        var _x494:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x495:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x462, (-1i64 : stdgo.GoUInt64));
            _x495 = __tmp__._0;
            _x494 = __tmp__._1;
        };
        var _x496:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x497:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x495, _x492, (0i64 : stdgo.GoUInt64));
            _x496 = __tmp__._0;
            _x497 = __tmp__._1;
        };
        var _x498:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x493, _x490, ((_x497 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x498 = __tmp__._0;
            _x499 = __tmp__._1;
        };
        var _x500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x501:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x491, _x488, ((_x499 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x500 = __tmp__._0;
            _x501 = __tmp__._1;
        };
        var _x502:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x489, _x486, ((_x501 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x502 = __tmp__._0;
            _x503 = __tmp__._1;
        };
        var _x504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x505:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x487, _x484, ((_x503 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x504 = __tmp__._0;
            _x505 = __tmp__._1;
        };
        var _x506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x507:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x485, _x482, ((_x505 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x506 = __tmp__._0;
            _x507 = __tmp__._1;
        };
        var _x508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x483, _x480, ((_x507 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x508 = __tmp__._0;
            _x509 = __tmp__._1;
        };
        var _x510:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x481, _x478, ((_x509 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x510 = __tmp__._0;
            _x511 = __tmp__._1;
        };
        var _x513:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x462, _x494, (0i64 : stdgo.GoUInt64));
            _x513 = __tmp__._1;
        };
        var _x514:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x464, _x496, ((_x513 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x514 = __tmp__._0;
            _x515 = __tmp__._1;
        };
        var _x516:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x517:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x466, _x498, ((_x515 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x516 = __tmp__._0;
            _x517 = __tmp__._1;
        };
        var _x518:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x468, _x500, ((_x517 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x518 = __tmp__._0;
            _x519 = __tmp__._1;
        };
        var _x520:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x470, _x502, ((_x519 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x520 = __tmp__._0;
            _x521 = __tmp__._1;
        };
        var _x522:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x523:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x472, _x504, ((_x521 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x522 = __tmp__._0;
            _x523 = __tmp__._1;
        };
        var _x524:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x474, _x506, ((_x523 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x524 = __tmp__._0;
            _x525 = __tmp__._1;
        };
        var _x526:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x476, _x508, ((_x525 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x526 = __tmp__._0;
            _x527 = __tmp__._1;
        };
        var _x528:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x529:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x477 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x461 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x443 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x411 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x510, ((_x527 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x528 = __tmp__._0;
            _x529 = __tmp__._1;
        };
        var _x530:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x514, _arg1[(8 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x530 = __tmp__._0;
            _x531 = __tmp__._1;
        };
        var _x532:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x533:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x516, (0i64 : stdgo.GoUInt64), ((_x531 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x532 = __tmp__._0;
            _x533 = __tmp__._1;
        };
        var _x534:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x535:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x518, (0i64 : stdgo.GoUInt64), ((_x533 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x534 = __tmp__._0;
            _x535 = __tmp__._1;
        };
        var _x536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x537:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x520, (0i64 : stdgo.GoUInt64), ((_x535 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x536 = __tmp__._0;
            _x537 = __tmp__._1;
        };
        var _x538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x522, (0i64 : stdgo.GoUInt64), ((_x537 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x538 = __tmp__._0;
            _x539 = __tmp__._1;
        };
        var _x540:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x541:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x524, (0i64 : stdgo.GoUInt64), ((_x539 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x540 = __tmp__._0;
            _x541 = __tmp__._1;
        };
        var _x542:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x543:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x526, (0i64 : stdgo.GoUInt64), ((_x541 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x542 = __tmp__._0;
            _x543 = __tmp__._1;
        };
        var _x544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x545:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x528, (0i64 : stdgo.GoUInt64), ((_x543 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x544 = __tmp__._0;
            _x545 = __tmp__._1;
        };
        var _x546:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x547:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (511i64 : stdgo.GoUInt64));
            _x547 = __tmp__._0;
            _x546 = __tmp__._1;
        };
        var _x548:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x549:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x549 = __tmp__._0;
            _x548 = __tmp__._1;
        };
        var _x550:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x551:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x551 = __tmp__._0;
            _x550 = __tmp__._1;
        };
        var _x552:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x553:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x553 = __tmp__._0;
            _x552 = __tmp__._1;
        };
        var _x554:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x555:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x555 = __tmp__._0;
            _x554 = __tmp__._1;
        };
        var _x556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x557:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x557 = __tmp__._0;
            _x556 = __tmp__._1;
        };
        var _x558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x559 = __tmp__._0;
            _x558 = __tmp__._1;
        };
        var _x560:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x561:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x561 = __tmp__._0;
            _x560 = __tmp__._1;
        };
        var _x562:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x530, (-1i64 : stdgo.GoUInt64));
            _x563 = __tmp__._0;
            _x562 = __tmp__._1;
        };
        var _x564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x565:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x563, _x560, (0i64 : stdgo.GoUInt64));
            _x564 = __tmp__._0;
            _x565 = __tmp__._1;
        };
        var _x566:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x567:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x561, _x558, ((_x565 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x566 = __tmp__._0;
            _x567 = __tmp__._1;
        };
        var _x568:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x569:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x559, _x556, ((_x567 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x568 = __tmp__._0;
            _x569 = __tmp__._1;
        };
        var _x570:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x571:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x557, _x554, ((_x569 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x570 = __tmp__._0;
            _x571 = __tmp__._1;
        };
        var _x572:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x573:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x555, _x552, ((_x571 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x572 = __tmp__._0;
            _x573 = __tmp__._1;
        };
        var _x574:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x575:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x553, _x550, ((_x573 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x574 = __tmp__._0;
            _x575 = __tmp__._1;
        };
        var _x576:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x577:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x551, _x548, ((_x575 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x576 = __tmp__._0;
            _x577 = __tmp__._1;
        };
        var _x578:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x579:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x549, _x546, ((_x577 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x578 = __tmp__._0;
            _x579 = __tmp__._1;
        };
        var _x581:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x530, _x562, (0i64 : stdgo.GoUInt64));
            _x581 = __tmp__._1;
        };
        var _x582:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x583:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x532, _x564, ((_x581 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x582 = __tmp__._0;
            _x583 = __tmp__._1;
        };
        var _x584:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x585:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x534, _x566, ((_x583 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x584 = __tmp__._0;
            _x585 = __tmp__._1;
        };
        var _x586:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x587:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x536, _x568, ((_x585 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x586 = __tmp__._0;
            _x587 = __tmp__._1;
        };
        var _x588:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x589:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x538, _x570, ((_x587 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x588 = __tmp__._0;
            _x589 = __tmp__._1;
        };
        var _x590:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x591:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x540, _x572, ((_x589 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x590 = __tmp__._0;
            _x591 = __tmp__._1;
        };
        var _x592:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x593:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x542, _x574, ((_x591 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x592 = __tmp__._0;
            _x593 = __tmp__._1;
        };
        var _x594:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x595:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x544, _x576, ((_x593 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x594 = __tmp__._0;
            _x595 = __tmp__._1;
        };
        var _x596:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x597:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x545 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x529 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x511 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x479 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x578, ((_x595 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x596 = __tmp__._0;
            _x597 = __tmp__._1;
        };
        var _x598 = ((((_x597 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x579 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x547 : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x599:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x600:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x582, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x599 = __tmp__._0;
            _x600 = __tmp__._1;
        };
        var _x601:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x602:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x584, (-1i64 : stdgo.GoUInt64), ((_x600 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x601 = __tmp__._0;
            _x602 = __tmp__._1;
        };
        var _x603:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x604:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x586, (-1i64 : stdgo.GoUInt64), ((_x602 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x603 = __tmp__._0;
            _x604 = __tmp__._1;
        };
        var _x605:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x606:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x588, (-1i64 : stdgo.GoUInt64), ((_x604 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x605 = __tmp__._0;
            _x606 = __tmp__._1;
        };
        var _x607:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x608:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x590, (-1i64 : stdgo.GoUInt64), ((_x606 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x607 = __tmp__._0;
            _x608 = __tmp__._1;
        };
        var _x609:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x610:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x592, (-1i64 : stdgo.GoUInt64), ((_x608 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x609 = __tmp__._0;
            _x610 = __tmp__._1;
        };
        var _x611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x612:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x594, (-1i64 : stdgo.GoUInt64), ((_x610 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x611 = __tmp__._0;
            _x612 = __tmp__._1;
        };
        var _x613:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x614:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x596, (-1i64 : stdgo.GoUInt64), ((_x612 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x613 = __tmp__._0;
            _x614 = __tmp__._1;
        };
        var _x615:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x616:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x598, (511i64 : stdgo.GoUInt64), ((_x614 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x615 = __tmp__._0;
            _x616 = __tmp__._1;
        };
        var _x618:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x616 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x618 = __tmp__._1;
        };
        var _x619:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x619), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x599, _x582);
        var _x620:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x620), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x601, _x584);
        var _x621:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x621), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x603, _x586);
        var _x622:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x622), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x605, _x588);
        var _x623:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x623), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x607, _x590);
        var _x624:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x624), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x609, _x592);
        var _x625:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x625), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x611, _x594);
        var _x626:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x626), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x613, _x596);
        var _x627:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x627), (_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x615, _x598);
        _out1[(0 : stdgo.GoInt)] = _x619;
        _out1[(1 : stdgo.GoInt)] = _x620;
        _out1[(2 : stdgo.GoInt)] = _x621;
        _out1[(3 : stdgo.GoInt)] = _x622;
        _out1[(4 : stdgo.GoInt)] = _x623;
        _out1[(5 : stdgo.GoInt)] = _x624;
        _out1[(6 : stdgo.GoInt)] = _x625;
        _out1[(7 : stdgo.GoInt)] = _x626;
        _out1[(8 : stdgo.GoInt)] = _x627;
    }
