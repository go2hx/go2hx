package _internal.crypto.internal.nistec.fiat;
function _p521Square(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p521MontgomeryDomainFieldElement.T_p521MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(4 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5 = (_arg1[(5 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x6 = (_arg1[(6 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x7 = (_arg1[(7 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x8 = (_arg1[(8 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x9 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(8 : stdgo.GoInt)]);
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(7 : stdgo.GoInt)]);
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(6 : stdgo.GoInt)]);
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(5 : stdgo.GoInt)]);
            _x17 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(4 : stdgo.GoInt)]);
            _x19 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(3 : stdgo.GoInt)]);
            _x21 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(2 : stdgo.GoInt)]);
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(1 : stdgo.GoInt)]);
            _x25 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg1[(0 : stdgo.GoInt)]);
            _x27 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x27, _x24, (0i64 : stdgo.GoUInt64));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x25, _x22, ((_x29 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x23, _x20, ((_x31 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x21, _x18, ((_x33 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x16, ((_x35 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x14, ((_x37 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x12, ((_x39 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x10, ((_x41 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44 = ((((_x43 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x11 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (511i64 : stdgo.GoUInt64));
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x48 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x50 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x52 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x54 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x56 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x58 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x60 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x62 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x59, (0i64 : stdgo.GoUInt64));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x57, ((_x64 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, _x55, ((_x66 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x53, ((_x68 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _x51, ((_x70 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x52, _x49, ((_x72 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, _x47, ((_x74 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, _x45, ((_x76 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79 = ((((_x78 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x46 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x26, _x61, (0i64 : stdgo.GoUInt64));
            _x81 = __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, _x63, ((_x81 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x82 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, _x65, ((_x83 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x84 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, _x67, ((_x85 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x86 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, _x69, ((_x87 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, _x71, ((_x89 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, _x73, ((_x91 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, _x75, ((_x93 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x77, ((_x95 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x79, ((_x97 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(8 : stdgo.GoInt)]);
            _x101 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(7 : stdgo.GoInt)]);
            _x103 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(6 : stdgo.GoInt)]);
            _x105 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(5 : stdgo.GoInt)]);
            _x107 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(4 : stdgo.GoInt)]);
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(3 : stdgo.GoInt)]);
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(2 : stdgo.GoInt)]);
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(1 : stdgo.GoInt)]);
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg1[(0 : stdgo.GoInt)]);
            _x117 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x117, _x114, (0i64 : stdgo.GoUInt64));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x112, ((_x119 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x110, ((_x121 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x108, ((_x123 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x106, ((_x125 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x107, _x104, ((_x127 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x105, _x102, ((_x129 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x103, _x100, ((_x131 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134 = ((((_x133 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x101 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, _x116, (0i64 : stdgo.GoUInt64));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, _x118, ((_x136 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x86, _x120, ((_x138 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x88, _x122, ((_x140 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x90, _x124, ((_x142 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x92, _x126, ((_x144 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x145 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x94, _x128, ((_x146 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x147 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x96, _x130, ((_x148 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x98, _x132, ((_x150 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((_x99 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64), _x134, ((_x152 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (511i64 : stdgo.GoUInt64));
            _x156 = __tmp__._0;
            _x155 = __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x162 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x164 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x166 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x168 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x170 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x172 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x172, _x169, (0i64 : stdgo.GoUInt64));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x170, _x167, ((_x174 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x168, _x165, ((_x176 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x166, _x163, ((_x178 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x164, _x161, ((_x180 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x162, _x159, ((_x182 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x160, _x157, ((_x184 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x158, _x155, ((_x186 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189 = ((((_x188 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x156 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x135, _x171, (0i64 : stdgo.GoUInt64));
            _x191 = __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x137, _x173, ((_x191 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x139, _x175, ((_x193 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x141, _x177, ((_x195 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x143, _x179, ((_x197 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x145, _x181, ((_x199 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x147, _x183, ((_x201 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x202 = __tmp__._0;
            _x203 = __tmp__._1;
        };
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x149, _x185, ((_x203 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x204 = __tmp__._0;
            _x205 = __tmp__._1;
        };
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x151, _x187, ((_x205 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x206 = __tmp__._0;
            _x207 = __tmp__._1;
        };
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x153, _x189, ((_x207 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x208 = __tmp__._0;
            _x209 = __tmp__._1;
        };
        var _x210 = ((((_x209 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x154 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(8 : stdgo.GoInt)]);
            _x212 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(7 : stdgo.GoInt)]);
            _x214 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(6 : stdgo.GoInt)]);
            _x216 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(5 : stdgo.GoInt)]);
            _x218 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(4 : stdgo.GoInt)]);
            _x220 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(3 : stdgo.GoInt)]);
            _x222 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(2 : stdgo.GoInt)]);
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(1 : stdgo.GoInt)]);
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg1[(0 : stdgo.GoInt)]);
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
        var _x245 = ((((_x244 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x212 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x192, _x227, (0i64 : stdgo.GoUInt64));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x229, ((_x247 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x231, ((_x249 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x233, ((_x251 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x235, ((_x253 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x202, _x237, ((_x255 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x204, _x239, ((_x257 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x206, _x241, ((_x259 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x260 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x208, _x243, ((_x261 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x262 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x210, _x245, ((_x263 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x264 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (511i64 : stdgo.GoUInt64));
            _x267 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x269 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x271 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x273 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x275 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x277 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x279 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x281 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x283 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x283, _x280, (0i64 : stdgo.GoUInt64));
            _x284 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x281, _x278, ((_x285 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x286 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x279, _x276, ((_x287 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x288 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x274, ((_x289 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x290 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x275, _x272, ((_x291 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x273, _x270, ((_x293 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x271, _x268, ((_x295 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x269, _x266, ((_x297 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300 = ((((_x299 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x267 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x246, _x282, (0i64 : stdgo.GoUInt64));
            _x302 = __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x248, _x284, ((_x302 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x250, _x286, ((_x304 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x252, _x288, ((_x306 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x254, _x290, ((_x308 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x256, _x292, ((_x310 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x311 = __tmp__._0;
            _x312 = __tmp__._1;
        };
        var _x313:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x258, _x294, ((_x312 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x313 = __tmp__._0;
            _x314 = __tmp__._1;
        };
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x260, _x296, ((_x314 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x262, _x298, ((_x316 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x264, _x300, ((_x318 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321 = ((((_x320 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x265 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(8 : stdgo.GoInt)]);
            _x323 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(7 : stdgo.GoInt)]);
            _x325 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(6 : stdgo.GoInt)]);
            _x327 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(5 : stdgo.GoInt)]);
            _x329 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(4 : stdgo.GoInt)]);
            _x331 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(3 : stdgo.GoInt)]);
            _x333 = __tmp__._0;
            _x332 = __tmp__._1;
        };
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(2 : stdgo.GoInt)]);
            _x335 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(1 : stdgo.GoInt)]);
            _x337 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg1[(0 : stdgo.GoInt)]);
            _x339 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x339, _x336, (0i64 : stdgo.GoUInt64));
            _x340 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x337, _x334, ((_x341 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x342 = __tmp__._0;
            _x343 = __tmp__._1;
        };
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x335, _x332, ((_x343 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x344 = __tmp__._0;
            _x345 = __tmp__._1;
        };
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x333, _x330, ((_x345 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x346 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x331, _x328, ((_x347 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x348 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x329, _x326, ((_x349 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x350 = __tmp__._0;
            _x351 = __tmp__._1;
        };
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x327, _x324, ((_x351 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x352 = __tmp__._0;
            _x353 = __tmp__._1;
        };
        var _x354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x325, _x322, ((_x353 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x354 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x356 = ((((_x355 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x323 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x303, _x338, (0i64 : stdgo.GoUInt64));
            _x357 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x305, _x340, ((_x358 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x359 = __tmp__._0;
            _x360 = __tmp__._1;
        };
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x307, _x342, ((_x360 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x361 = __tmp__._0;
            _x362 = __tmp__._1;
        };
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x309, _x344, ((_x362 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x363 = __tmp__._0;
            _x364 = __tmp__._1;
        };
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x311, _x346, ((_x364 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x365 = __tmp__._0;
            _x366 = __tmp__._1;
        };
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x313, _x348, ((_x366 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x315, _x350, ((_x368 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x317, _x352, ((_x370 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x319, _x354, ((_x372 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x376:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x321, _x356, ((_x374 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x377:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (511i64 : stdgo.GoUInt64));
            _x378 = __tmp__._0;
            _x377 = __tmp__._1;
        };
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x380 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x382 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x384 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x386 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x388 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x390 = __tmp__._0;
            _x389 = __tmp__._1;
        };
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x392 = __tmp__._0;
            _x391 = __tmp__._1;
        };
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x394 = __tmp__._0;
            _x393 = __tmp__._1;
        };
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x394, _x391, (0i64 : stdgo.GoUInt64));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x392, _x389, ((_x396 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x390, _x387, ((_x398 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x399 = __tmp__._0;
            _x400 = __tmp__._1;
        };
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x388, _x385, ((_x400 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x403:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x386, _x383, ((_x402 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x403 = __tmp__._0;
            _x404 = __tmp__._1;
        };
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x384, _x381, ((_x404 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x405 = __tmp__._0;
            _x406 = __tmp__._1;
        };
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x382, _x379, ((_x406 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x407 = __tmp__._0;
            _x408 = __tmp__._1;
        };
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x380, _x377, ((_x408 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x409 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x411 = ((((_x410 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x378 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x413:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x357, _x393, (0i64 : stdgo.GoUInt64));
            _x413 = __tmp__._1;
        };
        var _x414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x415:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x359, _x395, ((_x413 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x414 = __tmp__._0;
            _x415 = __tmp__._1;
        };
        var _x416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x417:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x361, _x397, ((_x415 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x416 = __tmp__._0;
            _x417 = __tmp__._1;
        };
        var _x418:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x419:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x363, _x399, ((_x417 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x418 = __tmp__._0;
            _x419 = __tmp__._1;
        };
        var _x420:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x421:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x365, _x401, ((_x419 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x420 = __tmp__._0;
            _x421 = __tmp__._1;
        };
        var _x422:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x367, _x403, ((_x421 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x422 = __tmp__._0;
            _x423 = __tmp__._1;
        };
        var _x424:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x425:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x369, _x405, ((_x423 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x424 = __tmp__._0;
            _x425 = __tmp__._1;
        };
        var _x426:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x371, _x407, ((_x425 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x426 = __tmp__._0;
            _x427 = __tmp__._1;
        };
        var _x428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x373, _x409, ((_x427 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x431:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x375, _x411, ((_x429 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432 = ((((_x431 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x376 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x434:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(8 : stdgo.GoInt)]);
            _x434 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x435:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(7 : stdgo.GoInt)]);
            _x436 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(6 : stdgo.GoInt)]);
            _x438 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x439:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x440:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(5 : stdgo.GoInt)]);
            _x440 = __tmp__._0;
            _x439 = __tmp__._1;
        };
        var _x441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x442:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(4 : stdgo.GoInt)]);
            _x442 = __tmp__._0;
            _x441 = __tmp__._1;
        };
        var _x443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x444:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(3 : stdgo.GoInt)]);
            _x444 = __tmp__._0;
            _x443 = __tmp__._1;
        };
        var _x445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x446:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(2 : stdgo.GoInt)]);
            _x446 = __tmp__._0;
            _x445 = __tmp__._1;
        };
        var _x447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(1 : stdgo.GoInt)]);
            _x448 = __tmp__._0;
            _x447 = __tmp__._1;
        };
        var _x449:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x450:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg1[(0 : stdgo.GoInt)]);
            _x450 = __tmp__._0;
            _x449 = __tmp__._1;
        };
        var _x451:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x452:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x450, _x447, (0i64 : stdgo.GoUInt64));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x454:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x448, _x445, ((_x452 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x453 = __tmp__._0;
            _x454 = __tmp__._1;
        };
        var _x455:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x446, _x443, ((_x454 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x455 = __tmp__._0;
            _x456 = __tmp__._1;
        };
        var _x457:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x458:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x444, _x441, ((_x456 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x457 = __tmp__._0;
            _x458 = __tmp__._1;
        };
        var _x459:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x442, _x439, ((_x458 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x459 = __tmp__._0;
            _x460 = __tmp__._1;
        };
        var _x461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x462:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x440, _x437, ((_x460 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x461 = __tmp__._0;
            _x462 = __tmp__._1;
        };
        var _x463:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x464:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x438, _x435, ((_x462 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x463 = __tmp__._0;
            _x464 = __tmp__._1;
        };
        var _x465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x466:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x436, _x433, ((_x464 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x465 = __tmp__._0;
            _x466 = __tmp__._1;
        };
        var _x467 = ((((_x466 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x434 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x468:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x414, _x449, (0i64 : stdgo.GoUInt64));
            _x468 = __tmp__._0;
            _x469 = __tmp__._1;
        };
        var _x470:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x471:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x416, _x451, ((_x469 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x470 = __tmp__._0;
            _x471 = __tmp__._1;
        };
        var _x472:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x473:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x418, _x453, ((_x471 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x472 = __tmp__._0;
            _x473 = __tmp__._1;
        };
        var _x474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x475:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x420, _x455, ((_x473 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x474 = __tmp__._0;
            _x475 = __tmp__._1;
        };
        var _x476:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x422, _x457, ((_x475 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x476 = __tmp__._0;
            _x477 = __tmp__._1;
        };
        var _x478:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x479:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x424, _x459, ((_x477 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x478 = __tmp__._0;
            _x479 = __tmp__._1;
        };
        var _x480:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x426, _x461, ((_x479 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x480 = __tmp__._0;
            _x481 = __tmp__._1;
        };
        var _x482:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x483:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x428, _x463, ((_x481 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x482 = __tmp__._0;
            _x483 = __tmp__._1;
        };
        var _x484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x430, _x465, ((_x483 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x484 = __tmp__._0;
            _x485 = __tmp__._1;
        };
        var _x486:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x487:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x432, _x467, ((_x485 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x486 = __tmp__._0;
            _x487 = __tmp__._1;
        };
        var _x488:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (511i64 : stdgo.GoUInt64));
            _x489 = __tmp__._0;
            _x488 = __tmp__._1;
        };
        var _x490:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x491 = __tmp__._0;
            _x490 = __tmp__._1;
        };
        var _x492:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x493:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x493 = __tmp__._0;
            _x492 = __tmp__._1;
        };
        var _x494:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x495:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x495 = __tmp__._0;
            _x494 = __tmp__._1;
        };
        var _x496:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x497:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x497 = __tmp__._0;
            _x496 = __tmp__._1;
        };
        var _x498:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x499 = __tmp__._0;
            _x498 = __tmp__._1;
        };
        var _x500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x501:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x501 = __tmp__._0;
            _x500 = __tmp__._1;
        };
        var _x502:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x503 = __tmp__._0;
            _x502 = __tmp__._1;
        };
        var _x504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x505:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x505 = __tmp__._0;
            _x504 = __tmp__._1;
        };
        var _x506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x507:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x505, _x502, (0i64 : stdgo.GoUInt64));
            _x506 = __tmp__._0;
            _x507 = __tmp__._1;
        };
        var _x508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x503, _x500, ((_x507 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x508 = __tmp__._0;
            _x509 = __tmp__._1;
        };
        var _x510:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x501, _x498, ((_x509 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x510 = __tmp__._0;
            _x511 = __tmp__._1;
        };
        var _x512:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x513:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x499, _x496, ((_x511 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x512 = __tmp__._0;
            _x513 = __tmp__._1;
        };
        var _x514:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x497, _x494, ((_x513 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x514 = __tmp__._0;
            _x515 = __tmp__._1;
        };
        var _x516:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x517:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x495, _x492, ((_x515 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x516 = __tmp__._0;
            _x517 = __tmp__._1;
        };
        var _x518:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x493, _x490, ((_x517 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x518 = __tmp__._0;
            _x519 = __tmp__._1;
        };
        var _x520:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x491, _x488, ((_x519 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x520 = __tmp__._0;
            _x521 = __tmp__._1;
        };
        var _x522 = ((((_x521 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x489 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x524:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x468, _x504, (0i64 : stdgo.GoUInt64));
            _x524 = __tmp__._1;
        };
        var _x525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x526:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x470, _x506, ((_x524 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x525 = __tmp__._0;
            _x526 = __tmp__._1;
        };
        var _x527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x528:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x472, _x508, ((_x526 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x527 = __tmp__._0;
            _x528 = __tmp__._1;
        };
        var _x529:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x530:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x474, _x510, ((_x528 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x529 = __tmp__._0;
            _x530 = __tmp__._1;
        };
        var _x531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x532:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x476, _x512, ((_x530 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x531 = __tmp__._0;
            _x532 = __tmp__._1;
        };
        var _x533:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x534:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x478, _x514, ((_x532 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x533 = __tmp__._0;
            _x534 = __tmp__._1;
        };
        var _x535:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x480, _x516, ((_x534 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x535 = __tmp__._0;
            _x536 = __tmp__._1;
        };
        var _x537:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x482, _x518, ((_x536 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x537 = __tmp__._0;
            _x538 = __tmp__._1;
        };
        var _x539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x540:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x484, _x520, ((_x538 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x539 = __tmp__._0;
            _x540 = __tmp__._1;
        };
        var _x541:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x542:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x486, _x522, ((_x540 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x541 = __tmp__._0;
            _x542 = __tmp__._1;
        };
        var _x543 = ((((_x542 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x487 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x545:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(8 : stdgo.GoInt)]);
            _x545 = __tmp__._0;
            _x544 = __tmp__._1;
        };
        var _x546:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x547:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(7 : stdgo.GoInt)]);
            _x547 = __tmp__._0;
            _x546 = __tmp__._1;
        };
        var _x548:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x549:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(6 : stdgo.GoInt)]);
            _x549 = __tmp__._0;
            _x548 = __tmp__._1;
        };
        var _x550:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x551:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(5 : stdgo.GoInt)]);
            _x551 = __tmp__._0;
            _x550 = __tmp__._1;
        };
        var _x552:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x553:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(4 : stdgo.GoInt)]);
            _x553 = __tmp__._0;
            _x552 = __tmp__._1;
        };
        var _x554:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x555:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(3 : stdgo.GoInt)]);
            _x555 = __tmp__._0;
            _x554 = __tmp__._1;
        };
        var _x556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x557:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(2 : stdgo.GoInt)]);
            _x557 = __tmp__._0;
            _x556 = __tmp__._1;
        };
        var _x558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(1 : stdgo.GoInt)]);
            _x559 = __tmp__._0;
            _x558 = __tmp__._1;
        };
        var _x560:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x561:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg1[(0 : stdgo.GoInt)]);
            _x561 = __tmp__._0;
            _x560 = __tmp__._1;
        };
        var _x562:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x561, _x558, (0i64 : stdgo.GoUInt64));
            _x562 = __tmp__._0;
            _x563 = __tmp__._1;
        };
        var _x564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x565:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x559, _x556, ((_x563 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x564 = __tmp__._0;
            _x565 = __tmp__._1;
        };
        var _x566:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x567:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x557, _x554, ((_x565 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x566 = __tmp__._0;
            _x567 = __tmp__._1;
        };
        var _x568:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x569:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x555, _x552, ((_x567 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x568 = __tmp__._0;
            _x569 = __tmp__._1;
        };
        var _x570:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x571:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x553, _x550, ((_x569 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x570 = __tmp__._0;
            _x571 = __tmp__._1;
        };
        var _x572:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x573:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x551, _x548, ((_x571 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x572 = __tmp__._0;
            _x573 = __tmp__._1;
        };
        var _x574:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x575:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x549, _x546, ((_x573 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x574 = __tmp__._0;
            _x575 = __tmp__._1;
        };
        var _x576:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x577:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x547, _x544, ((_x575 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x576 = __tmp__._0;
            _x577 = __tmp__._1;
        };
        var _x578 = ((((_x577 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x545 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x579:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x580:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x525, _x560, (0i64 : stdgo.GoUInt64));
            _x579 = __tmp__._0;
            _x580 = __tmp__._1;
        };
        var _x581:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x582:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x527, _x562, ((_x580 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x581 = __tmp__._0;
            _x582 = __tmp__._1;
        };
        var _x583:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x584:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x529, _x564, ((_x582 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x583 = __tmp__._0;
            _x584 = __tmp__._1;
        };
        var _x585:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x586:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x531, _x566, ((_x584 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x585 = __tmp__._0;
            _x586 = __tmp__._1;
        };
        var _x587:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x588:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x533, _x568, ((_x586 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x587 = __tmp__._0;
            _x588 = __tmp__._1;
        };
        var _x589:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x590:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x535, _x570, ((_x588 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x589 = __tmp__._0;
            _x590 = __tmp__._1;
        };
        var _x591:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x592:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x537, _x572, ((_x590 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x591 = __tmp__._0;
            _x592 = __tmp__._1;
        };
        var _x593:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x594:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x539, _x574, ((_x592 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x593 = __tmp__._0;
            _x594 = __tmp__._1;
        };
        var _x595:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x596:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x541, _x576, ((_x594 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x595 = __tmp__._0;
            _x596 = __tmp__._1;
        };
        var _x597:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x598:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x543, _x578, ((_x596 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x597 = __tmp__._0;
            _x598 = __tmp__._1;
        };
        var _x599:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x600:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (511i64 : stdgo.GoUInt64));
            _x600 = __tmp__._0;
            _x599 = __tmp__._1;
        };
        var _x601:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x602:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x602 = __tmp__._0;
            _x601 = __tmp__._1;
        };
        var _x603:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x604:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x604 = __tmp__._0;
            _x603 = __tmp__._1;
        };
        var _x605:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x606:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x606 = __tmp__._0;
            _x605 = __tmp__._1;
        };
        var _x607:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x608:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x608 = __tmp__._0;
            _x607 = __tmp__._1;
        };
        var _x609:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x610:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x610 = __tmp__._0;
            _x609 = __tmp__._1;
        };
        var _x611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x612:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x612 = __tmp__._0;
            _x611 = __tmp__._1;
        };
        var _x613:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x614:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x614 = __tmp__._0;
            _x613 = __tmp__._1;
        };
        var _x615:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x616:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x616 = __tmp__._0;
            _x615 = __tmp__._1;
        };
        var _x617:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x618:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x616, _x613, (0i64 : stdgo.GoUInt64));
            _x617 = __tmp__._0;
            _x618 = __tmp__._1;
        };
        var _x619:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x620:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x614, _x611, ((_x618 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x619 = __tmp__._0;
            _x620 = __tmp__._1;
        };
        var _x621:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x622:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x612, _x609, ((_x620 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x621 = __tmp__._0;
            _x622 = __tmp__._1;
        };
        var _x623:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x624:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x610, _x607, ((_x622 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x623 = __tmp__._0;
            _x624 = __tmp__._1;
        };
        var _x625:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x626:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x608, _x605, ((_x624 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x625 = __tmp__._0;
            _x626 = __tmp__._1;
        };
        var _x627:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x628:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x606, _x603, ((_x626 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x627 = __tmp__._0;
            _x628 = __tmp__._1;
        };
        var _x629:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x630:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x604, _x601, ((_x628 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x629 = __tmp__._0;
            _x630 = __tmp__._1;
        };
        var _x631:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x632:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x602, _x599, ((_x630 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x631 = __tmp__._0;
            _x632 = __tmp__._1;
        };
        var _x633 = ((((_x632 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x600 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x635:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x579, _x615, (0i64 : stdgo.GoUInt64));
            _x635 = __tmp__._1;
        };
        var _x636:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x637:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x581, _x617, ((_x635 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x636 = __tmp__._0;
            _x637 = __tmp__._1;
        };
        var _x638:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x639:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x583, _x619, ((_x637 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x638 = __tmp__._0;
            _x639 = __tmp__._1;
        };
        var _x640:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x641:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x585, _x621, ((_x639 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x640 = __tmp__._0;
            _x641 = __tmp__._1;
        };
        var _x642:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x643:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x587, _x623, ((_x641 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x642 = __tmp__._0;
            _x643 = __tmp__._1;
        };
        var _x644:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x645:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x589, _x625, ((_x643 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x644 = __tmp__._0;
            _x645 = __tmp__._1;
        };
        var _x646:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x647:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x591, _x627, ((_x645 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x646 = __tmp__._0;
            _x647 = __tmp__._1;
        };
        var _x648:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x649:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x593, _x629, ((_x647 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x648 = __tmp__._0;
            _x649 = __tmp__._1;
        };
        var _x650:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x651:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x595, _x631, ((_x649 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x650 = __tmp__._0;
            _x651 = __tmp__._1;
        };
        var _x652:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x653:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x597, _x633, ((_x651 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x652 = __tmp__._0;
            _x653 = __tmp__._1;
        };
        var _x654 = ((((_x653 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x598 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x655:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x656:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(8 : stdgo.GoInt)]);
            _x656 = __tmp__._0;
            _x655 = __tmp__._1;
        };
        var _x657:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x658:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(7 : stdgo.GoInt)]);
            _x658 = __tmp__._0;
            _x657 = __tmp__._1;
        };
        var _x659:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x660:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(6 : stdgo.GoInt)]);
            _x660 = __tmp__._0;
            _x659 = __tmp__._1;
        };
        var _x661:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x662:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(5 : stdgo.GoInt)]);
            _x662 = __tmp__._0;
            _x661 = __tmp__._1;
        };
        var _x663:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x664:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(4 : stdgo.GoInt)]);
            _x664 = __tmp__._0;
            _x663 = __tmp__._1;
        };
        var _x665:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x666:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(3 : stdgo.GoInt)]);
            _x666 = __tmp__._0;
            _x665 = __tmp__._1;
        };
        var _x667:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x668:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(2 : stdgo.GoInt)]);
            _x668 = __tmp__._0;
            _x667 = __tmp__._1;
        };
        var _x669:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x670:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(1 : stdgo.GoInt)]);
            _x670 = __tmp__._0;
            _x669 = __tmp__._1;
        };
        var _x671:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x672:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg1[(0 : stdgo.GoInt)]);
            _x672 = __tmp__._0;
            _x671 = __tmp__._1;
        };
        var _x673:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x674:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x672, _x669, (0i64 : stdgo.GoUInt64));
            _x673 = __tmp__._0;
            _x674 = __tmp__._1;
        };
        var _x675:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x676:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x670, _x667, ((_x674 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x675 = __tmp__._0;
            _x676 = __tmp__._1;
        };
        var _x677:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x678:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x668, _x665, ((_x676 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x677 = __tmp__._0;
            _x678 = __tmp__._1;
        };
        var _x679:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x680:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x666, _x663, ((_x678 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x679 = __tmp__._0;
            _x680 = __tmp__._1;
        };
        var _x681:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x682:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x664, _x661, ((_x680 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x681 = __tmp__._0;
            _x682 = __tmp__._1;
        };
        var _x683:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x684:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x662, _x659, ((_x682 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x683 = __tmp__._0;
            _x684 = __tmp__._1;
        };
        var _x685:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x686:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x660, _x657, ((_x684 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x685 = __tmp__._0;
            _x686 = __tmp__._1;
        };
        var _x687:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x688:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x658, _x655, ((_x686 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x687 = __tmp__._0;
            _x688 = __tmp__._1;
        };
        var _x689 = ((((_x688 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x656 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x690:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x691:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x636, _x671, (0i64 : stdgo.GoUInt64));
            _x690 = __tmp__._0;
            _x691 = __tmp__._1;
        };
        var _x692:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x693:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x638, _x673, ((_x691 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x692 = __tmp__._0;
            _x693 = __tmp__._1;
        };
        var _x694:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x695:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x640, _x675, ((_x693 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x694 = __tmp__._0;
            _x695 = __tmp__._1;
        };
        var _x696:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x697:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x642, _x677, ((_x695 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x696 = __tmp__._0;
            _x697 = __tmp__._1;
        };
        var _x698:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x699:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x644, _x679, ((_x697 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x698 = __tmp__._0;
            _x699 = __tmp__._1;
        };
        var _x700:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x701:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x646, _x681, ((_x699 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x700 = __tmp__._0;
            _x701 = __tmp__._1;
        };
        var _x702:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x703:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x648, _x683, ((_x701 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x702 = __tmp__._0;
            _x703 = __tmp__._1;
        };
        var _x704:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x705:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x650, _x685, ((_x703 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x704 = __tmp__._0;
            _x705 = __tmp__._1;
        };
        var _x706:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x707:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x652, _x687, ((_x705 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x706 = __tmp__._0;
            _x707 = __tmp__._1;
        };
        var _x708:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x709:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x654, _x689, ((_x707 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x708 = __tmp__._0;
            _x709 = __tmp__._1;
        };
        var _x710:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x711:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (511i64 : stdgo.GoUInt64));
            _x711 = __tmp__._0;
            _x710 = __tmp__._1;
        };
        var _x712:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x713:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x713 = __tmp__._0;
            _x712 = __tmp__._1;
        };
        var _x714:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x715:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x715 = __tmp__._0;
            _x714 = __tmp__._1;
        };
        var _x716:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x717:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x717 = __tmp__._0;
            _x716 = __tmp__._1;
        };
        var _x718:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x719:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x719 = __tmp__._0;
            _x718 = __tmp__._1;
        };
        var _x720:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x721:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x721 = __tmp__._0;
            _x720 = __tmp__._1;
        };
        var _x722:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x723:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x723 = __tmp__._0;
            _x722 = __tmp__._1;
        };
        var _x724:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x725:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x725 = __tmp__._0;
            _x724 = __tmp__._1;
        };
        var _x726:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x727:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x727 = __tmp__._0;
            _x726 = __tmp__._1;
        };
        var _x728:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x729:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x727, _x724, (0i64 : stdgo.GoUInt64));
            _x728 = __tmp__._0;
            _x729 = __tmp__._1;
        };
        var _x730:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x731:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x725, _x722, ((_x729 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x730 = __tmp__._0;
            _x731 = __tmp__._1;
        };
        var _x732:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x733:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x723, _x720, ((_x731 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x732 = __tmp__._0;
            _x733 = __tmp__._1;
        };
        var _x734:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x735:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x721, _x718, ((_x733 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x734 = __tmp__._0;
            _x735 = __tmp__._1;
        };
        var _x736:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x737:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x719, _x716, ((_x735 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x736 = __tmp__._0;
            _x737 = __tmp__._1;
        };
        var _x738:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x739:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x717, _x714, ((_x737 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x738 = __tmp__._0;
            _x739 = __tmp__._1;
        };
        var _x740:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x741:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x715, _x712, ((_x739 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x740 = __tmp__._0;
            _x741 = __tmp__._1;
        };
        var _x742:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x743:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x713, _x710, ((_x741 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x742 = __tmp__._0;
            _x743 = __tmp__._1;
        };
        var _x744 = ((((_x743 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x711 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x746:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x690, _x726, (0i64 : stdgo.GoUInt64));
            _x746 = __tmp__._1;
        };
        var _x747:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x748:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x692, _x728, ((_x746 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x747 = __tmp__._0;
            _x748 = __tmp__._1;
        };
        var _x749:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x750:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x694, _x730, ((_x748 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x749 = __tmp__._0;
            _x750 = __tmp__._1;
        };
        var _x751:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x752:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x696, _x732, ((_x750 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x751 = __tmp__._0;
            _x752 = __tmp__._1;
        };
        var _x753:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x754:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x698, _x734, ((_x752 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x753 = __tmp__._0;
            _x754 = __tmp__._1;
        };
        var _x755:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x756:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x700, _x736, ((_x754 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x755 = __tmp__._0;
            _x756 = __tmp__._1;
        };
        var _x757:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x758:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x702, _x738, ((_x756 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x757 = __tmp__._0;
            _x758 = __tmp__._1;
        };
        var _x759:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x760:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x704, _x740, ((_x758 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x759 = __tmp__._0;
            _x760 = __tmp__._1;
        };
        var _x761:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x762:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x706, _x742, ((_x760 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x761 = __tmp__._0;
            _x762 = __tmp__._1;
        };
        var _x763:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x764:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x708, _x744, ((_x762 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x763 = __tmp__._0;
            _x764 = __tmp__._1;
        };
        var _x765 = ((((_x764 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x709 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x766:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x767:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(8 : stdgo.GoInt)]);
            _x767 = __tmp__._0;
            _x766 = __tmp__._1;
        };
        var _x768:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x769:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(7 : stdgo.GoInt)]);
            _x769 = __tmp__._0;
            _x768 = __tmp__._1;
        };
        var _x770:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x771:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(6 : stdgo.GoInt)]);
            _x771 = __tmp__._0;
            _x770 = __tmp__._1;
        };
        var _x772:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x773:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(5 : stdgo.GoInt)]);
            _x773 = __tmp__._0;
            _x772 = __tmp__._1;
        };
        var _x774:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x775:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(4 : stdgo.GoInt)]);
            _x775 = __tmp__._0;
            _x774 = __tmp__._1;
        };
        var _x776:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x777:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(3 : stdgo.GoInt)]);
            _x777 = __tmp__._0;
            _x776 = __tmp__._1;
        };
        var _x778:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x779:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(2 : stdgo.GoInt)]);
            _x779 = __tmp__._0;
            _x778 = __tmp__._1;
        };
        var _x780:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x781:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(1 : stdgo.GoInt)]);
            _x781 = __tmp__._0;
            _x780 = __tmp__._1;
        };
        var _x782:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x783:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg1[(0 : stdgo.GoInt)]);
            _x783 = __tmp__._0;
            _x782 = __tmp__._1;
        };
        var _x784:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x785:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x783, _x780, (0i64 : stdgo.GoUInt64));
            _x784 = __tmp__._0;
            _x785 = __tmp__._1;
        };
        var _x786:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x787:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x781, _x778, ((_x785 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x786 = __tmp__._0;
            _x787 = __tmp__._1;
        };
        var _x788:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x789:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x779, _x776, ((_x787 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x788 = __tmp__._0;
            _x789 = __tmp__._1;
        };
        var _x790:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x791:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x777, _x774, ((_x789 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x790 = __tmp__._0;
            _x791 = __tmp__._1;
        };
        var _x792:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x793:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x775, _x772, ((_x791 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x792 = __tmp__._0;
            _x793 = __tmp__._1;
        };
        var _x794:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x795:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x773, _x770, ((_x793 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x794 = __tmp__._0;
            _x795 = __tmp__._1;
        };
        var _x796:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x797:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x771, _x768, ((_x795 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x796 = __tmp__._0;
            _x797 = __tmp__._1;
        };
        var _x798:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x799:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x769, _x766, ((_x797 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x798 = __tmp__._0;
            _x799 = __tmp__._1;
        };
        var _x800 = ((((_x799 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x767 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x801:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x802:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x747, _x782, (0i64 : stdgo.GoUInt64));
            _x801 = __tmp__._0;
            _x802 = __tmp__._1;
        };
        var _x803:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x804:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x749, _x784, ((_x802 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x803 = __tmp__._0;
            _x804 = __tmp__._1;
        };
        var _x805:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x806:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x751, _x786, ((_x804 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x805 = __tmp__._0;
            _x806 = __tmp__._1;
        };
        var _x807:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x808:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x753, _x788, ((_x806 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x807 = __tmp__._0;
            _x808 = __tmp__._1;
        };
        var _x809:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x810:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x755, _x790, ((_x808 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x809 = __tmp__._0;
            _x810 = __tmp__._1;
        };
        var _x811:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x812:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x757, _x792, ((_x810 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x811 = __tmp__._0;
            _x812 = __tmp__._1;
        };
        var _x813:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x814:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x759, _x794, ((_x812 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x813 = __tmp__._0;
            _x814 = __tmp__._1;
        };
        var _x815:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x816:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x761, _x796, ((_x814 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x815 = __tmp__._0;
            _x816 = __tmp__._1;
        };
        var _x817:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x818:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x763, _x798, ((_x816 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x817 = __tmp__._0;
            _x818 = __tmp__._1;
        };
        var _x819:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x820:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x765, _x800, ((_x818 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x819 = __tmp__._0;
            _x820 = __tmp__._1;
        };
        var _x821:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x822:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (511i64 : stdgo.GoUInt64));
            _x822 = __tmp__._0;
            _x821 = __tmp__._1;
        };
        var _x823:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x824:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x824 = __tmp__._0;
            _x823 = __tmp__._1;
        };
        var _x825:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x826:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x826 = __tmp__._0;
            _x825 = __tmp__._1;
        };
        var _x827:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x828:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x828 = __tmp__._0;
            _x827 = __tmp__._1;
        };
        var _x829:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x830:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x830 = __tmp__._0;
            _x829 = __tmp__._1;
        };
        var _x831:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x832:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x832 = __tmp__._0;
            _x831 = __tmp__._1;
        };
        var _x833:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x834:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x834 = __tmp__._0;
            _x833 = __tmp__._1;
        };
        var _x835:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x836:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x836 = __tmp__._0;
            _x835 = __tmp__._1;
        };
        var _x837:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x838:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x838 = __tmp__._0;
            _x837 = __tmp__._1;
        };
        var _x839:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x840:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x838, _x835, (0i64 : stdgo.GoUInt64));
            _x839 = __tmp__._0;
            _x840 = __tmp__._1;
        };
        var _x841:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x842:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x836, _x833, ((_x840 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x841 = __tmp__._0;
            _x842 = __tmp__._1;
        };
        var _x843:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x844:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x834, _x831, ((_x842 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x843 = __tmp__._0;
            _x844 = __tmp__._1;
        };
        var _x845:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x846:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x832, _x829, ((_x844 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x845 = __tmp__._0;
            _x846 = __tmp__._1;
        };
        var _x847:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x848:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x830, _x827, ((_x846 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x847 = __tmp__._0;
            _x848 = __tmp__._1;
        };
        var _x849:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x850:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x828, _x825, ((_x848 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x849 = __tmp__._0;
            _x850 = __tmp__._1;
        };
        var _x851:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x852:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x826, _x823, ((_x850 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x851 = __tmp__._0;
            _x852 = __tmp__._1;
        };
        var _x853:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x854:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x824, _x821, ((_x852 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x853 = __tmp__._0;
            _x854 = __tmp__._1;
        };
        var _x855 = ((((_x854 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x822 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x857:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x801, _x837, (0i64 : stdgo.GoUInt64));
            _x857 = __tmp__._1;
        };
        var _x858:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x859:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x803, _x839, ((_x857 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x858 = __tmp__._0;
            _x859 = __tmp__._1;
        };
        var _x860:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x861:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x805, _x841, ((_x859 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x860 = __tmp__._0;
            _x861 = __tmp__._1;
        };
        var _x862:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x863:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x807, _x843, ((_x861 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x862 = __tmp__._0;
            _x863 = __tmp__._1;
        };
        var _x864:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x865:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x809, _x845, ((_x863 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x864 = __tmp__._0;
            _x865 = __tmp__._1;
        };
        var _x866:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x867:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x811, _x847, ((_x865 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x866 = __tmp__._0;
            _x867 = __tmp__._1;
        };
        var _x868:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x869:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x813, _x849, ((_x867 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x868 = __tmp__._0;
            _x869 = __tmp__._1;
        };
        var _x870:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x871:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x815, _x851, ((_x869 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x870 = __tmp__._0;
            _x871 = __tmp__._1;
        };
        var _x872:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x873:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x817, _x853, ((_x871 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x872 = __tmp__._0;
            _x873 = __tmp__._1;
        };
        var _x874:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x875:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x819, _x855, ((_x873 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x874 = __tmp__._0;
            _x875 = __tmp__._1;
        };
        var _x876 = ((((_x875 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x820 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x877:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x878:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(8 : stdgo.GoInt)]);
            _x878 = __tmp__._0;
            _x877 = __tmp__._1;
        };
        var _x879:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x880:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(7 : stdgo.GoInt)]);
            _x880 = __tmp__._0;
            _x879 = __tmp__._1;
        };
        var _x881:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x882:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(6 : stdgo.GoInt)]);
            _x882 = __tmp__._0;
            _x881 = __tmp__._1;
        };
        var _x883:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x884:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(5 : stdgo.GoInt)]);
            _x884 = __tmp__._0;
            _x883 = __tmp__._1;
        };
        var _x885:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x886:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(4 : stdgo.GoInt)]);
            _x886 = __tmp__._0;
            _x885 = __tmp__._1;
        };
        var _x887:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x888:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(3 : stdgo.GoInt)]);
            _x888 = __tmp__._0;
            _x887 = __tmp__._1;
        };
        var _x889:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x890:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(2 : stdgo.GoInt)]);
            _x890 = __tmp__._0;
            _x889 = __tmp__._1;
        };
        var _x891:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x892:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(1 : stdgo.GoInt)]);
            _x892 = __tmp__._0;
            _x891 = __tmp__._1;
        };
        var _x893:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x894:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg1[(0 : stdgo.GoInt)]);
            _x894 = __tmp__._0;
            _x893 = __tmp__._1;
        };
        var _x895:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x896:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x894, _x891, (0i64 : stdgo.GoUInt64));
            _x895 = __tmp__._0;
            _x896 = __tmp__._1;
        };
        var _x897:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x898:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x892, _x889, ((_x896 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x897 = __tmp__._0;
            _x898 = __tmp__._1;
        };
        var _x899:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x900:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x890, _x887, ((_x898 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x899 = __tmp__._0;
            _x900 = __tmp__._1;
        };
        var _x901:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x902:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x888, _x885, ((_x900 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x901 = __tmp__._0;
            _x902 = __tmp__._1;
        };
        var _x903:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x904:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x886, _x883, ((_x902 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x903 = __tmp__._0;
            _x904 = __tmp__._1;
        };
        var _x905:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x906:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x884, _x881, ((_x904 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x905 = __tmp__._0;
            _x906 = __tmp__._1;
        };
        var _x907:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x908:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x882, _x879, ((_x906 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x907 = __tmp__._0;
            _x908 = __tmp__._1;
        };
        var _x909:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x910:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x880, _x877, ((_x908 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x909 = __tmp__._0;
            _x910 = __tmp__._1;
        };
        var _x911 = ((((_x910 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x878 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x912:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x913:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x858, _x893, (0i64 : stdgo.GoUInt64));
            _x912 = __tmp__._0;
            _x913 = __tmp__._1;
        };
        var _x914:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x915:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x860, _x895, ((_x913 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x914 = __tmp__._0;
            _x915 = __tmp__._1;
        };
        var _x916:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x917:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x862, _x897, ((_x915 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x916 = __tmp__._0;
            _x917 = __tmp__._1;
        };
        var _x918:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x919:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x864, _x899, ((_x917 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x918 = __tmp__._0;
            _x919 = __tmp__._1;
        };
        var _x920:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x921:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x866, _x901, ((_x919 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x920 = __tmp__._0;
            _x921 = __tmp__._1;
        };
        var _x922:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x923:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x868, _x903, ((_x921 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x922 = __tmp__._0;
            _x923 = __tmp__._1;
        };
        var _x924:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x925:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x870, _x905, ((_x923 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x924 = __tmp__._0;
            _x925 = __tmp__._1;
        };
        var _x926:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x927:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x872, _x907, ((_x925 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x926 = __tmp__._0;
            _x927 = __tmp__._1;
        };
        var _x928:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x929:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x874, _x909, ((_x927 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x928 = __tmp__._0;
            _x929 = __tmp__._1;
        };
        var _x930:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x931:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x876, _x911, ((_x929 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x930 = __tmp__._0;
            _x931 = __tmp__._1;
        };
        var _x932:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x933:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (511i64 : stdgo.GoUInt64));
            _x933 = __tmp__._0;
            _x932 = __tmp__._1;
        };
        var _x934:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x935:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x935 = __tmp__._0;
            _x934 = __tmp__._1;
        };
        var _x936:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x937:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x937 = __tmp__._0;
            _x936 = __tmp__._1;
        };
        var _x938:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x939:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x939 = __tmp__._0;
            _x938 = __tmp__._1;
        };
        var _x940:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x941:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x941 = __tmp__._0;
            _x940 = __tmp__._1;
        };
        var _x942:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x943:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x943 = __tmp__._0;
            _x942 = __tmp__._1;
        };
        var _x944:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x945:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x945 = __tmp__._0;
            _x944 = __tmp__._1;
        };
        var _x946:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x947:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x947 = __tmp__._0;
            _x946 = __tmp__._1;
        };
        var _x948:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x949:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x949 = __tmp__._0;
            _x948 = __tmp__._1;
        };
        var _x950:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x951:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x949, _x946, (0i64 : stdgo.GoUInt64));
            _x950 = __tmp__._0;
            _x951 = __tmp__._1;
        };
        var _x952:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x953:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x947, _x944, ((_x951 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x952 = __tmp__._0;
            _x953 = __tmp__._1;
        };
        var _x954:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x955:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x945, _x942, ((_x953 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x954 = __tmp__._0;
            _x955 = __tmp__._1;
        };
        var _x956:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x957:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x943, _x940, ((_x955 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x956 = __tmp__._0;
            _x957 = __tmp__._1;
        };
        var _x958:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x959:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x941, _x938, ((_x957 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x958 = __tmp__._0;
            _x959 = __tmp__._1;
        };
        var _x960:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x961:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x939, _x936, ((_x959 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x960 = __tmp__._0;
            _x961 = __tmp__._1;
        };
        var _x962:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x963:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x937, _x934, ((_x961 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x962 = __tmp__._0;
            _x963 = __tmp__._1;
        };
        var _x964:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x965:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x935, _x932, ((_x963 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x964 = __tmp__._0;
            _x965 = __tmp__._1;
        };
        var _x966 = ((((_x965 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + _x933 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x968:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x912, _x948, (0i64 : stdgo.GoUInt64));
            _x968 = __tmp__._1;
        };
        var _x969:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x970:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x914, _x950, ((_x968 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x969 = __tmp__._0;
            _x970 = __tmp__._1;
        };
        var _x971:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x972:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x916, _x952, ((_x970 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x971 = __tmp__._0;
            _x972 = __tmp__._1;
        };
        var _x973:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x974:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x918, _x954, ((_x972 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x973 = __tmp__._0;
            _x974 = __tmp__._1;
        };
        var _x975:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x976:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x920, _x956, ((_x974 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x975 = __tmp__._0;
            _x976 = __tmp__._1;
        };
        var _x977:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x978:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x922, _x958, ((_x976 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x977 = __tmp__._0;
            _x978 = __tmp__._1;
        };
        var _x979:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x980:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x924, _x960, ((_x978 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x979 = __tmp__._0;
            _x980 = __tmp__._1;
        };
        var _x981:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x982:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x926, _x962, ((_x980 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x981 = __tmp__._0;
            _x982 = __tmp__._1;
        };
        var _x983:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x984:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x928, _x964, ((_x982 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x983 = __tmp__._0;
            _x984 = __tmp__._1;
        };
        var _x985:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x986:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x930, _x966, ((_x984 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x985 = __tmp__._0;
            _x986 = __tmp__._1;
        };
        var _x987 = ((((_x986 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x931 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x988:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x989:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x969, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x988 = __tmp__._0;
            _x989 = __tmp__._1;
        };
        var _x990:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x991:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x971, (-1i64 : stdgo.GoUInt64), ((_x989 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x990 = __tmp__._0;
            _x991 = __tmp__._1;
        };
        var _x992:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x993:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x973, (-1i64 : stdgo.GoUInt64), ((_x991 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x992 = __tmp__._0;
            _x993 = __tmp__._1;
        };
        var _x994:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x995:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x975, (-1i64 : stdgo.GoUInt64), ((_x993 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x994 = __tmp__._0;
            _x995 = __tmp__._1;
        };
        var _x996:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x997:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x977, (-1i64 : stdgo.GoUInt64), ((_x995 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x996 = __tmp__._0;
            _x997 = __tmp__._1;
        };
        var _x998:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x999:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x979, (-1i64 : stdgo.GoUInt64), ((_x997 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x998 = __tmp__._0;
            _x999 = __tmp__._1;
        };
        var _x1000:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1001:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x981, (-1i64 : stdgo.GoUInt64), ((_x999 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1000 = __tmp__._0;
            _x1001 = __tmp__._1;
        };
        var _x1002:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1003:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x983, (-1i64 : stdgo.GoUInt64), ((_x1001 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1002 = __tmp__._0;
            _x1003 = __tmp__._1;
        };
        var _x1004:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1005:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x985, (511i64 : stdgo.GoUInt64), ((_x1003 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1004 = __tmp__._0;
            _x1005 = __tmp__._1;
        };
        var _x1007:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x987, (0i64 : stdgo.GoUInt64), ((_x1005 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1007 = __tmp__._1;
        };
        var _x1008:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1008), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x988, _x969);
        var _x1009:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1009), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x990, _x971);
        var _x1010:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1010), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x992, _x973);
        var _x1011:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1011), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x994, _x975);
        var _x1012:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1012), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x996, _x977);
        var _x1013:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1013), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x998, _x979);
        var _x1014:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1014), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x1000, _x981);
        var _x1015:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1015), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x1002, _x983);
        var _x1016:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p521CmovznzU64._p521CmovznzU64(stdgo.Go.pointer(_x1016), (_x1007 : _internal.crypto.internal.nistec.fiat.Fiat_T_p521Uint1.T_p521Uint1), _x1004, _x985);
        _out1[(0 : stdgo.GoInt)] = _x1008;
        _out1[(1 : stdgo.GoInt)] = _x1009;
        _out1[(2 : stdgo.GoInt)] = _x1010;
        _out1[(3 : stdgo.GoInt)] = _x1011;
        _out1[(4 : stdgo.GoInt)] = _x1012;
        _out1[(5 : stdgo.GoInt)] = _x1013;
        _out1[(6 : stdgo.GoInt)] = _x1014;
        _out1[(7 : stdgo.GoInt)] = _x1015;
        _out1[(8 : stdgo.GoInt)] = _x1016;
    }
