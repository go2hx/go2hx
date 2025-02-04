package stdgo._internal.crypto.internal.nistec.fiat;
function _p521Mul(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>):Void {
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
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(8 : stdgo.GoInt)]);
            _x11 = @:tmpset0 __tmp__._0;
            _x10 = @:tmpset0 __tmp__._1;
        };
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(7 : stdgo.GoInt)]);
            _x13 = @:tmpset0 __tmp__._0;
            _x12 = @:tmpset0 __tmp__._1;
        };
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(6 : stdgo.GoInt)]);
            _x15 = @:tmpset0 __tmp__._0;
            _x14 = @:tmpset0 __tmp__._1;
        };
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(5 : stdgo.GoInt)]);
            _x17 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(4 : stdgo.GoInt)]);
            _x19 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(3 : stdgo.GoInt)]);
            _x21 = @:tmpset0 __tmp__._0;
            _x20 = @:tmpset0 __tmp__._1;
        };
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(2 : stdgo.GoInt)]);
            _x23 = @:tmpset0 __tmp__._0;
            _x22 = @:tmpset0 __tmp__._1;
        };
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(1 : stdgo.GoInt)]);
            _x25 = @:tmpset0 __tmp__._0;
            _x24 = @:tmpset0 __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x9, _arg2[(0 : stdgo.GoInt)]);
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
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x25, _x22, ((_x29 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x30 = @:tmpset0 __tmp__._0;
            _x31 = @:tmpset0 __tmp__._1;
        };
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x23, _x20, ((_x31 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x32 = @:tmpset0 __tmp__._0;
            _x33 = @:tmpset0 __tmp__._1;
        };
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x21, _x18, ((_x33 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x34 = @:tmpset0 __tmp__._0;
            _x35 = @:tmpset0 __tmp__._1;
        };
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x19, _x16, ((_x35 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x36 = @:tmpset0 __tmp__._0;
            _x37 = @:tmpset0 __tmp__._1;
        };
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x14, ((_x37 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x38 = @:tmpset0 __tmp__._0;
            _x39 = @:tmpset0 __tmp__._1;
        };
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, _x12, ((_x39 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x40 = @:tmpset0 __tmp__._0;
            _x41 = @:tmpset0 __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x10, ((_x41 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x42 = @:tmpset0 __tmp__._0;
            _x43 = @:tmpset0 __tmp__._1;
        };
        var _x44 = ((((_x43 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x11 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (511i64 : stdgo.GoUInt64));
            _x46 = @:tmpset0 __tmp__._0;
            _x45 = @:tmpset0 __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x48 = @:tmpset0 __tmp__._0;
            _x47 = @:tmpset0 __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x50 = @:tmpset0 __tmp__._0;
            _x49 = @:tmpset0 __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x52 = @:tmpset0 __tmp__._0;
            _x51 = @:tmpset0 __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x54 = @:tmpset0 __tmp__._0;
            _x53 = @:tmpset0 __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x56 = @:tmpset0 __tmp__._0;
            _x55 = @:tmpset0 __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x58 = @:tmpset0 __tmp__._0;
            _x57 = @:tmpset0 __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x60 = @:tmpset0 __tmp__._0;
            _x59 = @:tmpset0 __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x26, (-1i64 : stdgo.GoUInt64));
            _x62 = @:tmpset0 __tmp__._0;
            _x61 = @:tmpset0 __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x62, _x59, (0i64 : stdgo.GoUInt64));
            _x63 = @:tmpset0 __tmp__._0;
            _x64 = @:tmpset0 __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x60, _x57, ((_x64 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x65 = @:tmpset0 __tmp__._0;
            _x66 = @:tmpset0 __tmp__._1;
        };
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x58, _x55, ((_x66 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x67 = @:tmpset0 __tmp__._0;
            _x68 = @:tmpset0 __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x56, _x53, ((_x68 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x69 = @:tmpset0 __tmp__._0;
            _x70 = @:tmpset0 __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x54, _x51, ((_x70 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x71 = @:tmpset0 __tmp__._0;
            _x72 = @:tmpset0 __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x52, _x49, ((_x72 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x73 = @:tmpset0 __tmp__._0;
            _x74 = @:tmpset0 __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x50, _x47, ((_x74 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x75 = @:tmpset0 __tmp__._0;
            _x76 = @:tmpset0 __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x48, _x45, ((_x76 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x77 = @:tmpset0 __tmp__._0;
            _x78 = @:tmpset0 __tmp__._1;
        };
        var _x79 = ((((_x78 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x46 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x26, _x61, (0i64 : stdgo.GoUInt64));
            _x81 = @:tmpset0 __tmp__._1;
        };
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x28, _x63, ((_x81 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x82 = @:tmpset0 __tmp__._0;
            _x83 = @:tmpset0 __tmp__._1;
        };
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x30, _x65, ((_x83 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x84 = @:tmpset0 __tmp__._0;
            _x85 = @:tmpset0 __tmp__._1;
        };
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x32, _x67, ((_x85 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x86 = @:tmpset0 __tmp__._0;
            _x87 = @:tmpset0 __tmp__._1;
        };
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x34, _x69, ((_x87 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x88 = @:tmpset0 __tmp__._0;
            _x89 = @:tmpset0 __tmp__._1;
        };
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x36, _x71, ((_x89 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x90 = @:tmpset0 __tmp__._0;
            _x91 = @:tmpset0 __tmp__._1;
        };
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x38, _x73, ((_x91 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x92 = @:tmpset0 __tmp__._0;
            _x93 = @:tmpset0 __tmp__._1;
        };
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, _x75, ((_x93 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x94 = @:tmpset0 __tmp__._0;
            _x95 = @:tmpset0 __tmp__._1;
        };
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x77, ((_x95 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x96 = @:tmpset0 __tmp__._0;
            _x97 = @:tmpset0 __tmp__._1;
        };
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x79, ((_x97 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x98 = @:tmpset0 __tmp__._0;
            _x99 = @:tmpset0 __tmp__._1;
        };
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(8 : stdgo.GoInt)]);
            _x101 = @:tmpset0 __tmp__._0;
            _x100 = @:tmpset0 __tmp__._1;
        };
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(7 : stdgo.GoInt)]);
            _x103 = @:tmpset0 __tmp__._0;
            _x102 = @:tmpset0 __tmp__._1;
        };
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(6 : stdgo.GoInt)]);
            _x105 = @:tmpset0 __tmp__._0;
            _x104 = @:tmpset0 __tmp__._1;
        };
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(5 : stdgo.GoInt)]);
            _x107 = @:tmpset0 __tmp__._0;
            _x106 = @:tmpset0 __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(4 : stdgo.GoInt)]);
            _x109 = @:tmpset0 __tmp__._0;
            _x108 = @:tmpset0 __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(3 : stdgo.GoInt)]);
            _x111 = @:tmpset0 __tmp__._0;
            _x110 = @:tmpset0 __tmp__._1;
        };
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(2 : stdgo.GoInt)]);
            _x113 = @:tmpset0 __tmp__._0;
            _x112 = @:tmpset0 __tmp__._1;
        };
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(1 : stdgo.GoInt)]);
            _x115 = @:tmpset0 __tmp__._0;
            _x114 = @:tmpset0 __tmp__._1;
        };
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, _arg2[(0 : stdgo.GoInt)]);
            _x117 = @:tmpset0 __tmp__._0;
            _x116 = @:tmpset0 __tmp__._1;
        };
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x117, _x114, (0i64 : stdgo.GoUInt64));
            _x118 = @:tmpset0 __tmp__._0;
            _x119 = @:tmpset0 __tmp__._1;
        };
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x112, ((_x119 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x120 = @:tmpset0 __tmp__._0;
            _x121 = @:tmpset0 __tmp__._1;
        };
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x110, ((_x121 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x122 = @:tmpset0 __tmp__._0;
            _x123 = @:tmpset0 __tmp__._1;
        };
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x108, ((_x123 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x124 = @:tmpset0 __tmp__._0;
            _x125 = @:tmpset0 __tmp__._1;
        };
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x106, ((_x125 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x126 = @:tmpset0 __tmp__._0;
            _x127 = @:tmpset0 __tmp__._1;
        };
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x107, _x104, ((_x127 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x128 = @:tmpset0 __tmp__._0;
            _x129 = @:tmpset0 __tmp__._1;
        };
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x105, _x102, ((_x129 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x130 = @:tmpset0 __tmp__._0;
            _x131 = @:tmpset0 __tmp__._1;
        };
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x103, _x100, ((_x131 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x132 = @:tmpset0 __tmp__._0;
            _x133 = @:tmpset0 __tmp__._1;
        };
        var _x134 = ((((_x133 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x101 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, _x116, (0i64 : stdgo.GoUInt64));
            _x135 = @:tmpset0 __tmp__._0;
            _x136 = @:tmpset0 __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, _x118, ((_x136 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x137 = @:tmpset0 __tmp__._0;
            _x138 = @:tmpset0 __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x86, _x120, ((_x138 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x139 = @:tmpset0 __tmp__._0;
            _x140 = @:tmpset0 __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x88, _x122, ((_x140 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x141 = @:tmpset0 __tmp__._0;
            _x142 = @:tmpset0 __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x90, _x124, ((_x142 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x143 = @:tmpset0 __tmp__._0;
            _x144 = @:tmpset0 __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x92, _x126, ((_x144 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x145 = @:tmpset0 __tmp__._0;
            _x146 = @:tmpset0 __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x94, _x128, ((_x146 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x147 = @:tmpset0 __tmp__._0;
            _x148 = @:tmpset0 __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x96, _x130, ((_x148 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x149 = @:tmpset0 __tmp__._0;
            _x150 = @:tmpset0 __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x98, _x132, ((_x150 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x151 = @:tmpset0 __tmp__._0;
            _x152 = @:tmpset0 __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((_x99 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64), _x134, ((_x152 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x153 = @:tmpset0 __tmp__._0;
            _x154 = @:tmpset0 __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (511i64 : stdgo.GoUInt64));
            _x156 = @:tmpset0 __tmp__._0;
            _x155 = @:tmpset0 __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x158 = @:tmpset0 __tmp__._0;
            _x157 = @:tmpset0 __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x160 = @:tmpset0 __tmp__._0;
            _x159 = @:tmpset0 __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x162 = @:tmpset0 __tmp__._0;
            _x161 = @:tmpset0 __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x164 = @:tmpset0 __tmp__._0;
            _x163 = @:tmpset0 __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x166 = @:tmpset0 __tmp__._0;
            _x165 = @:tmpset0 __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x168 = @:tmpset0 __tmp__._0;
            _x167 = @:tmpset0 __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x170 = @:tmpset0 __tmp__._0;
            _x169 = @:tmpset0 __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x135, (-1i64 : stdgo.GoUInt64));
            _x172 = @:tmpset0 __tmp__._0;
            _x171 = @:tmpset0 __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x172, _x169, (0i64 : stdgo.GoUInt64));
            _x173 = @:tmpset0 __tmp__._0;
            _x174 = @:tmpset0 __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x170, _x167, ((_x174 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x175 = @:tmpset0 __tmp__._0;
            _x176 = @:tmpset0 __tmp__._1;
        };
        var _x177:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x168, _x165, ((_x176 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x177 = @:tmpset0 __tmp__._0;
            _x178 = @:tmpset0 __tmp__._1;
        };
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x166, _x163, ((_x178 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x179 = @:tmpset0 __tmp__._0;
            _x180 = @:tmpset0 __tmp__._1;
        };
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x164, _x161, ((_x180 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x181 = @:tmpset0 __tmp__._0;
            _x182 = @:tmpset0 __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x162, _x159, ((_x182 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x183 = @:tmpset0 __tmp__._0;
            _x184 = @:tmpset0 __tmp__._1;
        };
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x160, _x157, ((_x184 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x185 = @:tmpset0 __tmp__._0;
            _x186 = @:tmpset0 __tmp__._1;
        };
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x158, _x155, ((_x186 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x187 = @:tmpset0 __tmp__._0;
            _x188 = @:tmpset0 __tmp__._1;
        };
        var _x189 = ((((_x188 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x156 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x135, _x171, (0i64 : stdgo.GoUInt64));
            _x191 = @:tmpset0 __tmp__._1;
        };
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x137, _x173, ((_x191 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x192 = @:tmpset0 __tmp__._0;
            _x193 = @:tmpset0 __tmp__._1;
        };
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x139, _x175, ((_x193 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x194 = @:tmpset0 __tmp__._0;
            _x195 = @:tmpset0 __tmp__._1;
        };
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x141, _x177, ((_x195 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x196 = @:tmpset0 __tmp__._0;
            _x197 = @:tmpset0 __tmp__._1;
        };
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x143, _x179, ((_x197 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x198 = @:tmpset0 __tmp__._0;
            _x199 = @:tmpset0 __tmp__._1;
        };
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x145, _x181, ((_x199 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x200 = @:tmpset0 __tmp__._0;
            _x201 = @:tmpset0 __tmp__._1;
        };
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x147, _x183, ((_x201 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x202 = @:tmpset0 __tmp__._0;
            _x203 = @:tmpset0 __tmp__._1;
        };
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x149, _x185, ((_x203 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x204 = @:tmpset0 __tmp__._0;
            _x205 = @:tmpset0 __tmp__._1;
        };
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x151, _x187, ((_x205 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x206 = @:tmpset0 __tmp__._0;
            _x207 = @:tmpset0 __tmp__._1;
        };
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x153, _x189, ((_x207 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x208 = @:tmpset0 __tmp__._0;
            _x209 = @:tmpset0 __tmp__._1;
        };
        var _x210 = ((((_x209 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x154 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(8 : stdgo.GoInt)]);
            _x212 = @:tmpset0 __tmp__._0;
            _x211 = @:tmpset0 __tmp__._1;
        };
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(7 : stdgo.GoInt)]);
            _x214 = @:tmpset0 __tmp__._0;
            _x213 = @:tmpset0 __tmp__._1;
        };
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(6 : stdgo.GoInt)]);
            _x216 = @:tmpset0 __tmp__._0;
            _x215 = @:tmpset0 __tmp__._1;
        };
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(5 : stdgo.GoInt)]);
            _x218 = @:tmpset0 __tmp__._0;
            _x217 = @:tmpset0 __tmp__._1;
        };
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(4 : stdgo.GoInt)]);
            _x220 = @:tmpset0 __tmp__._0;
            _x219 = @:tmpset0 __tmp__._1;
        };
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(3 : stdgo.GoInt)]);
            _x222 = @:tmpset0 __tmp__._0;
            _x221 = @:tmpset0 __tmp__._1;
        };
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(2 : stdgo.GoInt)]);
            _x224 = @:tmpset0 __tmp__._0;
            _x223 = @:tmpset0 __tmp__._1;
        };
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(1 : stdgo.GoInt)]);
            _x226 = @:tmpset0 __tmp__._0;
            _x225 = @:tmpset0 __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, _arg2[(0 : stdgo.GoInt)]);
            _x228 = @:tmpset0 __tmp__._0;
            _x227 = @:tmpset0 __tmp__._1;
        };
        var _x229:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x230:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x228, _x225, (0i64 : stdgo.GoUInt64));
            _x229 = @:tmpset0 __tmp__._0;
            _x230 = @:tmpset0 __tmp__._1;
        };
        var _x231:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x232:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x226, _x223, ((_x230 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x231 = @:tmpset0 __tmp__._0;
            _x232 = @:tmpset0 __tmp__._1;
        };
        var _x233:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x234:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x224, _x221, ((_x232 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x233 = @:tmpset0 __tmp__._0;
            _x234 = @:tmpset0 __tmp__._1;
        };
        var _x235:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x236:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x222, _x219, ((_x234 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x235 = @:tmpset0 __tmp__._0;
            _x236 = @:tmpset0 __tmp__._1;
        };
        var _x237:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x238:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x220, _x217, ((_x236 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x237 = @:tmpset0 __tmp__._0;
            _x238 = @:tmpset0 __tmp__._1;
        };
        var _x239:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x240:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x218, _x215, ((_x238 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x239 = @:tmpset0 __tmp__._0;
            _x240 = @:tmpset0 __tmp__._1;
        };
        var _x241:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x242:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x216, _x213, ((_x240 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x241 = @:tmpset0 __tmp__._0;
            _x242 = @:tmpset0 __tmp__._1;
        };
        var _x243:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x244:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x214, _x211, ((_x242 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x243 = @:tmpset0 __tmp__._0;
            _x244 = @:tmpset0 __tmp__._1;
        };
        var _x245 = ((((_x244 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x212 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x192, _x227, (0i64 : stdgo.GoUInt64));
            _x246 = @:tmpset0 __tmp__._0;
            _x247 = @:tmpset0 __tmp__._1;
        };
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x194, _x229, ((_x247 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x248 = @:tmpset0 __tmp__._0;
            _x249 = @:tmpset0 __tmp__._1;
        };
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x196, _x231, ((_x249 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x250 = @:tmpset0 __tmp__._0;
            _x251 = @:tmpset0 __tmp__._1;
        };
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x198, _x233, ((_x251 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x252 = @:tmpset0 __tmp__._0;
            _x253 = @:tmpset0 __tmp__._1;
        };
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x200, _x235, ((_x253 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x254 = @:tmpset0 __tmp__._0;
            _x255 = @:tmpset0 __tmp__._1;
        };
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x202, _x237, ((_x255 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x256 = @:tmpset0 __tmp__._0;
            _x257 = @:tmpset0 __tmp__._1;
        };
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x204, _x239, ((_x257 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x258 = @:tmpset0 __tmp__._0;
            _x259 = @:tmpset0 __tmp__._1;
        };
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x206, _x241, ((_x259 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x260 = @:tmpset0 __tmp__._0;
            _x261 = @:tmpset0 __tmp__._1;
        };
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x208, _x243, ((_x261 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x262 = @:tmpset0 __tmp__._0;
            _x263 = @:tmpset0 __tmp__._1;
        };
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x210, _x245, ((_x263 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x264 = @:tmpset0 __tmp__._0;
            _x265 = @:tmpset0 __tmp__._1;
        };
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (511i64 : stdgo.GoUInt64));
            _x267 = @:tmpset0 __tmp__._0;
            _x266 = @:tmpset0 __tmp__._1;
        };
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x269 = @:tmpset0 __tmp__._0;
            _x268 = @:tmpset0 __tmp__._1;
        };
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x271 = @:tmpset0 __tmp__._0;
            _x270 = @:tmpset0 __tmp__._1;
        };
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x273 = @:tmpset0 __tmp__._0;
            _x272 = @:tmpset0 __tmp__._1;
        };
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x275 = @:tmpset0 __tmp__._0;
            _x274 = @:tmpset0 __tmp__._1;
        };
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x277 = @:tmpset0 __tmp__._0;
            _x276 = @:tmpset0 __tmp__._1;
        };
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x279 = @:tmpset0 __tmp__._0;
            _x278 = @:tmpset0 __tmp__._1;
        };
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x281 = @:tmpset0 __tmp__._0;
            _x280 = @:tmpset0 __tmp__._1;
        };
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x246, (-1i64 : stdgo.GoUInt64));
            _x283 = @:tmpset0 __tmp__._0;
            _x282 = @:tmpset0 __tmp__._1;
        };
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x283, _x280, (0i64 : stdgo.GoUInt64));
            _x284 = @:tmpset0 __tmp__._0;
            _x285 = @:tmpset0 __tmp__._1;
        };
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x281, _x278, ((_x285 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x286 = @:tmpset0 __tmp__._0;
            _x287 = @:tmpset0 __tmp__._1;
        };
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x279, _x276, ((_x287 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x288 = @:tmpset0 __tmp__._0;
            _x289 = @:tmpset0 __tmp__._1;
        };
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x274, ((_x289 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x290 = @:tmpset0 __tmp__._0;
            _x291 = @:tmpset0 __tmp__._1;
        };
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x275, _x272, ((_x291 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x292 = @:tmpset0 __tmp__._0;
            _x293 = @:tmpset0 __tmp__._1;
        };
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x273, _x270, ((_x293 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x294 = @:tmpset0 __tmp__._0;
            _x295 = @:tmpset0 __tmp__._1;
        };
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x271, _x268, ((_x295 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x296 = @:tmpset0 __tmp__._0;
            _x297 = @:tmpset0 __tmp__._1;
        };
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x269, _x266, ((_x297 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x298 = @:tmpset0 __tmp__._0;
            _x299 = @:tmpset0 __tmp__._1;
        };
        var _x300 = ((((_x299 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x267 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x246, _x282, (0i64 : stdgo.GoUInt64));
            _x302 = @:tmpset0 __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x248, _x284, ((_x302 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x303 = @:tmpset0 __tmp__._0;
            _x304 = @:tmpset0 __tmp__._1;
        };
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x250, _x286, ((_x304 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x305 = @:tmpset0 __tmp__._0;
            _x306 = @:tmpset0 __tmp__._1;
        };
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x252, _x288, ((_x306 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x307 = @:tmpset0 __tmp__._0;
            _x308 = @:tmpset0 __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x254, _x290, ((_x308 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x309 = @:tmpset0 __tmp__._0;
            _x310 = @:tmpset0 __tmp__._1;
        };
        var _x311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x256, _x292, ((_x310 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x311 = @:tmpset0 __tmp__._0;
            _x312 = @:tmpset0 __tmp__._1;
        };
        var _x313:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x258, _x294, ((_x312 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x313 = @:tmpset0 __tmp__._0;
            _x314 = @:tmpset0 __tmp__._1;
        };
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x260, _x296, ((_x314 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x315 = @:tmpset0 __tmp__._0;
            _x316 = @:tmpset0 __tmp__._1;
        };
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x262, _x298, ((_x316 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x317 = @:tmpset0 __tmp__._0;
            _x318 = @:tmpset0 __tmp__._1;
        };
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x264, _x300, ((_x318 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x319 = @:tmpset0 __tmp__._0;
            _x320 = @:tmpset0 __tmp__._1;
        };
        var _x321 = ((((_x320 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x265 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(8 : stdgo.GoInt)]);
            _x323 = @:tmpset0 __tmp__._0;
            _x322 = @:tmpset0 __tmp__._1;
        };
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(7 : stdgo.GoInt)]);
            _x325 = @:tmpset0 __tmp__._0;
            _x324 = @:tmpset0 __tmp__._1;
        };
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(6 : stdgo.GoInt)]);
            _x327 = @:tmpset0 __tmp__._0;
            _x326 = @:tmpset0 __tmp__._1;
        };
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(5 : stdgo.GoInt)]);
            _x329 = @:tmpset0 __tmp__._0;
            _x328 = @:tmpset0 __tmp__._1;
        };
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(4 : stdgo.GoInt)]);
            _x331 = @:tmpset0 __tmp__._0;
            _x330 = @:tmpset0 __tmp__._1;
        };
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(3 : stdgo.GoInt)]);
            _x333 = @:tmpset0 __tmp__._0;
            _x332 = @:tmpset0 __tmp__._1;
        };
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(2 : stdgo.GoInt)]);
            _x335 = @:tmpset0 __tmp__._0;
            _x334 = @:tmpset0 __tmp__._1;
        };
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(1 : stdgo.GoInt)]);
            _x337 = @:tmpset0 __tmp__._0;
            _x336 = @:tmpset0 __tmp__._1;
        };
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, _arg2[(0 : stdgo.GoInt)]);
            _x339 = @:tmpset0 __tmp__._0;
            _x338 = @:tmpset0 __tmp__._1;
        };
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x339, _x336, (0i64 : stdgo.GoUInt64));
            _x340 = @:tmpset0 __tmp__._0;
            _x341 = @:tmpset0 __tmp__._1;
        };
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x337, _x334, ((_x341 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x342 = @:tmpset0 __tmp__._0;
            _x343 = @:tmpset0 __tmp__._1;
        };
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x335, _x332, ((_x343 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x344 = @:tmpset0 __tmp__._0;
            _x345 = @:tmpset0 __tmp__._1;
        };
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x333, _x330, ((_x345 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x346 = @:tmpset0 __tmp__._0;
            _x347 = @:tmpset0 __tmp__._1;
        };
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x331, _x328, ((_x347 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x348 = @:tmpset0 __tmp__._0;
            _x349 = @:tmpset0 __tmp__._1;
        };
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x329, _x326, ((_x349 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x350 = @:tmpset0 __tmp__._0;
            _x351 = @:tmpset0 __tmp__._1;
        };
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x327, _x324, ((_x351 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x352 = @:tmpset0 __tmp__._0;
            _x353 = @:tmpset0 __tmp__._1;
        };
        var _x354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x325, _x322, ((_x353 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x354 = @:tmpset0 __tmp__._0;
            _x355 = @:tmpset0 __tmp__._1;
        };
        var _x356 = ((((_x355 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x323 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x303, _x338, (0i64 : stdgo.GoUInt64));
            _x357 = @:tmpset0 __tmp__._0;
            _x358 = @:tmpset0 __tmp__._1;
        };
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x305, _x340, ((_x358 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x359 = @:tmpset0 __tmp__._0;
            _x360 = @:tmpset0 __tmp__._1;
        };
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x307, _x342, ((_x360 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x361 = @:tmpset0 __tmp__._0;
            _x362 = @:tmpset0 __tmp__._1;
        };
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x309, _x344, ((_x362 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x363 = @:tmpset0 __tmp__._0;
            _x364 = @:tmpset0 __tmp__._1;
        };
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x311, _x346, ((_x364 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x365 = @:tmpset0 __tmp__._0;
            _x366 = @:tmpset0 __tmp__._1;
        };
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x313, _x348, ((_x366 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x367 = @:tmpset0 __tmp__._0;
            _x368 = @:tmpset0 __tmp__._1;
        };
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x315, _x350, ((_x368 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x369 = @:tmpset0 __tmp__._0;
            _x370 = @:tmpset0 __tmp__._1;
        };
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x317, _x352, ((_x370 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x371 = @:tmpset0 __tmp__._0;
            _x372 = @:tmpset0 __tmp__._1;
        };
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x319, _x354, ((_x372 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x373 = @:tmpset0 __tmp__._0;
            _x374 = @:tmpset0 __tmp__._1;
        };
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x376:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x321, _x356, ((_x374 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x375 = @:tmpset0 __tmp__._0;
            _x376 = @:tmpset0 __tmp__._1;
        };
        var _x377:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (511i64 : stdgo.GoUInt64));
            _x378 = @:tmpset0 __tmp__._0;
            _x377 = @:tmpset0 __tmp__._1;
        };
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x380 = @:tmpset0 __tmp__._0;
            _x379 = @:tmpset0 __tmp__._1;
        };
        var _x381:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x382 = @:tmpset0 __tmp__._0;
            _x381 = @:tmpset0 __tmp__._1;
        };
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x384 = @:tmpset0 __tmp__._0;
            _x383 = @:tmpset0 __tmp__._1;
        };
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x386 = @:tmpset0 __tmp__._0;
            _x385 = @:tmpset0 __tmp__._1;
        };
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x388 = @:tmpset0 __tmp__._0;
            _x387 = @:tmpset0 __tmp__._1;
        };
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x390 = @:tmpset0 __tmp__._0;
            _x389 = @:tmpset0 __tmp__._1;
        };
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x392 = @:tmpset0 __tmp__._0;
            _x391 = @:tmpset0 __tmp__._1;
        };
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x357, (-1i64 : stdgo.GoUInt64));
            _x394 = @:tmpset0 __tmp__._0;
            _x393 = @:tmpset0 __tmp__._1;
        };
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x394, _x391, (0i64 : stdgo.GoUInt64));
            _x395 = @:tmpset0 __tmp__._0;
            _x396 = @:tmpset0 __tmp__._1;
        };
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x392, _x389, ((_x396 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x397 = @:tmpset0 __tmp__._0;
            _x398 = @:tmpset0 __tmp__._1;
        };
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x390, _x387, ((_x398 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x399 = @:tmpset0 __tmp__._0;
            _x400 = @:tmpset0 __tmp__._1;
        };
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x388, _x385, ((_x400 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x401 = @:tmpset0 __tmp__._0;
            _x402 = @:tmpset0 __tmp__._1;
        };
        var _x403:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x386, _x383, ((_x402 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x403 = @:tmpset0 __tmp__._0;
            _x404 = @:tmpset0 __tmp__._1;
        };
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x384, _x381, ((_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x405 = @:tmpset0 __tmp__._0;
            _x406 = @:tmpset0 __tmp__._1;
        };
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x382, _x379, ((_x406 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x407 = @:tmpset0 __tmp__._0;
            _x408 = @:tmpset0 __tmp__._1;
        };
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x380, _x377, ((_x408 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x409 = @:tmpset0 __tmp__._0;
            _x410 = @:tmpset0 __tmp__._1;
        };
        var _x411 = ((((_x410 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x378 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x413:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x357, _x393, (0i64 : stdgo.GoUInt64));
            _x413 = @:tmpset0 __tmp__._1;
        };
        var _x414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x415:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x359, _x395, ((_x413 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x414 = @:tmpset0 __tmp__._0;
            _x415 = @:tmpset0 __tmp__._1;
        };
        var _x416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x417:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x361, _x397, ((_x415 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x416 = @:tmpset0 __tmp__._0;
            _x417 = @:tmpset0 __tmp__._1;
        };
        var _x418:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x419:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x363, _x399, ((_x417 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x418 = @:tmpset0 __tmp__._0;
            _x419 = @:tmpset0 __tmp__._1;
        };
        var _x420:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x421:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x365, _x401, ((_x419 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x420 = @:tmpset0 __tmp__._0;
            _x421 = @:tmpset0 __tmp__._1;
        };
        var _x422:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x367, _x403, ((_x421 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x422 = @:tmpset0 __tmp__._0;
            _x423 = @:tmpset0 __tmp__._1;
        };
        var _x424:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x425:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x369, _x405, ((_x423 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x424 = @:tmpset0 __tmp__._0;
            _x425 = @:tmpset0 __tmp__._1;
        };
        var _x426:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x371, _x407, ((_x425 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x426 = @:tmpset0 __tmp__._0;
            _x427 = @:tmpset0 __tmp__._1;
        };
        var _x428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x373, _x409, ((_x427 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x428 = @:tmpset0 __tmp__._0;
            _x429 = @:tmpset0 __tmp__._1;
        };
        var _x430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x431:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x375, _x411, ((_x429 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x430 = @:tmpset0 __tmp__._0;
            _x431 = @:tmpset0 __tmp__._1;
        };
        var _x432 = ((((_x431 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x376 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x434:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(8 : stdgo.GoInt)]);
            _x434 = @:tmpset0 __tmp__._0;
            _x433 = @:tmpset0 __tmp__._1;
        };
        var _x435:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(7 : stdgo.GoInt)]);
            _x436 = @:tmpset0 __tmp__._0;
            _x435 = @:tmpset0 __tmp__._1;
        };
        var _x437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(6 : stdgo.GoInt)]);
            _x438 = @:tmpset0 __tmp__._0;
            _x437 = @:tmpset0 __tmp__._1;
        };
        var _x439:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x440:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(5 : stdgo.GoInt)]);
            _x440 = @:tmpset0 __tmp__._0;
            _x439 = @:tmpset0 __tmp__._1;
        };
        var _x441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x442:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(4 : stdgo.GoInt)]);
            _x442 = @:tmpset0 __tmp__._0;
            _x441 = @:tmpset0 __tmp__._1;
        };
        var _x443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x444:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(3 : stdgo.GoInt)]);
            _x444 = @:tmpset0 __tmp__._0;
            _x443 = @:tmpset0 __tmp__._1;
        };
        var _x445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x446:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(2 : stdgo.GoInt)]);
            _x446 = @:tmpset0 __tmp__._0;
            _x445 = @:tmpset0 __tmp__._1;
        };
        var _x447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(1 : stdgo.GoInt)]);
            _x448 = @:tmpset0 __tmp__._0;
            _x447 = @:tmpset0 __tmp__._1;
        };
        var _x449:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x450:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, _arg2[(0 : stdgo.GoInt)]);
            _x450 = @:tmpset0 __tmp__._0;
            _x449 = @:tmpset0 __tmp__._1;
        };
        var _x451:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x452:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x450, _x447, (0i64 : stdgo.GoUInt64));
            _x451 = @:tmpset0 __tmp__._0;
            _x452 = @:tmpset0 __tmp__._1;
        };
        var _x453:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x454:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x448, _x445, ((_x452 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x453 = @:tmpset0 __tmp__._0;
            _x454 = @:tmpset0 __tmp__._1;
        };
        var _x455:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x446, _x443, ((_x454 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x455 = @:tmpset0 __tmp__._0;
            _x456 = @:tmpset0 __tmp__._1;
        };
        var _x457:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x458:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x444, _x441, ((_x456 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x457 = @:tmpset0 __tmp__._0;
            _x458 = @:tmpset0 __tmp__._1;
        };
        var _x459:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x442, _x439, ((_x458 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x459 = @:tmpset0 __tmp__._0;
            _x460 = @:tmpset0 __tmp__._1;
        };
        var _x461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x462:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x440, _x437, ((_x460 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x461 = @:tmpset0 __tmp__._0;
            _x462 = @:tmpset0 __tmp__._1;
        };
        var _x463:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x464:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x438, _x435, ((_x462 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x463 = @:tmpset0 __tmp__._0;
            _x464 = @:tmpset0 __tmp__._1;
        };
        var _x465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x466:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x436, _x433, ((_x464 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x465 = @:tmpset0 __tmp__._0;
            _x466 = @:tmpset0 __tmp__._1;
        };
        var _x467 = ((((_x466 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x434 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x468:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x414, _x449, (0i64 : stdgo.GoUInt64));
            _x468 = @:tmpset0 __tmp__._0;
            _x469 = @:tmpset0 __tmp__._1;
        };
        var _x470:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x471:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x416, _x451, ((_x469 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x470 = @:tmpset0 __tmp__._0;
            _x471 = @:tmpset0 __tmp__._1;
        };
        var _x472:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x473:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x418, _x453, ((_x471 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x472 = @:tmpset0 __tmp__._0;
            _x473 = @:tmpset0 __tmp__._1;
        };
        var _x474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x475:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x420, _x455, ((_x473 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x474 = @:tmpset0 __tmp__._0;
            _x475 = @:tmpset0 __tmp__._1;
        };
        var _x476:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x422, _x457, ((_x475 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x476 = @:tmpset0 __tmp__._0;
            _x477 = @:tmpset0 __tmp__._1;
        };
        var _x478:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x479:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x424, _x459, ((_x477 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x478 = @:tmpset0 __tmp__._0;
            _x479 = @:tmpset0 __tmp__._1;
        };
        var _x480:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x426, _x461, ((_x479 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x480 = @:tmpset0 __tmp__._0;
            _x481 = @:tmpset0 __tmp__._1;
        };
        var _x482:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x483:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x428, _x463, ((_x481 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x482 = @:tmpset0 __tmp__._0;
            _x483 = @:tmpset0 __tmp__._1;
        };
        var _x484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x430, _x465, ((_x483 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x484 = @:tmpset0 __tmp__._0;
            _x485 = @:tmpset0 __tmp__._1;
        };
        var _x486:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x487:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x432, _x467, ((_x485 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x486 = @:tmpset0 __tmp__._0;
            _x487 = @:tmpset0 __tmp__._1;
        };
        var _x488:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (511i64 : stdgo.GoUInt64));
            _x489 = @:tmpset0 __tmp__._0;
            _x488 = @:tmpset0 __tmp__._1;
        };
        var _x490:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x491 = @:tmpset0 __tmp__._0;
            _x490 = @:tmpset0 __tmp__._1;
        };
        var _x492:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x493:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x493 = @:tmpset0 __tmp__._0;
            _x492 = @:tmpset0 __tmp__._1;
        };
        var _x494:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x495:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x495 = @:tmpset0 __tmp__._0;
            _x494 = @:tmpset0 __tmp__._1;
        };
        var _x496:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x497:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x497 = @:tmpset0 __tmp__._0;
            _x496 = @:tmpset0 __tmp__._1;
        };
        var _x498:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x499 = @:tmpset0 __tmp__._0;
            _x498 = @:tmpset0 __tmp__._1;
        };
        var _x500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x501:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x501 = @:tmpset0 __tmp__._0;
            _x500 = @:tmpset0 __tmp__._1;
        };
        var _x502:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x503 = @:tmpset0 __tmp__._0;
            _x502 = @:tmpset0 __tmp__._1;
        };
        var _x504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x505:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x468, (-1i64 : stdgo.GoUInt64));
            _x505 = @:tmpset0 __tmp__._0;
            _x504 = @:tmpset0 __tmp__._1;
        };
        var _x506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x507:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x505, _x502, (0i64 : stdgo.GoUInt64));
            _x506 = @:tmpset0 __tmp__._0;
            _x507 = @:tmpset0 __tmp__._1;
        };
        var _x508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x503, _x500, ((_x507 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x508 = @:tmpset0 __tmp__._0;
            _x509 = @:tmpset0 __tmp__._1;
        };
        var _x510:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x501, _x498, ((_x509 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x510 = @:tmpset0 __tmp__._0;
            _x511 = @:tmpset0 __tmp__._1;
        };
        var _x512:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x513:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x499, _x496, ((_x511 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x512 = @:tmpset0 __tmp__._0;
            _x513 = @:tmpset0 __tmp__._1;
        };
        var _x514:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x497, _x494, ((_x513 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x514 = @:tmpset0 __tmp__._0;
            _x515 = @:tmpset0 __tmp__._1;
        };
        var _x516:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x517:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x495, _x492, ((_x515 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x516 = @:tmpset0 __tmp__._0;
            _x517 = @:tmpset0 __tmp__._1;
        };
        var _x518:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x493, _x490, ((_x517 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x518 = @:tmpset0 __tmp__._0;
            _x519 = @:tmpset0 __tmp__._1;
        };
        var _x520:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x491, _x488, ((_x519 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x520 = @:tmpset0 __tmp__._0;
            _x521 = @:tmpset0 __tmp__._1;
        };
        var _x522 = ((((_x521 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x489 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x524:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x468, _x504, (0i64 : stdgo.GoUInt64));
            _x524 = @:tmpset0 __tmp__._1;
        };
        var _x525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x526:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x470, _x506, ((_x524 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x525 = @:tmpset0 __tmp__._0;
            _x526 = @:tmpset0 __tmp__._1;
        };
        var _x527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x528:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x472, _x508, ((_x526 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x527 = @:tmpset0 __tmp__._0;
            _x528 = @:tmpset0 __tmp__._1;
        };
        var _x529:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x530:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x474, _x510, ((_x528 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x529 = @:tmpset0 __tmp__._0;
            _x530 = @:tmpset0 __tmp__._1;
        };
        var _x531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x532:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x476, _x512, ((_x530 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x531 = @:tmpset0 __tmp__._0;
            _x532 = @:tmpset0 __tmp__._1;
        };
        var _x533:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x534:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x478, _x514, ((_x532 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x533 = @:tmpset0 __tmp__._0;
            _x534 = @:tmpset0 __tmp__._1;
        };
        var _x535:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x480, _x516, ((_x534 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x535 = @:tmpset0 __tmp__._0;
            _x536 = @:tmpset0 __tmp__._1;
        };
        var _x537:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x482, _x518, ((_x536 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x537 = @:tmpset0 __tmp__._0;
            _x538 = @:tmpset0 __tmp__._1;
        };
        var _x539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x540:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x484, _x520, ((_x538 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x539 = @:tmpset0 __tmp__._0;
            _x540 = @:tmpset0 __tmp__._1;
        };
        var _x541:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x542:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x486, _x522, ((_x540 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x541 = @:tmpset0 __tmp__._0;
            _x542 = @:tmpset0 __tmp__._1;
        };
        var _x543 = ((((_x542 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x487 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x545:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(8 : stdgo.GoInt)]);
            _x545 = @:tmpset0 __tmp__._0;
            _x544 = @:tmpset0 __tmp__._1;
        };
        var _x546:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x547:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(7 : stdgo.GoInt)]);
            _x547 = @:tmpset0 __tmp__._0;
            _x546 = @:tmpset0 __tmp__._1;
        };
        var _x548:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x549:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(6 : stdgo.GoInt)]);
            _x549 = @:tmpset0 __tmp__._0;
            _x548 = @:tmpset0 __tmp__._1;
        };
        var _x550:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x551:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(5 : stdgo.GoInt)]);
            _x551 = @:tmpset0 __tmp__._0;
            _x550 = @:tmpset0 __tmp__._1;
        };
        var _x552:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x553:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(4 : stdgo.GoInt)]);
            _x553 = @:tmpset0 __tmp__._0;
            _x552 = @:tmpset0 __tmp__._1;
        };
        var _x554:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x555:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(3 : stdgo.GoInt)]);
            _x555 = @:tmpset0 __tmp__._0;
            _x554 = @:tmpset0 __tmp__._1;
        };
        var _x556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x557:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(2 : stdgo.GoInt)]);
            _x557 = @:tmpset0 __tmp__._0;
            _x556 = @:tmpset0 __tmp__._1;
        };
        var _x558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(1 : stdgo.GoInt)]);
            _x559 = @:tmpset0 __tmp__._0;
            _x558 = @:tmpset0 __tmp__._1;
        };
        var _x560:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x561:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x5, _arg2[(0 : stdgo.GoInt)]);
            _x561 = @:tmpset0 __tmp__._0;
            _x560 = @:tmpset0 __tmp__._1;
        };
        var _x562:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x561, _x558, (0i64 : stdgo.GoUInt64));
            _x562 = @:tmpset0 __tmp__._0;
            _x563 = @:tmpset0 __tmp__._1;
        };
        var _x564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x565:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x559, _x556, ((_x563 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x564 = @:tmpset0 __tmp__._0;
            _x565 = @:tmpset0 __tmp__._1;
        };
        var _x566:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x567:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x557, _x554, ((_x565 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x566 = @:tmpset0 __tmp__._0;
            _x567 = @:tmpset0 __tmp__._1;
        };
        var _x568:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x569:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x555, _x552, ((_x567 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x568 = @:tmpset0 __tmp__._0;
            _x569 = @:tmpset0 __tmp__._1;
        };
        var _x570:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x571:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x553, _x550, ((_x569 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x570 = @:tmpset0 __tmp__._0;
            _x571 = @:tmpset0 __tmp__._1;
        };
        var _x572:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x573:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x551, _x548, ((_x571 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x572 = @:tmpset0 __tmp__._0;
            _x573 = @:tmpset0 __tmp__._1;
        };
        var _x574:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x575:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x549, _x546, ((_x573 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x574 = @:tmpset0 __tmp__._0;
            _x575 = @:tmpset0 __tmp__._1;
        };
        var _x576:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x577:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x547, _x544, ((_x575 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x576 = @:tmpset0 __tmp__._0;
            _x577 = @:tmpset0 __tmp__._1;
        };
        var _x578 = ((((_x577 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x545 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x579:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x580:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x525, _x560, (0i64 : stdgo.GoUInt64));
            _x579 = @:tmpset0 __tmp__._0;
            _x580 = @:tmpset0 __tmp__._1;
        };
        var _x581:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x582:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x527, _x562, ((_x580 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x581 = @:tmpset0 __tmp__._0;
            _x582 = @:tmpset0 __tmp__._1;
        };
        var _x583:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x584:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x529, _x564, ((_x582 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x583 = @:tmpset0 __tmp__._0;
            _x584 = @:tmpset0 __tmp__._1;
        };
        var _x585:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x586:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x531, _x566, ((_x584 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x585 = @:tmpset0 __tmp__._0;
            _x586 = @:tmpset0 __tmp__._1;
        };
        var _x587:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x588:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x533, _x568, ((_x586 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x587 = @:tmpset0 __tmp__._0;
            _x588 = @:tmpset0 __tmp__._1;
        };
        var _x589:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x590:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x535, _x570, ((_x588 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x589 = @:tmpset0 __tmp__._0;
            _x590 = @:tmpset0 __tmp__._1;
        };
        var _x591:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x592:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x537, _x572, ((_x590 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x591 = @:tmpset0 __tmp__._0;
            _x592 = @:tmpset0 __tmp__._1;
        };
        var _x593:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x594:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x539, _x574, ((_x592 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x593 = @:tmpset0 __tmp__._0;
            _x594 = @:tmpset0 __tmp__._1;
        };
        var _x595:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x596:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x541, _x576, ((_x594 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x595 = @:tmpset0 __tmp__._0;
            _x596 = @:tmpset0 __tmp__._1;
        };
        var _x597:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x598:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x543, _x578, ((_x596 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x597 = @:tmpset0 __tmp__._0;
            _x598 = @:tmpset0 __tmp__._1;
        };
        var _x599:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x600:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (511i64 : stdgo.GoUInt64));
            _x600 = @:tmpset0 __tmp__._0;
            _x599 = @:tmpset0 __tmp__._1;
        };
        var _x601:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x602:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x602 = @:tmpset0 __tmp__._0;
            _x601 = @:tmpset0 __tmp__._1;
        };
        var _x603:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x604:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x604 = @:tmpset0 __tmp__._0;
            _x603 = @:tmpset0 __tmp__._1;
        };
        var _x605:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x606:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x606 = @:tmpset0 __tmp__._0;
            _x605 = @:tmpset0 __tmp__._1;
        };
        var _x607:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x608:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x608 = @:tmpset0 __tmp__._0;
            _x607 = @:tmpset0 __tmp__._1;
        };
        var _x609:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x610:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x610 = @:tmpset0 __tmp__._0;
            _x609 = @:tmpset0 __tmp__._1;
        };
        var _x611:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x612:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x612 = @:tmpset0 __tmp__._0;
            _x611 = @:tmpset0 __tmp__._1;
        };
        var _x613:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x614:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x614 = @:tmpset0 __tmp__._0;
            _x613 = @:tmpset0 __tmp__._1;
        };
        var _x615:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x616:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x579, (-1i64 : stdgo.GoUInt64));
            _x616 = @:tmpset0 __tmp__._0;
            _x615 = @:tmpset0 __tmp__._1;
        };
        var _x617:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x618:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x616, _x613, (0i64 : stdgo.GoUInt64));
            _x617 = @:tmpset0 __tmp__._0;
            _x618 = @:tmpset0 __tmp__._1;
        };
        var _x619:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x620:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x614, _x611, ((_x618 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x619 = @:tmpset0 __tmp__._0;
            _x620 = @:tmpset0 __tmp__._1;
        };
        var _x621:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x622:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x612, _x609, ((_x620 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x621 = @:tmpset0 __tmp__._0;
            _x622 = @:tmpset0 __tmp__._1;
        };
        var _x623:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x624:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x610, _x607, ((_x622 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x623 = @:tmpset0 __tmp__._0;
            _x624 = @:tmpset0 __tmp__._1;
        };
        var _x625:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x626:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x608, _x605, ((_x624 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x625 = @:tmpset0 __tmp__._0;
            _x626 = @:tmpset0 __tmp__._1;
        };
        var _x627:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x628:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x606, _x603, ((_x626 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x627 = @:tmpset0 __tmp__._0;
            _x628 = @:tmpset0 __tmp__._1;
        };
        var _x629:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x630:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x604, _x601, ((_x628 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x629 = @:tmpset0 __tmp__._0;
            _x630 = @:tmpset0 __tmp__._1;
        };
        var _x631:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x632:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x602, _x599, ((_x630 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x631 = @:tmpset0 __tmp__._0;
            _x632 = @:tmpset0 __tmp__._1;
        };
        var _x633 = ((((_x632 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x600 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x635:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x579, _x615, (0i64 : stdgo.GoUInt64));
            _x635 = @:tmpset0 __tmp__._1;
        };
        var _x636:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x637:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x581, _x617, ((_x635 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x636 = @:tmpset0 __tmp__._0;
            _x637 = @:tmpset0 __tmp__._1;
        };
        var _x638:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x639:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x583, _x619, ((_x637 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x638 = @:tmpset0 __tmp__._0;
            _x639 = @:tmpset0 __tmp__._1;
        };
        var _x640:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x641:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x585, _x621, ((_x639 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x640 = @:tmpset0 __tmp__._0;
            _x641 = @:tmpset0 __tmp__._1;
        };
        var _x642:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x643:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x587, _x623, ((_x641 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x642 = @:tmpset0 __tmp__._0;
            _x643 = @:tmpset0 __tmp__._1;
        };
        var _x644:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x645:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x589, _x625, ((_x643 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x644 = @:tmpset0 __tmp__._0;
            _x645 = @:tmpset0 __tmp__._1;
        };
        var _x646:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x647:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x591, _x627, ((_x645 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x646 = @:tmpset0 __tmp__._0;
            _x647 = @:tmpset0 __tmp__._1;
        };
        var _x648:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x649:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x593, _x629, ((_x647 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x648 = @:tmpset0 __tmp__._0;
            _x649 = @:tmpset0 __tmp__._1;
        };
        var _x650:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x651:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x595, _x631, ((_x649 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x650 = @:tmpset0 __tmp__._0;
            _x651 = @:tmpset0 __tmp__._1;
        };
        var _x652:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x653:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x597, _x633, ((_x651 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x652 = @:tmpset0 __tmp__._0;
            _x653 = @:tmpset0 __tmp__._1;
        };
        var _x654 = ((((_x653 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x598 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x655:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x656:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(8 : stdgo.GoInt)]);
            _x656 = @:tmpset0 __tmp__._0;
            _x655 = @:tmpset0 __tmp__._1;
        };
        var _x657:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x658:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(7 : stdgo.GoInt)]);
            _x658 = @:tmpset0 __tmp__._0;
            _x657 = @:tmpset0 __tmp__._1;
        };
        var _x659:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x660:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(6 : stdgo.GoInt)]);
            _x660 = @:tmpset0 __tmp__._0;
            _x659 = @:tmpset0 __tmp__._1;
        };
        var _x661:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x662:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(5 : stdgo.GoInt)]);
            _x662 = @:tmpset0 __tmp__._0;
            _x661 = @:tmpset0 __tmp__._1;
        };
        var _x663:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x664:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(4 : stdgo.GoInt)]);
            _x664 = @:tmpset0 __tmp__._0;
            _x663 = @:tmpset0 __tmp__._1;
        };
        var _x665:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x666:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(3 : stdgo.GoInt)]);
            _x666 = @:tmpset0 __tmp__._0;
            _x665 = @:tmpset0 __tmp__._1;
        };
        var _x667:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x668:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(2 : stdgo.GoInt)]);
            _x668 = @:tmpset0 __tmp__._0;
            _x667 = @:tmpset0 __tmp__._1;
        };
        var _x669:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x670:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(1 : stdgo.GoInt)]);
            _x670 = @:tmpset0 __tmp__._0;
            _x669 = @:tmpset0 __tmp__._1;
        };
        var _x671:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x672:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x6, _arg2[(0 : stdgo.GoInt)]);
            _x672 = @:tmpset0 __tmp__._0;
            _x671 = @:tmpset0 __tmp__._1;
        };
        var _x673:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x674:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x672, _x669, (0i64 : stdgo.GoUInt64));
            _x673 = @:tmpset0 __tmp__._0;
            _x674 = @:tmpset0 __tmp__._1;
        };
        var _x675:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x676:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x670, _x667, ((_x674 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x675 = @:tmpset0 __tmp__._0;
            _x676 = @:tmpset0 __tmp__._1;
        };
        var _x677:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x678:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x668, _x665, ((_x676 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x677 = @:tmpset0 __tmp__._0;
            _x678 = @:tmpset0 __tmp__._1;
        };
        var _x679:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x680:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x666, _x663, ((_x678 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x679 = @:tmpset0 __tmp__._0;
            _x680 = @:tmpset0 __tmp__._1;
        };
        var _x681:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x682:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x664, _x661, ((_x680 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x681 = @:tmpset0 __tmp__._0;
            _x682 = @:tmpset0 __tmp__._1;
        };
        var _x683:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x684:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x662, _x659, ((_x682 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x683 = @:tmpset0 __tmp__._0;
            _x684 = @:tmpset0 __tmp__._1;
        };
        var _x685:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x686:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x660, _x657, ((_x684 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x685 = @:tmpset0 __tmp__._0;
            _x686 = @:tmpset0 __tmp__._1;
        };
        var _x687:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x688:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x658, _x655, ((_x686 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x687 = @:tmpset0 __tmp__._0;
            _x688 = @:tmpset0 __tmp__._1;
        };
        var _x689 = ((((_x688 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x656 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x690:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x691:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x636, _x671, (0i64 : stdgo.GoUInt64));
            _x690 = @:tmpset0 __tmp__._0;
            _x691 = @:tmpset0 __tmp__._1;
        };
        var _x692:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x693:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x638, _x673, ((_x691 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x692 = @:tmpset0 __tmp__._0;
            _x693 = @:tmpset0 __tmp__._1;
        };
        var _x694:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x695:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x640, _x675, ((_x693 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x694 = @:tmpset0 __tmp__._0;
            _x695 = @:tmpset0 __tmp__._1;
        };
        var _x696:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x697:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x642, _x677, ((_x695 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x696 = @:tmpset0 __tmp__._0;
            _x697 = @:tmpset0 __tmp__._1;
        };
        var _x698:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x699:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x644, _x679, ((_x697 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x698 = @:tmpset0 __tmp__._0;
            _x699 = @:tmpset0 __tmp__._1;
        };
        var _x700:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x701:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x646, _x681, ((_x699 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x700 = @:tmpset0 __tmp__._0;
            _x701 = @:tmpset0 __tmp__._1;
        };
        var _x702:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x703:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x648, _x683, ((_x701 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x702 = @:tmpset0 __tmp__._0;
            _x703 = @:tmpset0 __tmp__._1;
        };
        var _x704:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x705:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x650, _x685, ((_x703 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x704 = @:tmpset0 __tmp__._0;
            _x705 = @:tmpset0 __tmp__._1;
        };
        var _x706:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x707:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x652, _x687, ((_x705 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x706 = @:tmpset0 __tmp__._0;
            _x707 = @:tmpset0 __tmp__._1;
        };
        var _x708:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x709:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x654, _x689, ((_x707 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x708 = @:tmpset0 __tmp__._0;
            _x709 = @:tmpset0 __tmp__._1;
        };
        var _x710:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x711:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (511i64 : stdgo.GoUInt64));
            _x711 = @:tmpset0 __tmp__._0;
            _x710 = @:tmpset0 __tmp__._1;
        };
        var _x712:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x713:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x713 = @:tmpset0 __tmp__._0;
            _x712 = @:tmpset0 __tmp__._1;
        };
        var _x714:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x715:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x715 = @:tmpset0 __tmp__._0;
            _x714 = @:tmpset0 __tmp__._1;
        };
        var _x716:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x717:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x717 = @:tmpset0 __tmp__._0;
            _x716 = @:tmpset0 __tmp__._1;
        };
        var _x718:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x719:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x719 = @:tmpset0 __tmp__._0;
            _x718 = @:tmpset0 __tmp__._1;
        };
        var _x720:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x721:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x721 = @:tmpset0 __tmp__._0;
            _x720 = @:tmpset0 __tmp__._1;
        };
        var _x722:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x723:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x723 = @:tmpset0 __tmp__._0;
            _x722 = @:tmpset0 __tmp__._1;
        };
        var _x724:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x725:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x725 = @:tmpset0 __tmp__._0;
            _x724 = @:tmpset0 __tmp__._1;
        };
        var _x726:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x727:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x690, (-1i64 : stdgo.GoUInt64));
            _x727 = @:tmpset0 __tmp__._0;
            _x726 = @:tmpset0 __tmp__._1;
        };
        var _x728:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x729:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x727, _x724, (0i64 : stdgo.GoUInt64));
            _x728 = @:tmpset0 __tmp__._0;
            _x729 = @:tmpset0 __tmp__._1;
        };
        var _x730:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x731:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x725, _x722, ((_x729 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x730 = @:tmpset0 __tmp__._0;
            _x731 = @:tmpset0 __tmp__._1;
        };
        var _x732:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x733:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x723, _x720, ((_x731 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x732 = @:tmpset0 __tmp__._0;
            _x733 = @:tmpset0 __tmp__._1;
        };
        var _x734:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x735:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x721, _x718, ((_x733 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x734 = @:tmpset0 __tmp__._0;
            _x735 = @:tmpset0 __tmp__._1;
        };
        var _x736:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x737:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x719, _x716, ((_x735 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x736 = @:tmpset0 __tmp__._0;
            _x737 = @:tmpset0 __tmp__._1;
        };
        var _x738:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x739:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x717, _x714, ((_x737 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x738 = @:tmpset0 __tmp__._0;
            _x739 = @:tmpset0 __tmp__._1;
        };
        var _x740:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x741:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x715, _x712, ((_x739 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x740 = @:tmpset0 __tmp__._0;
            _x741 = @:tmpset0 __tmp__._1;
        };
        var _x742:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x743:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x713, _x710, ((_x741 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x742 = @:tmpset0 __tmp__._0;
            _x743 = @:tmpset0 __tmp__._1;
        };
        var _x744 = ((((_x743 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x711 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x746:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x690, _x726, (0i64 : stdgo.GoUInt64));
            _x746 = @:tmpset0 __tmp__._1;
        };
        var _x747:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x748:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x692, _x728, ((_x746 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x747 = @:tmpset0 __tmp__._0;
            _x748 = @:tmpset0 __tmp__._1;
        };
        var _x749:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x750:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x694, _x730, ((_x748 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x749 = @:tmpset0 __tmp__._0;
            _x750 = @:tmpset0 __tmp__._1;
        };
        var _x751:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x752:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x696, _x732, ((_x750 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x751 = @:tmpset0 __tmp__._0;
            _x752 = @:tmpset0 __tmp__._1;
        };
        var _x753:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x754:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x698, _x734, ((_x752 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x753 = @:tmpset0 __tmp__._0;
            _x754 = @:tmpset0 __tmp__._1;
        };
        var _x755:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x756:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x700, _x736, ((_x754 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x755 = @:tmpset0 __tmp__._0;
            _x756 = @:tmpset0 __tmp__._1;
        };
        var _x757:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x758:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x702, _x738, ((_x756 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x757 = @:tmpset0 __tmp__._0;
            _x758 = @:tmpset0 __tmp__._1;
        };
        var _x759:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x760:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x704, _x740, ((_x758 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x759 = @:tmpset0 __tmp__._0;
            _x760 = @:tmpset0 __tmp__._1;
        };
        var _x761:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x762:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x706, _x742, ((_x760 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x761 = @:tmpset0 __tmp__._0;
            _x762 = @:tmpset0 __tmp__._1;
        };
        var _x763:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x764:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x708, _x744, ((_x762 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x763 = @:tmpset0 __tmp__._0;
            _x764 = @:tmpset0 __tmp__._1;
        };
        var _x765 = ((((_x764 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x709 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x766:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x767:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(8 : stdgo.GoInt)]);
            _x767 = @:tmpset0 __tmp__._0;
            _x766 = @:tmpset0 __tmp__._1;
        };
        var _x768:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x769:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(7 : stdgo.GoInt)]);
            _x769 = @:tmpset0 __tmp__._0;
            _x768 = @:tmpset0 __tmp__._1;
        };
        var _x770:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x771:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(6 : stdgo.GoInt)]);
            _x771 = @:tmpset0 __tmp__._0;
            _x770 = @:tmpset0 __tmp__._1;
        };
        var _x772:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x773:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(5 : stdgo.GoInt)]);
            _x773 = @:tmpset0 __tmp__._0;
            _x772 = @:tmpset0 __tmp__._1;
        };
        var _x774:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x775:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(4 : stdgo.GoInt)]);
            _x775 = @:tmpset0 __tmp__._0;
            _x774 = @:tmpset0 __tmp__._1;
        };
        var _x776:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x777:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(3 : stdgo.GoInt)]);
            _x777 = @:tmpset0 __tmp__._0;
            _x776 = @:tmpset0 __tmp__._1;
        };
        var _x778:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x779:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(2 : stdgo.GoInt)]);
            _x779 = @:tmpset0 __tmp__._0;
            _x778 = @:tmpset0 __tmp__._1;
        };
        var _x780:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x781:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(1 : stdgo.GoInt)]);
            _x781 = @:tmpset0 __tmp__._0;
            _x780 = @:tmpset0 __tmp__._1;
        };
        var _x782:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x783:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x7, _arg2[(0 : stdgo.GoInt)]);
            _x783 = @:tmpset0 __tmp__._0;
            _x782 = @:tmpset0 __tmp__._1;
        };
        var _x784:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x785:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x783, _x780, (0i64 : stdgo.GoUInt64));
            _x784 = @:tmpset0 __tmp__._0;
            _x785 = @:tmpset0 __tmp__._1;
        };
        var _x786:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x787:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x781, _x778, ((_x785 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x786 = @:tmpset0 __tmp__._0;
            _x787 = @:tmpset0 __tmp__._1;
        };
        var _x788:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x789:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x779, _x776, ((_x787 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x788 = @:tmpset0 __tmp__._0;
            _x789 = @:tmpset0 __tmp__._1;
        };
        var _x790:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x791:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x777, _x774, ((_x789 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x790 = @:tmpset0 __tmp__._0;
            _x791 = @:tmpset0 __tmp__._1;
        };
        var _x792:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x793:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x775, _x772, ((_x791 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x792 = @:tmpset0 __tmp__._0;
            _x793 = @:tmpset0 __tmp__._1;
        };
        var _x794:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x795:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x773, _x770, ((_x793 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x794 = @:tmpset0 __tmp__._0;
            _x795 = @:tmpset0 __tmp__._1;
        };
        var _x796:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x797:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x771, _x768, ((_x795 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x796 = @:tmpset0 __tmp__._0;
            _x797 = @:tmpset0 __tmp__._1;
        };
        var _x798:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x799:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x769, _x766, ((_x797 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x798 = @:tmpset0 __tmp__._0;
            _x799 = @:tmpset0 __tmp__._1;
        };
        var _x800 = ((((_x799 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x767 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x801:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x802:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x747, _x782, (0i64 : stdgo.GoUInt64));
            _x801 = @:tmpset0 __tmp__._0;
            _x802 = @:tmpset0 __tmp__._1;
        };
        var _x803:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x804:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x749, _x784, ((_x802 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x803 = @:tmpset0 __tmp__._0;
            _x804 = @:tmpset0 __tmp__._1;
        };
        var _x805:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x806:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x751, _x786, ((_x804 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x805 = @:tmpset0 __tmp__._0;
            _x806 = @:tmpset0 __tmp__._1;
        };
        var _x807:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x808:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x753, _x788, ((_x806 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x807 = @:tmpset0 __tmp__._0;
            _x808 = @:tmpset0 __tmp__._1;
        };
        var _x809:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x810:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x755, _x790, ((_x808 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x809 = @:tmpset0 __tmp__._0;
            _x810 = @:tmpset0 __tmp__._1;
        };
        var _x811:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x812:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x757, _x792, ((_x810 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x811 = @:tmpset0 __tmp__._0;
            _x812 = @:tmpset0 __tmp__._1;
        };
        var _x813:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x814:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x759, _x794, ((_x812 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x813 = @:tmpset0 __tmp__._0;
            _x814 = @:tmpset0 __tmp__._1;
        };
        var _x815:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x816:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x761, _x796, ((_x814 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x815 = @:tmpset0 __tmp__._0;
            _x816 = @:tmpset0 __tmp__._1;
        };
        var _x817:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x818:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x763, _x798, ((_x816 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x817 = @:tmpset0 __tmp__._0;
            _x818 = @:tmpset0 __tmp__._1;
        };
        var _x819:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x820:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x765, _x800, ((_x818 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x819 = @:tmpset0 __tmp__._0;
            _x820 = @:tmpset0 __tmp__._1;
        };
        var _x821:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x822:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (511i64 : stdgo.GoUInt64));
            _x822 = @:tmpset0 __tmp__._0;
            _x821 = @:tmpset0 __tmp__._1;
        };
        var _x823:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x824:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x824 = @:tmpset0 __tmp__._0;
            _x823 = @:tmpset0 __tmp__._1;
        };
        var _x825:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x826:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x826 = @:tmpset0 __tmp__._0;
            _x825 = @:tmpset0 __tmp__._1;
        };
        var _x827:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x828:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x828 = @:tmpset0 __tmp__._0;
            _x827 = @:tmpset0 __tmp__._1;
        };
        var _x829:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x830:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x830 = @:tmpset0 __tmp__._0;
            _x829 = @:tmpset0 __tmp__._1;
        };
        var _x831:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x832:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x832 = @:tmpset0 __tmp__._0;
            _x831 = @:tmpset0 __tmp__._1;
        };
        var _x833:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x834:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x834 = @:tmpset0 __tmp__._0;
            _x833 = @:tmpset0 __tmp__._1;
        };
        var _x835:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x836:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x836 = @:tmpset0 __tmp__._0;
            _x835 = @:tmpset0 __tmp__._1;
        };
        var _x837:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x838:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x801, (-1i64 : stdgo.GoUInt64));
            _x838 = @:tmpset0 __tmp__._0;
            _x837 = @:tmpset0 __tmp__._1;
        };
        var _x839:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x840:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x838, _x835, (0i64 : stdgo.GoUInt64));
            _x839 = @:tmpset0 __tmp__._0;
            _x840 = @:tmpset0 __tmp__._1;
        };
        var _x841:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x842:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x836, _x833, ((_x840 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x841 = @:tmpset0 __tmp__._0;
            _x842 = @:tmpset0 __tmp__._1;
        };
        var _x843:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x844:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x834, _x831, ((_x842 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x843 = @:tmpset0 __tmp__._0;
            _x844 = @:tmpset0 __tmp__._1;
        };
        var _x845:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x846:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x832, _x829, ((_x844 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x845 = @:tmpset0 __tmp__._0;
            _x846 = @:tmpset0 __tmp__._1;
        };
        var _x847:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x848:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x830, _x827, ((_x846 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x847 = @:tmpset0 __tmp__._0;
            _x848 = @:tmpset0 __tmp__._1;
        };
        var _x849:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x850:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x828, _x825, ((_x848 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x849 = @:tmpset0 __tmp__._0;
            _x850 = @:tmpset0 __tmp__._1;
        };
        var _x851:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x852:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x826, _x823, ((_x850 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x851 = @:tmpset0 __tmp__._0;
            _x852 = @:tmpset0 __tmp__._1;
        };
        var _x853:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x854:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x824, _x821, ((_x852 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x853 = @:tmpset0 __tmp__._0;
            _x854 = @:tmpset0 __tmp__._1;
        };
        var _x855 = ((((_x854 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x822 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x857:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x801, _x837, (0i64 : stdgo.GoUInt64));
            _x857 = @:tmpset0 __tmp__._1;
        };
        var _x858:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x859:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x803, _x839, ((_x857 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x858 = @:tmpset0 __tmp__._0;
            _x859 = @:tmpset0 __tmp__._1;
        };
        var _x860:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x861:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x805, _x841, ((_x859 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x860 = @:tmpset0 __tmp__._0;
            _x861 = @:tmpset0 __tmp__._1;
        };
        var _x862:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x863:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x807, _x843, ((_x861 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x862 = @:tmpset0 __tmp__._0;
            _x863 = @:tmpset0 __tmp__._1;
        };
        var _x864:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x865:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x809, _x845, ((_x863 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x864 = @:tmpset0 __tmp__._0;
            _x865 = @:tmpset0 __tmp__._1;
        };
        var _x866:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x867:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x811, _x847, ((_x865 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x866 = @:tmpset0 __tmp__._0;
            _x867 = @:tmpset0 __tmp__._1;
        };
        var _x868:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x869:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x813, _x849, ((_x867 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x868 = @:tmpset0 __tmp__._0;
            _x869 = @:tmpset0 __tmp__._1;
        };
        var _x870:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x871:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x815, _x851, ((_x869 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x870 = @:tmpset0 __tmp__._0;
            _x871 = @:tmpset0 __tmp__._1;
        };
        var _x872:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x873:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x817, _x853, ((_x871 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x872 = @:tmpset0 __tmp__._0;
            _x873 = @:tmpset0 __tmp__._1;
        };
        var _x874:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x875:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x819, _x855, ((_x873 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x874 = @:tmpset0 __tmp__._0;
            _x875 = @:tmpset0 __tmp__._1;
        };
        var _x876 = ((((_x875 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x820 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x877:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x878:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(8 : stdgo.GoInt)]);
            _x878 = @:tmpset0 __tmp__._0;
            _x877 = @:tmpset0 __tmp__._1;
        };
        var _x879:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x880:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(7 : stdgo.GoInt)]);
            _x880 = @:tmpset0 __tmp__._0;
            _x879 = @:tmpset0 __tmp__._1;
        };
        var _x881:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x882:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(6 : stdgo.GoInt)]);
            _x882 = @:tmpset0 __tmp__._0;
            _x881 = @:tmpset0 __tmp__._1;
        };
        var _x883:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x884:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(5 : stdgo.GoInt)]);
            _x884 = @:tmpset0 __tmp__._0;
            _x883 = @:tmpset0 __tmp__._1;
        };
        var _x885:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x886:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(4 : stdgo.GoInt)]);
            _x886 = @:tmpset0 __tmp__._0;
            _x885 = @:tmpset0 __tmp__._1;
        };
        var _x887:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x888:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(3 : stdgo.GoInt)]);
            _x888 = @:tmpset0 __tmp__._0;
            _x887 = @:tmpset0 __tmp__._1;
        };
        var _x889:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x890:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(2 : stdgo.GoInt)]);
            _x890 = @:tmpset0 __tmp__._0;
            _x889 = @:tmpset0 __tmp__._1;
        };
        var _x891:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x892:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(1 : stdgo.GoInt)]);
            _x892 = @:tmpset0 __tmp__._0;
            _x891 = @:tmpset0 __tmp__._1;
        };
        var _x893:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x894:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x8, _arg2[(0 : stdgo.GoInt)]);
            _x894 = @:tmpset0 __tmp__._0;
            _x893 = @:tmpset0 __tmp__._1;
        };
        var _x895:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x896:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x894, _x891, (0i64 : stdgo.GoUInt64));
            _x895 = @:tmpset0 __tmp__._0;
            _x896 = @:tmpset0 __tmp__._1;
        };
        var _x897:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x898:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x892, _x889, ((_x896 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x897 = @:tmpset0 __tmp__._0;
            _x898 = @:tmpset0 __tmp__._1;
        };
        var _x899:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x900:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x890, _x887, ((_x898 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x899 = @:tmpset0 __tmp__._0;
            _x900 = @:tmpset0 __tmp__._1;
        };
        var _x901:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x902:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x888, _x885, ((_x900 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x901 = @:tmpset0 __tmp__._0;
            _x902 = @:tmpset0 __tmp__._1;
        };
        var _x903:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x904:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x886, _x883, ((_x902 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x903 = @:tmpset0 __tmp__._0;
            _x904 = @:tmpset0 __tmp__._1;
        };
        var _x905:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x906:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x884, _x881, ((_x904 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x905 = @:tmpset0 __tmp__._0;
            _x906 = @:tmpset0 __tmp__._1;
        };
        var _x907:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x908:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x882, _x879, ((_x906 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x907 = @:tmpset0 __tmp__._0;
            _x908 = @:tmpset0 __tmp__._1;
        };
        var _x909:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x910:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x880, _x877, ((_x908 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x909 = @:tmpset0 __tmp__._0;
            _x910 = @:tmpset0 __tmp__._1;
        };
        var _x911 = ((((_x910 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x878 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x912:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x913:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x858, _x893, (0i64 : stdgo.GoUInt64));
            _x912 = @:tmpset0 __tmp__._0;
            _x913 = @:tmpset0 __tmp__._1;
        };
        var _x914:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x915:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x860, _x895, ((_x913 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x914 = @:tmpset0 __tmp__._0;
            _x915 = @:tmpset0 __tmp__._1;
        };
        var _x916:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x917:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x862, _x897, ((_x915 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x916 = @:tmpset0 __tmp__._0;
            _x917 = @:tmpset0 __tmp__._1;
        };
        var _x918:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x919:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x864, _x899, ((_x917 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x918 = @:tmpset0 __tmp__._0;
            _x919 = @:tmpset0 __tmp__._1;
        };
        var _x920:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x921:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x866, _x901, ((_x919 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x920 = @:tmpset0 __tmp__._0;
            _x921 = @:tmpset0 __tmp__._1;
        };
        var _x922:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x923:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x868, _x903, ((_x921 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x922 = @:tmpset0 __tmp__._0;
            _x923 = @:tmpset0 __tmp__._1;
        };
        var _x924:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x925:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x870, _x905, ((_x923 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x924 = @:tmpset0 __tmp__._0;
            _x925 = @:tmpset0 __tmp__._1;
        };
        var _x926:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x927:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x872, _x907, ((_x925 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x926 = @:tmpset0 __tmp__._0;
            _x927 = @:tmpset0 __tmp__._1;
        };
        var _x928:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x929:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x874, _x909, ((_x927 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x928 = @:tmpset0 __tmp__._0;
            _x929 = @:tmpset0 __tmp__._1;
        };
        var _x930:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x931:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x876, _x911, ((_x929 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x930 = @:tmpset0 __tmp__._0;
            _x931 = @:tmpset0 __tmp__._1;
        };
        var _x932:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x933:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (511i64 : stdgo.GoUInt64));
            _x933 = @:tmpset0 __tmp__._0;
            _x932 = @:tmpset0 __tmp__._1;
        };
        var _x934:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x935:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x935 = @:tmpset0 __tmp__._0;
            _x934 = @:tmpset0 __tmp__._1;
        };
        var _x936:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x937:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x937 = @:tmpset0 __tmp__._0;
            _x936 = @:tmpset0 __tmp__._1;
        };
        var _x938:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x939:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x939 = @:tmpset0 __tmp__._0;
            _x938 = @:tmpset0 __tmp__._1;
        };
        var _x940:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x941:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x941 = @:tmpset0 __tmp__._0;
            _x940 = @:tmpset0 __tmp__._1;
        };
        var _x942:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x943:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x943 = @:tmpset0 __tmp__._0;
            _x942 = @:tmpset0 __tmp__._1;
        };
        var _x944:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x945:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x945 = @:tmpset0 __tmp__._0;
            _x944 = @:tmpset0 __tmp__._1;
        };
        var _x946:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x947:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x947 = @:tmpset0 __tmp__._0;
            _x946 = @:tmpset0 __tmp__._1;
        };
        var _x948:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x949:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x912, (-1i64 : stdgo.GoUInt64));
            _x949 = @:tmpset0 __tmp__._0;
            _x948 = @:tmpset0 __tmp__._1;
        };
        var _x950:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x951:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x949, _x946, (0i64 : stdgo.GoUInt64));
            _x950 = @:tmpset0 __tmp__._0;
            _x951 = @:tmpset0 __tmp__._1;
        };
        var _x952:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x953:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x947, _x944, ((_x951 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x952 = @:tmpset0 __tmp__._0;
            _x953 = @:tmpset0 __tmp__._1;
        };
        var _x954:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x955:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x945, _x942, ((_x953 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x954 = @:tmpset0 __tmp__._0;
            _x955 = @:tmpset0 __tmp__._1;
        };
        var _x956:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x957:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x943, _x940, ((_x955 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x956 = @:tmpset0 __tmp__._0;
            _x957 = @:tmpset0 __tmp__._1;
        };
        var _x958:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x959:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x941, _x938, ((_x957 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x958 = @:tmpset0 __tmp__._0;
            _x959 = @:tmpset0 __tmp__._1;
        };
        var _x960:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x961:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x939, _x936, ((_x959 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x960 = @:tmpset0 __tmp__._0;
            _x961 = @:tmpset0 __tmp__._1;
        };
        var _x962:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x963:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x937, _x934, ((_x961 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x962 = @:tmpset0 __tmp__._0;
            _x963 = @:tmpset0 __tmp__._1;
        };
        var _x964:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x965:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x935, _x932, ((_x963 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x964 = @:tmpset0 __tmp__._0;
            _x965 = @:tmpset0 __tmp__._1;
        };
        var _x966 = ((((_x965 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x933 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x968:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x912, _x948, (0i64 : stdgo.GoUInt64));
            _x968 = @:tmpset0 __tmp__._1;
        };
        var _x969:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x970:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x914, _x950, ((_x968 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x969 = @:tmpset0 __tmp__._0;
            _x970 = @:tmpset0 __tmp__._1;
        };
        var _x971:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x972:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x916, _x952, ((_x970 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x971 = @:tmpset0 __tmp__._0;
            _x972 = @:tmpset0 __tmp__._1;
        };
        var _x973:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x974:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x918, _x954, ((_x972 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x973 = @:tmpset0 __tmp__._0;
            _x974 = @:tmpset0 __tmp__._1;
        };
        var _x975:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x976:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x920, _x956, ((_x974 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x975 = @:tmpset0 __tmp__._0;
            _x976 = @:tmpset0 __tmp__._1;
        };
        var _x977:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x978:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x922, _x958, ((_x976 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x977 = @:tmpset0 __tmp__._0;
            _x978 = @:tmpset0 __tmp__._1;
        };
        var _x979:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x980:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x924, _x960, ((_x978 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x979 = @:tmpset0 __tmp__._0;
            _x980 = @:tmpset0 __tmp__._1;
        };
        var _x981:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x982:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x926, _x962, ((_x980 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x981 = @:tmpset0 __tmp__._0;
            _x982 = @:tmpset0 __tmp__._1;
        };
        var _x983:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x984:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x928, _x964, ((_x982 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x983 = @:tmpset0 __tmp__._0;
            _x984 = @:tmpset0 __tmp__._1;
        };
        var _x985:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x986:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x930, _x966, ((_x984 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x985 = @:tmpset0 __tmp__._0;
            _x986 = @:tmpset0 __tmp__._1;
        };
        var _x987 = ((((_x986 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((_x931 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x988:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x989:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x969, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x988 = @:tmpset0 __tmp__._0;
            _x989 = @:tmpset0 __tmp__._1;
        };
        var _x990:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x991:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x971, (-1i64 : stdgo.GoUInt64), ((_x989 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x990 = @:tmpset0 __tmp__._0;
            _x991 = @:tmpset0 __tmp__._1;
        };
        var _x992:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x993:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x973, (-1i64 : stdgo.GoUInt64), ((_x991 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x992 = @:tmpset0 __tmp__._0;
            _x993 = @:tmpset0 __tmp__._1;
        };
        var _x994:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x995:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x975, (-1i64 : stdgo.GoUInt64), ((_x993 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x994 = @:tmpset0 __tmp__._0;
            _x995 = @:tmpset0 __tmp__._1;
        };
        var _x996:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x997:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x977, (-1i64 : stdgo.GoUInt64), ((_x995 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x996 = @:tmpset0 __tmp__._0;
            _x997 = @:tmpset0 __tmp__._1;
        };
        var _x998:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x999:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x979, (-1i64 : stdgo.GoUInt64), ((_x997 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x998 = @:tmpset0 __tmp__._0;
            _x999 = @:tmpset0 __tmp__._1;
        };
        var _x1000:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1001:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x981, (-1i64 : stdgo.GoUInt64), ((_x999 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1000 = @:tmpset0 __tmp__._0;
            _x1001 = @:tmpset0 __tmp__._1;
        };
        var _x1002:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1003:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x983, (-1i64 : stdgo.GoUInt64), ((_x1001 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1002 = @:tmpset0 __tmp__._0;
            _x1003 = @:tmpset0 __tmp__._1;
        };
        var _x1004:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1005:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x985, (511i64 : stdgo.GoUInt64), ((_x1003 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1004 = @:tmpset0 __tmp__._0;
            _x1005 = @:tmpset0 __tmp__._1;
        };
        var _x1007:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x987, (0i64 : stdgo.GoUInt64), ((_x1005 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x1007 = @:tmpset0 __tmp__._1;
        };
        var _x1008:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1008__pointer__ = stdgo.Go.pointer(_x1008);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1008__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x988, _x969);
        var _x1009:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1009__pointer__ = stdgo.Go.pointer(_x1009);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1009__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x990, _x971);
        var _x1010:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1010__pointer__ = stdgo.Go.pointer(_x1010);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1010__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x992, _x973);
        var _x1011:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1011__pointer__ = stdgo.Go.pointer(_x1011);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1011__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x994, _x975);
        var _x1012:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1012__pointer__ = stdgo.Go.pointer(_x1012);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1012__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x996, _x977);
        var _x1013:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1013__pointer__ = stdgo.Go.pointer(_x1013);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1013__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x998, _x979);
        var _x1014:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1014__pointer__ = stdgo.Go.pointer(_x1014);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1014__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x1000, _x981);
        var _x1015:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1015__pointer__ = stdgo.Go.pointer(_x1015);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1015__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x1002, _x983);
        var _x1016:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x1016__pointer__ = stdgo.Go.pointer(_x1016);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1016__pointer__, (_x1007 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x1004, _x985);
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
