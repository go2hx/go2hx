package stdgo._internal.crypto.internal.edwards25519;
function _fiatScalarMul(_out1:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>, _arg2:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(3 : stdgo.GoInt)]);
            _x6 = @:tmpset0 __tmp__._0;
            _x5 = @:tmpset0 __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(2 : stdgo.GoInt)]);
            _x8 = @:tmpset0 __tmp__._0;
            _x7 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(1 : stdgo.GoInt)]);
            _x10 = @:tmpset0 __tmp__._0;
            _x9 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(0 : stdgo.GoInt)]);
            _x12 = @:tmpset0 __tmp__._0;
            _x11 = @:tmpset0 __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _x9, (0i64 : stdgo.GoUInt64));
            _x13 = @:tmpset0 __tmp__._0;
            _x14 = @:tmpset0 __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x14 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x8, _x5, ((_x16 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x19 = ((((_x18 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x6 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x20 = @:tmpset0 __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x20, (1152921504606846976i64 : stdgo.GoUInt64));
            _x23 = @:tmpset0 __tmp__._0;
            _x22 = @:tmpset0 __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x20, (1503914060200516822i64 : stdgo.GoUInt64));
            _x25 = @:tmpset0 __tmp__._0;
            _x24 = @:tmpset0 __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x20, (6346243789798364141i64 : stdgo.GoUInt64));
            _x27 = @:tmpset0 __tmp__._0;
            _x26 = @:tmpset0 __tmp__._1;
        };
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x27, _x24, (0i64 : stdgo.GoUInt64));
            _x28 = @:tmpset0 __tmp__._0;
            _x29 = @:tmpset0 __tmp__._1;
        };
        var _x30 = ((((_x29 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x25 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x26, (0i64 : stdgo.GoUInt64));
            _x32 = @:tmpset0 __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x28, ((_x32 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x33 = @:tmpset0 __tmp__._0;
            _x34 = @:tmpset0 __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x30, ((_x34 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x35 = @:tmpset0 __tmp__._0;
            _x36 = @:tmpset0 __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x22, ((_x36 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x37 = @:tmpset0 __tmp__._0;
            _x38 = @:tmpset0 __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x23, ((_x38 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x39 = @:tmpset0 __tmp__._0;
            _x40 = @:tmpset0 __tmp__._1;
        };
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(3 : stdgo.GoInt)]);
            _x42 = @:tmpset0 __tmp__._0;
            _x41 = @:tmpset0 __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(2 : stdgo.GoInt)]);
            _x44 = @:tmpset0 __tmp__._0;
            _x43 = @:tmpset0 __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(1 : stdgo.GoInt)]);
            _x46 = @:tmpset0 __tmp__._0;
            _x45 = @:tmpset0 __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(0 : stdgo.GoInt)]);
            _x48 = @:tmpset0 __tmp__._0;
            _x47 = @:tmpset0 __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, _x45, (0i64 : stdgo.GoUInt64));
            _x49 = @:tmpset0 __tmp__._0;
            _x50 = @:tmpset0 __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x46, _x43, ((_x50 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x51 = @:tmpset0 __tmp__._0;
            _x52 = @:tmpset0 __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x41, ((_x52 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x53 = @:tmpset0 __tmp__._0;
            _x54 = @:tmpset0 __tmp__._1;
        };
        var _x55 = ((((_x54 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x42 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x33, _x47, (0i64 : stdgo.GoUInt64));
            _x56 = @:tmpset0 __tmp__._0;
            _x57 = @:tmpset0 __tmp__._1;
        };
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x35, _x49, ((_x57 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x58 = @:tmpset0 __tmp__._0;
            _x59 = @:tmpset0 __tmp__._1;
        };
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x37, _x51, ((_x59 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x60 = @:tmpset0 __tmp__._0;
            _x61 = @:tmpset0 __tmp__._1;
        };
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x39, _x53, ((_x61 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x62 = @:tmpset0 __tmp__._0;
            _x63 = @:tmpset0 __tmp__._1;
        };
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((_x40 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64), _x55, ((_x63 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x64 = @:tmpset0 __tmp__._0;
            _x65 = @:tmpset0 __tmp__._1;
        };
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x56, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x66 = @:tmpset0 __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x66, (1152921504606846976i64 : stdgo.GoUInt64));
            _x69 = @:tmpset0 __tmp__._0;
            _x68 = @:tmpset0 __tmp__._1;
        };
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x66, (1503914060200516822i64 : stdgo.GoUInt64));
            _x71 = @:tmpset0 __tmp__._0;
            _x70 = @:tmpset0 __tmp__._1;
        };
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x66, (6346243789798364141i64 : stdgo.GoUInt64));
            _x73 = @:tmpset0 __tmp__._0;
            _x72 = @:tmpset0 __tmp__._1;
        };
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x70, (0i64 : stdgo.GoUInt64));
            _x74 = @:tmpset0 __tmp__._0;
            _x75 = @:tmpset0 __tmp__._1;
        };
        var _x76 = ((((_x75 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x71 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x72, (0i64 : stdgo.GoUInt64));
            _x78 = @:tmpset0 __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, _x74, ((_x78 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x79 = @:tmpset0 __tmp__._0;
            _x80 = @:tmpset0 __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x76, ((_x80 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x81 = @:tmpset0 __tmp__._0;
            _x82 = @:tmpset0 __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x68, ((_x82 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x83 = @:tmpset0 __tmp__._0;
            _x84 = @:tmpset0 __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x69, ((_x84 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x85 = @:tmpset0 __tmp__._0;
            _x86 = @:tmpset0 __tmp__._1;
        };
        var _x87 = ((((_x86 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((_x65 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(3 : stdgo.GoInt)]);
            _x89 = @:tmpset0 __tmp__._0;
            _x88 = @:tmpset0 __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(2 : stdgo.GoInt)]);
            _x91 = @:tmpset0 __tmp__._0;
            _x90 = @:tmpset0 __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(1 : stdgo.GoInt)]);
            _x93 = @:tmpset0 __tmp__._0;
            _x92 = @:tmpset0 __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(0 : stdgo.GoInt)]);
            _x95 = @:tmpset0 __tmp__._0;
            _x94 = @:tmpset0 __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x95, _x92, (0i64 : stdgo.GoUInt64));
            _x96 = @:tmpset0 __tmp__._0;
            _x97 = @:tmpset0 __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x93, _x90, ((_x97 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x98 = @:tmpset0 __tmp__._0;
            _x99 = @:tmpset0 __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x91, _x88, ((_x99 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x100 = @:tmpset0 __tmp__._0;
            _x101 = @:tmpset0 __tmp__._1;
        };
        var _x102 = ((((_x101 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x89 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x79, _x94, (0i64 : stdgo.GoUInt64));
            _x103 = @:tmpset0 __tmp__._0;
            _x104 = @:tmpset0 __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x81, _x96, ((_x104 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x105 = @:tmpset0 __tmp__._0;
            _x106 = @:tmpset0 __tmp__._1;
        };
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x83, _x98, ((_x106 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x107 = @:tmpset0 __tmp__._0;
            _x108 = @:tmpset0 __tmp__._1;
        };
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x85, _x100, ((_x108 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x109 = @:tmpset0 __tmp__._0;
            _x110 = @:tmpset0 __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x87, _x102, ((_x110 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x111 = @:tmpset0 __tmp__._0;
            _x112 = @:tmpset0 __tmp__._1;
        };
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x103, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x113 = @:tmpset0 __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x113, (1152921504606846976i64 : stdgo.GoUInt64));
            _x116 = @:tmpset0 __tmp__._0;
            _x115 = @:tmpset0 __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x113, (1503914060200516822i64 : stdgo.GoUInt64));
            _x118 = @:tmpset0 __tmp__._0;
            _x117 = @:tmpset0 __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x113, (6346243789798364141i64 : stdgo.GoUInt64));
            _x120 = @:tmpset0 __tmp__._0;
            _x119 = @:tmpset0 __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x120, _x117, (0i64 : stdgo.GoUInt64));
            _x121 = @:tmpset0 __tmp__._0;
            _x122 = @:tmpset0 __tmp__._1;
        };
        var _x123 = ((((_x122 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x118 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x103, _x119, (0i64 : stdgo.GoUInt64));
            _x125 = @:tmpset0 __tmp__._1;
        };
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x105, _x121, ((_x125 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x126 = @:tmpset0 __tmp__._0;
            _x127 = @:tmpset0 __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x107, _x123, ((_x127 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x128 = @:tmpset0 __tmp__._0;
            _x129 = @:tmpset0 __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x115, ((_x129 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x130 = @:tmpset0 __tmp__._0;
            _x131 = @:tmpset0 __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x116, ((_x131 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x132 = @:tmpset0 __tmp__._0;
            _x133 = @:tmpset0 __tmp__._1;
        };
        var _x134 = ((((_x133 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((_x112 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(3 : stdgo.GoInt)]);
            _x136 = @:tmpset0 __tmp__._0;
            _x135 = @:tmpset0 __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(2 : stdgo.GoInt)]);
            _x138 = @:tmpset0 __tmp__._0;
            _x137 = @:tmpset0 __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(1 : stdgo.GoInt)]);
            _x140 = @:tmpset0 __tmp__._0;
            _x139 = @:tmpset0 __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(0 : stdgo.GoInt)]);
            _x142 = @:tmpset0 __tmp__._0;
            _x141 = @:tmpset0 __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x142, _x139, (0i64 : stdgo.GoUInt64));
            _x143 = @:tmpset0 __tmp__._0;
            _x144 = @:tmpset0 __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x140, _x137, ((_x144 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x145 = @:tmpset0 __tmp__._0;
            _x146 = @:tmpset0 __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x138, _x135, ((_x146 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x147 = @:tmpset0 __tmp__._0;
            _x148 = @:tmpset0 __tmp__._1;
        };
        var _x149 = ((((_x148 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x136 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x126, _x141, (0i64 : stdgo.GoUInt64));
            _x150 = @:tmpset0 __tmp__._0;
            _x151 = @:tmpset0 __tmp__._1;
        };
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x128, _x143, ((_x151 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x152 = @:tmpset0 __tmp__._0;
            _x153 = @:tmpset0 __tmp__._1;
        };
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x130, _x145, ((_x153 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x154 = @:tmpset0 __tmp__._0;
            _x155 = @:tmpset0 __tmp__._1;
        };
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x132, _x147, ((_x155 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x156 = @:tmpset0 __tmp__._0;
            _x157 = @:tmpset0 __tmp__._1;
        };
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x134, _x149, ((_x157 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x158 = @:tmpset0 __tmp__._0;
            _x159 = @:tmpset0 __tmp__._1;
        };
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x150, (-3263669768735654373i64 : stdgo.GoUInt64));
            _x160 = @:tmpset0 __tmp__._1;
        };
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x160, (1152921504606846976i64 : stdgo.GoUInt64));
            _x163 = @:tmpset0 __tmp__._0;
            _x162 = @:tmpset0 __tmp__._1;
        };
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x160, (1503914060200516822i64 : stdgo.GoUInt64));
            _x165 = @:tmpset0 __tmp__._0;
            _x164 = @:tmpset0 __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x160, (6346243789798364141i64 : stdgo.GoUInt64));
            _x167 = @:tmpset0 __tmp__._0;
            _x166 = @:tmpset0 __tmp__._1;
        };
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x167, _x164, (0i64 : stdgo.GoUInt64));
            _x168 = @:tmpset0 __tmp__._0;
            _x169 = @:tmpset0 __tmp__._1;
        };
        var _x170 = ((((_x169 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + _x165 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x150, _x166, (0i64 : stdgo.GoUInt64));
            _x172 = @:tmpset0 __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x152, _x168, ((_x172 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x173 = @:tmpset0 __tmp__._0;
            _x174 = @:tmpset0 __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x154, _x170, ((_x174 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x175 = @:tmpset0 __tmp__._0;
            _x176 = @:tmpset0 __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x156, _x162, ((_x176 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x177 = @:tmpset0 __tmp__._0;
            _x178 = @:tmpset0 __tmp__._1;
        };
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x158, _x163, ((_x178 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x179 = @:tmpset0 __tmp__._0;
            _x180 = @:tmpset0 __tmp__._1;
        };
        var _x181 = ((((_x180 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) + ((_x159 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x173, (6346243789798364141i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x182 = @:tmpset0 __tmp__._0;
            _x183 = @:tmpset0 __tmp__._1;
        };
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x175, (1503914060200516822i64 : stdgo.GoUInt64), ((_x183 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x184 = @:tmpset0 __tmp__._0;
            _x185 = @:tmpset0 __tmp__._1;
        };
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x177, (0i64 : stdgo.GoUInt64), ((_x185 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x186 = @:tmpset0 __tmp__._0;
            _x187 = @:tmpset0 __tmp__._1;
        };
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x179, (1152921504606846976i64 : stdgo.GoUInt64), ((_x187 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x188 = @:tmpset0 __tmp__._0;
            _x189 = @:tmpset0 __tmp__._1;
        };
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x181, (0i64 : stdgo.GoUInt64), ((_x189 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1) : stdgo.GoUInt64));
            _x191 = @:tmpset0 __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x192__pointer__ = stdgo.Go.pointer(_x192);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarcmovznzu64._fiatScalarCmovznzU64(_x192__pointer__, (_x191 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1), _x182, _x173);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193__pointer__ = stdgo.Go.pointer(_x193);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarcmovznzu64._fiatScalarCmovznzU64(_x193__pointer__, (_x191 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1), _x184, _x175);
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x194__pointer__ = stdgo.Go.pointer(_x194);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarcmovznzu64._fiatScalarCmovznzU64(_x194__pointer__, (_x191 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1), _x186, _x177);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195__pointer__ = stdgo.Go.pointer(_x195);
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__fiatscalarcmovznzu64._fiatScalarCmovznzU64(_x195__pointer__, (_x191 : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalaruint1.T_fiatScalarUint1), _x188, _x179);
        _out1[(0 : stdgo.GoInt)] = _x192;
        _out1[(1 : stdgo.GoInt)] = _x193;
        _out1[(2 : stdgo.GoInt)] = _x194;
        _out1[(3 : stdgo.GoInt)] = _x195;
    }
