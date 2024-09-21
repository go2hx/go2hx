package _internal.crypto.internal.nistec.fiat;
function _p384FromMontgomery(_out1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384NonMontgomeryDomainFieldElement.T_p384NonMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_T_p384MontgomeryDomainFieldElement.T_p384MontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (4294967297i64 : stdgo.GoUInt64));
            _x2 = __tmp__._1;
        };
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-1i64 : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-1i64 : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-1i64 : stdgo.GoUInt64));
            _x9 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-2i64 : stdgo.GoUInt64));
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-4294967296i64 : stdgo.GoUInt64));
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (4294967295i64 : stdgo.GoUInt64));
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x12, (0i64 : stdgo.GoUInt64));
            _x16 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x10, ((_x17 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x18 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x8, ((_x19 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x9, _x6, ((_x21 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x7, _x4, ((_x23 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x24 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x14, (0i64 : stdgo.GoUInt64));
            _x27 = __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x16, ((_x27 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x18, ((_x29 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x20, ((_x31 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x22, ((_x33 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x24, ((_x35 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), ((((_x25 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x5 : stdgo.GoUInt64)), ((_x37 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, _arg1[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, (0i64 : stdgo.GoUInt64), ((_x41 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, (0i64 : stdgo.GoUInt64), ((_x43 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, (0i64 : stdgo.GoUInt64), ((_x45 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, (0i64 : stdgo.GoUInt64), ((_x47 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, (0i64 : stdgo.GoUInt64), ((_x49 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x40, (4294967297i64 : stdgo.GoUInt64));
            _x52 = __tmp__._1;
        };
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-1i64 : stdgo.GoUInt64));
            _x55 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-1i64 : stdgo.GoUInt64));
            _x57 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-1i64 : stdgo.GoUInt64));
            _x59 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-2i64 : stdgo.GoUInt64));
            _x61 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (-4294967296i64 : stdgo.GoUInt64));
            _x63 = __tmp__._0;
            _x62 = __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x52, (4294967295i64 : stdgo.GoUInt64));
            _x65 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x65, _x62, (0i64 : stdgo.GoUInt64));
            _x66 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x63, _x60, ((_x67 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x68 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x61, _x58, ((_x69 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x70 = __tmp__._0;
            _x71 = __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x59, _x56, ((_x71 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x72 = __tmp__._0;
            _x73 = __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, _x54, ((_x73 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x74 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, _x64, (0i64 : stdgo.GoUInt64));
            _x77 = __tmp__._1;
        };
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x66, ((_x77 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x78 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x68, ((_x79 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x80 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x46, _x70, ((_x81 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x82 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, _x72, ((_x83 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x84 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, _x74, ((_x85 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x86 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x51 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x39 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x75 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x55 : stdgo.GoUInt64)), ((_x87 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x78, _arg1[(2 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x80, (0i64 : stdgo.GoUInt64), ((_x91 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, (0i64 : stdgo.GoUInt64), ((_x93 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, (0i64 : stdgo.GoUInt64), ((_x95 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x86, (0i64 : stdgo.GoUInt64), ((_x97 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x88, (0i64 : stdgo.GoUInt64), ((_x99 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x90, (4294967297i64 : stdgo.GoUInt64));
            _x102 = __tmp__._1;
        };
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-1i64 : stdgo.GoUInt64));
            _x105 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-1i64 : stdgo.GoUInt64));
            _x107 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-1i64 : stdgo.GoUInt64));
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-2i64 : stdgo.GoUInt64));
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (-4294967296i64 : stdgo.GoUInt64));
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x102, (4294967295i64 : stdgo.GoUInt64));
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x112, (0i64 : stdgo.GoUInt64));
            _x116 = __tmp__._0;
            _x117 = __tmp__._1;
        };
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x110, ((_x117 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x108, ((_x119 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x106, ((_x121 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x107, _x104, ((_x123 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x90, _x114, (0i64 : stdgo.GoUInt64));
            _x127 = __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x92, _x116, ((_x127 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x94, _x118, ((_x129 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x96, _x120, ((_x131 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x98, _x122, ((_x133 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x134 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x100, _x124, ((_x135 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x136 = __tmp__._0;
            _x137 = __tmp__._1;
        };
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x101 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x89 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x125 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x105 : stdgo.GoUInt64)), ((_x137 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x138 = __tmp__._0;
            _x139 = __tmp__._1;
        };
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _arg1[(3 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x140 = __tmp__._0;
            _x141 = __tmp__._1;
        };
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, (0i64 : stdgo.GoUInt64), ((_x141 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x142 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, (0i64 : stdgo.GoUInt64), ((_x143 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x144 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, (0i64 : stdgo.GoUInt64), ((_x145 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x146 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x136, (0i64 : stdgo.GoUInt64), ((_x147 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x148 = __tmp__._0;
            _x149 = __tmp__._1;
        };
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x138, (0i64 : stdgo.GoUInt64), ((_x149 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x150 = __tmp__._0;
            _x151 = __tmp__._1;
        };
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x140, (4294967297i64 : stdgo.GoUInt64));
            _x152 = __tmp__._1;
        };
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-1i64 : stdgo.GoUInt64));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-1i64 : stdgo.GoUInt64));
            _x157 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-1i64 : stdgo.GoUInt64));
            _x159 = __tmp__._0;
            _x158 = __tmp__._1;
        };
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-2i64 : stdgo.GoUInt64));
            _x161 = __tmp__._0;
            _x160 = __tmp__._1;
        };
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (-4294967296i64 : stdgo.GoUInt64));
            _x163 = __tmp__._0;
            _x162 = __tmp__._1;
        };
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x152, (4294967295i64 : stdgo.GoUInt64));
            _x165 = __tmp__._0;
            _x164 = __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x165, _x162, (0i64 : stdgo.GoUInt64));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x163, _x160, ((_x167 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x168 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x161, _x158, ((_x169 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x170 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x159, _x156, ((_x171 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x172 = __tmp__._0;
            _x173 = __tmp__._1;
        };
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x157, _x154, ((_x173 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x140, _x164, (0i64 : stdgo.GoUInt64));
            _x177 = __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x142, _x166, ((_x177 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x178 = __tmp__._0;
            _x179 = __tmp__._1;
        };
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x144, _x168, ((_x179 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x180 = __tmp__._0;
            _x181 = __tmp__._1;
        };
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x146, _x170, ((_x181 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x182 = __tmp__._0;
            _x183 = __tmp__._1;
        };
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x148, _x172, ((_x183 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x184 = __tmp__._0;
            _x185 = __tmp__._1;
        };
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x150, _x174, ((_x185 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x186 = __tmp__._0;
            _x187 = __tmp__._1;
        };
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x151 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x139 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x175 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x155 : stdgo.GoUInt64)), ((_x187 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x188 = __tmp__._0;
            _x189 = __tmp__._1;
        };
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x178, _arg1[(4 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x190 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x180, (0i64 : stdgo.GoUInt64), ((_x191 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x182, (0i64 : stdgo.GoUInt64), ((_x193 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x184, (0i64 : stdgo.GoUInt64), ((_x195 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x186, (0i64 : stdgo.GoUInt64), ((_x197 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x188, (0i64 : stdgo.GoUInt64), ((_x199 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x190, (4294967297i64 : stdgo.GoUInt64));
            _x202 = __tmp__._1;
        };
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-1i64 : stdgo.GoUInt64));
            _x205 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-1i64 : stdgo.GoUInt64));
            _x207 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-1i64 : stdgo.GoUInt64));
            _x209 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-2i64 : stdgo.GoUInt64));
            _x211 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (-4294967296i64 : stdgo.GoUInt64));
            _x213 = __tmp__._0;
            _x212 = __tmp__._1;
        };
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x202, (4294967295i64 : stdgo.GoUInt64));
            _x215 = __tmp__._0;
            _x214 = __tmp__._1;
        };
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x215, _x212, (0i64 : stdgo.GoUInt64));
            _x216 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x213, _x210, ((_x217 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x218 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x211, _x208, ((_x219 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x220 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x206, ((_x221 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x222 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x207, _x204, ((_x223 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x224 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x190, _x214, (0i64 : stdgo.GoUInt64));
            _x227 = __tmp__._1;
        };
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x192, _x216, ((_x227 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x228 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x218, ((_x229 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x230 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x220, ((_x231 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x232 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x222, ((_x233 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x234 = __tmp__._0;
            _x235 = __tmp__._1;
        };
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x224, ((_x235 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x236 = __tmp__._0;
            _x237 = __tmp__._1;
        };
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x201 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x189 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x225 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x205 : stdgo.GoUInt64)), ((_x237 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x238 = __tmp__._0;
            _x239 = __tmp__._1;
        };
        var _x240:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x228, _arg1[(5 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x240 = __tmp__._0;
            _x241 = __tmp__._1;
        };
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x230, (0i64 : stdgo.GoUInt64), ((_x241 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x242 = __tmp__._0;
            _x243 = __tmp__._1;
        };
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x245:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x232, (0i64 : stdgo.GoUInt64), ((_x243 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x244 = __tmp__._0;
            _x245 = __tmp__._1;
        };
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x234, (0i64 : stdgo.GoUInt64), ((_x245 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x236, (0i64 : stdgo.GoUInt64), ((_x247 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x238, (0i64 : stdgo.GoUInt64), ((_x249 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x240, (4294967297i64 : stdgo.GoUInt64));
            _x252 = __tmp__._1;
        };
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-1i64 : stdgo.GoUInt64));
            _x255 = __tmp__._0;
            _x254 = __tmp__._1;
        };
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-1i64 : stdgo.GoUInt64));
            _x257 = __tmp__._0;
            _x256 = __tmp__._1;
        };
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-1i64 : stdgo.GoUInt64));
            _x259 = __tmp__._0;
            _x258 = __tmp__._1;
        };
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-2i64 : stdgo.GoUInt64));
            _x261 = __tmp__._0;
            _x260 = __tmp__._1;
        };
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (-4294967296i64 : stdgo.GoUInt64));
            _x263 = __tmp__._0;
            _x262 = __tmp__._1;
        };
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x252, (4294967295i64 : stdgo.GoUInt64));
            _x265 = __tmp__._0;
            _x264 = __tmp__._1;
        };
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x265, _x262, (0i64 : stdgo.GoUInt64));
            _x266 = __tmp__._0;
            _x267 = __tmp__._1;
        };
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x263, _x260, ((_x267 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x268 = __tmp__._0;
            _x269 = __tmp__._1;
        };
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x261, _x258, ((_x269 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x270 = __tmp__._0;
            _x271 = __tmp__._1;
        };
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x259, _x256, ((_x271 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x272 = __tmp__._0;
            _x273 = __tmp__._1;
        };
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x257, _x254, ((_x273 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x274 = __tmp__._0;
            _x275 = __tmp__._1;
        };
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x240, _x264, (0i64 : stdgo.GoUInt64));
            _x277 = __tmp__._1;
        };
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x242, _x266, ((_x277 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x278 = __tmp__._0;
            _x279 = __tmp__._1;
        };
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x244, _x268, ((_x279 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x280 = __tmp__._0;
            _x281 = __tmp__._1;
        };
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x246, _x270, ((_x281 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x282 = __tmp__._0;
            _x283 = __tmp__._1;
        };
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x248, _x272, ((_x283 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x284 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x250, _x274, ((_x285 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x286 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x251 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + ((_x239 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)), ((((_x275 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64) + _x255 : stdgo.GoUInt64)), ((_x287 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x288 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x278, (4294967295i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x290 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x280, (-4294967296i64 : stdgo.GoUInt64), ((_x291 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x282, (-2i64 : stdgo.GoUInt64), ((_x293 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x284, (-1i64 : stdgo.GoUInt64), ((_x295 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x286, (-1i64 : stdgo.GoUInt64), ((_x297 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x288, (-1i64 : stdgo.GoUInt64), ((_x299 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x300 = __tmp__._0;
            _x301 = __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x289 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x301 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x303 = __tmp__._1;
        };
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x304), (_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x290, _x278);
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x305), (_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x292, _x280);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x306), (_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x294, _x282);
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x307), (_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x296, _x284);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x308), (_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x298, _x286);
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.nistec.fiat.Fiat__p384CmovznzU64._p384CmovznzU64(stdgo.Go.pointer(_x309), (_x303 : _internal.crypto.internal.nistec.fiat.Fiat_T_p384Uint1.T_p384Uint1), _x300, _x288);
        _out1[(0 : stdgo.GoInt)] = _x304;
        _out1[(1 : stdgo.GoInt)] = _x305;
        _out1[(2 : stdgo.GoInt)] = _x306;
        _out1[(3 : stdgo.GoInt)] = _x307;
        _out1[(4 : stdgo.GoInt)] = _x308;
        _out1[(5 : stdgo.GoInt)] = _x309;
    }
