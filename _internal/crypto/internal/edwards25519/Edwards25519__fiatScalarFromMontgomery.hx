package _internal.crypto.internal.edwards25519;
function _fiatScalarFromMontgomery(_out1:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarNonMontgomeryDomainFieldElement.T_fiatScalarNonMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarMontgomeryDomainFieldElement.T_fiatScalarMontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x2 = __tmp__._1;
        };
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (1152921504606846976i64 : stdgo.GoUInt64));
            _x5 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (1503914060200516822i64 : stdgo.GoUInt64));
            _x7 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (6346243789798364141i64 : stdgo.GoUInt64));
            _x9 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x9, _x6, (0i64 : stdgo.GoUInt64));
            _x10 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x8, (0i64 : stdgo.GoUInt64));
            _x13 = __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x10, ((_x13 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x14 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x14, _arg1[(1 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x16 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x16, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x18 = __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x18, (1152921504606846976i64 : stdgo.GoUInt64));
            _x21 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x18, (1503914060200516822i64 : stdgo.GoUInt64));
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x18, (6346243789798364141i64 : stdgo.GoUInt64));
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
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x16, _x24, (0i64 : stdgo.GoUInt64));
            _x29 = __tmp__._1;
        };
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x17 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((((_x15 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((((_x11 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x7 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x26, ((_x29 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x4, ((((_x27 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x23 : stdgo.GoUInt64)), ((_x31 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, _x20, ((_x33 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, _arg1[(2 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, (0i64 : stdgo.GoUInt64), ((_x37 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, (0i64 : stdgo.GoUInt64), ((_x39 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x36, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x42 = __tmp__._1;
        };
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x42, (1152921504606846976i64 : stdgo.GoUInt64));
            _x45 = __tmp__._0;
            _x44 = __tmp__._1;
        };
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x42, (1503914060200516822i64 : stdgo.GoUInt64));
            _x47 = __tmp__._0;
            _x46 = __tmp__._1;
        };
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x42, (6346243789798364141i64 : stdgo.GoUInt64));
            _x49 = __tmp__._0;
            _x48 = __tmp__._1;
        };
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x49, _x46, (0i64 : stdgo.GoUInt64));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, _x48, (0i64 : stdgo.GoUInt64));
            _x53 = __tmp__._1;
        };
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, _x50, ((_x53 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x54 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, ((((_x51 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x47 : stdgo.GoUInt64)), ((_x55 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x56 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x41 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((((_x35 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x21 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x44, ((_x57 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x58 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _arg1[(3 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x60 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, (0i64 : stdgo.GoUInt64), ((_x61 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, (0i64 : stdgo.GoUInt64), ((_x63 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x64 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x60, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x66 = __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x66, (1152921504606846976i64 : stdgo.GoUInt64));
            _x69 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x66, (1503914060200516822i64 : stdgo.GoUInt64));
            _x71 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x66, (6346243789798364141i64 : stdgo.GoUInt64));
            _x73 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x70, (0i64 : stdgo.GoUInt64));
            _x74 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x72, (0i64 : stdgo.GoUInt64));
            _x77 = __tmp__._1;
        };
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x74, ((_x77 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x78 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, ((((_x75 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x71 : stdgo.GoUInt64)), ((_x79 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x80 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x65 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((((_x59 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x45 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x68, ((_x81 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x82 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x84 = ((((_x83 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x69 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x78, (6346243789798364141i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x80, (1503914060200516822i64 : stdgo.GoUInt64), ((_x86 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x82, (0i64 : stdgo.GoUInt64), ((_x88 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x84, (1152921504606846976i64 : stdgo.GoUInt64), ((_x90 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x91 = __tmp__._0;
            _x92 = __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x92 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x94 = __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarCmovznzU64._fiatScalarCmovznzU64(stdgo.Go.pointer(_x95), (_x94 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1), _x85, _x78);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarCmovznzU64._fiatScalarCmovznzU64(stdgo.Go.pointer(_x96), (_x94 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1), _x87, _x80);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarCmovznzU64._fiatScalarCmovznzU64(stdgo.Go.pointer(_x97), (_x94 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1), _x89, _x82);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        _internal.crypto.internal.edwards25519.Edwards25519__fiatScalarCmovznzU64._fiatScalarCmovznzU64(stdgo.Go.pointer(_x98), (_x94 : _internal.crypto.internal.edwards25519.Edwards25519_T_fiatScalarUint1.T_fiatScalarUint1), _x91, _x84);
        _out1[(0 : stdgo.GoInt)] = _x95;
        _out1[(1 : stdgo.GoInt)] = _x96;
        _out1[(2 : stdgo.GoInt)] = _x97;
        _out1[(3 : stdgo.GoInt)] = _x98;
    }
