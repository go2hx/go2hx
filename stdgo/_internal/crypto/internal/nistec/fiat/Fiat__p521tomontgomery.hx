package stdgo._internal.crypto.internal.nistec.fiat;
function _p521ToMontgomery(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521nonmontgomerydomainfieldelement.T_p521NonMontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(0 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x2 = @:tmpset0 __tmp__._0;
            _x1 = @:tmpset0 __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(1 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x4 = @:tmpset0 __tmp__._0;
            _x3 = @:tmpset0 __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x2, _x3, (0i64 : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (511i64 : stdgo.GoUInt64));
            _x8 = @:tmpset0 __tmp__._0;
            _x7 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x10 = @:tmpset0 __tmp__._0;
            _x9 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x12 = @:tmpset0 __tmp__._0;
            _x11 = @:tmpset0 __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x14 = @:tmpset0 __tmp__._0;
            _x13 = @:tmpset0 __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x16 = @:tmpset0 __tmp__._0;
            _x15 = @:tmpset0 __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x18 = @:tmpset0 __tmp__._0;
            _x17 = @:tmpset0 __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x20 = @:tmpset0 __tmp__._0;
            _x19 = @:tmpset0 __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x22 = @:tmpset0 __tmp__._0;
            _x21 = @:tmpset0 __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-1i64 : stdgo.GoUInt64));
            _x24 = @:tmpset0 __tmp__._0;
            _x23 = @:tmpset0 __tmp__._1;
        };
        var _x25:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x24, _x21, (0i64 : stdgo.GoUInt64));
            _x25 = @:tmpset0 __tmp__._0;
            _x26 = @:tmpset0 __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x22, _x19, ((_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x27 = @:tmpset0 __tmp__._0;
            _x28 = @:tmpset0 __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x20, _x17, ((_x28 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x29 = @:tmpset0 __tmp__._0;
            _x30 = @:tmpset0 __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x18, _x15, ((_x30 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x31 = @:tmpset0 __tmp__._0;
            _x32 = @:tmpset0 __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x16, _x13, ((_x32 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x33 = @:tmpset0 __tmp__._0;
            _x34 = @:tmpset0 __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x14, _x11, ((_x34 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x35 = @:tmpset0 __tmp__._0;
            _x36 = @:tmpset0 __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x12, _x9, ((_x36 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x37 = @:tmpset0 __tmp__._0;
            _x38 = @:tmpset0 __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x38 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x39 = @:tmpset0 __tmp__._0;
            _x40 = @:tmpset0 __tmp__._1;
        };
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x1, _x23, (0i64 : stdgo.GoUInt64));
            _x42 = @:tmpset0 __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x5, _x25, ((_x42 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x43 = @:tmpset0 __tmp__._0;
            _x44 = @:tmpset0 __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x6 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x4 : stdgo.GoUInt64)), _x27, ((_x44 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x45 = @:tmpset0 __tmp__._0;
            _x46 = @:tmpset0 __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x29, ((_x46 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x47 = @:tmpset0 __tmp__._0;
            _x48 = @:tmpset0 __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x31, ((_x48 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x49 = @:tmpset0 __tmp__._0;
            _x50 = @:tmpset0 __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x33, ((_x50 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x51 = @:tmpset0 __tmp__._0;
            _x52 = @:tmpset0 __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x35, ((_x52 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x53 = @:tmpset0 __tmp__._0;
            _x54 = @:tmpset0 __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x37, ((_x54 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x55 = @:tmpset0 __tmp__._0;
            _x56 = @:tmpset0 __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64((0i64 : stdgo.GoUInt64), _x39, ((_x56 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x57 = @:tmpset0 __tmp__._0;
            _x58 = @:tmpset0 __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(2 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x60 = @:tmpset0 __tmp__._0;
            _x59 = @:tmpset0 __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x45, _x59, (0i64 : stdgo.GoUInt64));
            _x61 = @:tmpset0 __tmp__._0;
            _x62 = @:tmpset0 __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x47, _x60, ((_x62 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x63 = @:tmpset0 __tmp__._0;
            _x64 = @:tmpset0 __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x49, (0i64 : stdgo.GoUInt64), ((_x64 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x65 = @:tmpset0 __tmp__._0;
            _x66 = @:tmpset0 __tmp__._1;
        };
        var _x67:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x51, (0i64 : stdgo.GoUInt64), ((_x66 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x67 = @:tmpset0 __tmp__._0;
            _x68 = @:tmpset0 __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x53, (0i64 : stdgo.GoUInt64), ((_x68 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x69 = @:tmpset0 __tmp__._0;
            _x70 = @:tmpset0 __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x55, (0i64 : stdgo.GoUInt64), ((_x70 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x71 = @:tmpset0 __tmp__._0;
            _x72 = @:tmpset0 __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, (0i64 : stdgo.GoUInt64), ((_x72 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x73 = @:tmpset0 __tmp__._0;
            _x74 = @:tmpset0 __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (511i64 : stdgo.GoUInt64));
            _x76 = @:tmpset0 __tmp__._0;
            _x75 = @:tmpset0 __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x78 = @:tmpset0 __tmp__._0;
            _x77 = @:tmpset0 __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x80 = @:tmpset0 __tmp__._0;
            _x79 = @:tmpset0 __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x82 = @:tmpset0 __tmp__._0;
            _x81 = @:tmpset0 __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x84 = @:tmpset0 __tmp__._0;
            _x83 = @:tmpset0 __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x86 = @:tmpset0 __tmp__._0;
            _x85 = @:tmpset0 __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x88 = @:tmpset0 __tmp__._0;
            _x87 = @:tmpset0 __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x90 = @:tmpset0 __tmp__._0;
            _x89 = @:tmpset0 __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x43, (-1i64 : stdgo.GoUInt64));
            _x92 = @:tmpset0 __tmp__._0;
            _x91 = @:tmpset0 __tmp__._1;
        };
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x92, _x89, (0i64 : stdgo.GoUInt64));
            _x93 = @:tmpset0 __tmp__._0;
            _x94 = @:tmpset0 __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x90, _x87, ((_x94 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x95 = @:tmpset0 __tmp__._0;
            _x96 = @:tmpset0 __tmp__._1;
        };
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x88, _x85, ((_x96 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x97 = @:tmpset0 __tmp__._0;
            _x98 = @:tmpset0 __tmp__._1;
        };
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x86, _x83, ((_x98 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x99 = @:tmpset0 __tmp__._0;
            _x100 = @:tmpset0 __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, _x81, ((_x100 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x101 = @:tmpset0 __tmp__._0;
            _x102 = @:tmpset0 __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, _x79, ((_x102 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x103 = @:tmpset0 __tmp__._0;
            _x104 = @:tmpset0 __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x80, _x77, ((_x104 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x105 = @:tmpset0 __tmp__._0;
            _x106 = @:tmpset0 __tmp__._1;
        };
        var _x107:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x78, _x75, ((_x106 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x107 = @:tmpset0 __tmp__._0;
            _x108 = @:tmpset0 __tmp__._1;
        };
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x43, _x91, (0i64 : stdgo.GoUInt64));
            _x110 = @:tmpset0 __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x61, _x93, ((_x110 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x111 = @:tmpset0 __tmp__._0;
            _x112 = @:tmpset0 __tmp__._1;
        };
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x63, _x95, ((_x112 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x113 = @:tmpset0 __tmp__._0;
            _x114 = @:tmpset0 __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x65, _x97, ((_x114 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x115 = @:tmpset0 __tmp__._0;
            _x116 = @:tmpset0 __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x67, _x99, ((_x116 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x117 = @:tmpset0 __tmp__._0;
            _x118 = @:tmpset0 __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x69, _x101, ((_x118 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x119 = @:tmpset0 __tmp__._0;
            _x120 = @:tmpset0 __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x71, _x103, ((_x120 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x121 = @:tmpset0 __tmp__._0;
            _x122 = @:tmpset0 __tmp__._1;
        };
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x105, ((_x122 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x123 = @:tmpset0 __tmp__._0;
            _x124 = @:tmpset0 __tmp__._1;
        };
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x74 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x58 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x40 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x8 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x107, ((_x124 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x125 = @:tmpset0 __tmp__._0;
            _x126 = @:tmpset0 __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(3 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x128 = @:tmpset0 __tmp__._0;
            _x127 = @:tmpset0 __tmp__._1;
        };
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x127, (0i64 : stdgo.GoUInt64));
            _x129 = @:tmpset0 __tmp__._0;
            _x130 = @:tmpset0 __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x128, ((_x130 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x131 = @:tmpset0 __tmp__._0;
            _x132 = @:tmpset0 __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x117, (0i64 : stdgo.GoUInt64), ((_x132 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x133 = @:tmpset0 __tmp__._0;
            _x134 = @:tmpset0 __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x119, (0i64 : stdgo.GoUInt64), ((_x134 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x135 = @:tmpset0 __tmp__._0;
            _x136 = @:tmpset0 __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x121, (0i64 : stdgo.GoUInt64), ((_x136 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x137 = @:tmpset0 __tmp__._0;
            _x138 = @:tmpset0 __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x123, (0i64 : stdgo.GoUInt64), ((_x138 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x139 = @:tmpset0 __tmp__._0;
            _x140 = @:tmpset0 __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x125, (0i64 : stdgo.GoUInt64), ((_x140 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x141 = @:tmpset0 __tmp__._0;
            _x142 = @:tmpset0 __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (511i64 : stdgo.GoUInt64));
            _x144 = @:tmpset0 __tmp__._0;
            _x143 = @:tmpset0 __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x146 = @:tmpset0 __tmp__._0;
            _x145 = @:tmpset0 __tmp__._1;
        };
        var _x147:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x148 = @:tmpset0 __tmp__._0;
            _x147 = @:tmpset0 __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x150 = @:tmpset0 __tmp__._0;
            _x149 = @:tmpset0 __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x152 = @:tmpset0 __tmp__._0;
            _x151 = @:tmpset0 __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x154 = @:tmpset0 __tmp__._0;
            _x153 = @:tmpset0 __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x156 = @:tmpset0 __tmp__._0;
            _x155 = @:tmpset0 __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x158 = @:tmpset0 __tmp__._0;
            _x157 = @:tmpset0 __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x111, (-1i64 : stdgo.GoUInt64));
            _x160 = @:tmpset0 __tmp__._0;
            _x159 = @:tmpset0 __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x160, _x157, (0i64 : stdgo.GoUInt64));
            _x161 = @:tmpset0 __tmp__._0;
            _x162 = @:tmpset0 __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x158, _x155, ((_x162 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x163 = @:tmpset0 __tmp__._0;
            _x164 = @:tmpset0 __tmp__._1;
        };
        var _x165:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x156, _x153, ((_x164 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x165 = @:tmpset0 __tmp__._0;
            _x166 = @:tmpset0 __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x154, _x151, ((_x166 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x167 = @:tmpset0 __tmp__._0;
            _x168 = @:tmpset0 __tmp__._1;
        };
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x152, _x149, ((_x168 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x169 = @:tmpset0 __tmp__._0;
            _x170 = @:tmpset0 __tmp__._1;
        };
        var _x171:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x172:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x150, _x147, ((_x170 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x171 = @:tmpset0 __tmp__._0;
            _x172 = @:tmpset0 __tmp__._1;
        };
        var _x173:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x174:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x148, _x145, ((_x172 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x173 = @:tmpset0 __tmp__._0;
            _x174 = @:tmpset0 __tmp__._1;
        };
        var _x175:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x176:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x146, _x143, ((_x174 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x175 = @:tmpset0 __tmp__._0;
            _x176 = @:tmpset0 __tmp__._1;
        };
        var _x178:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x159, (0i64 : stdgo.GoUInt64));
            _x178 = @:tmpset0 __tmp__._1;
        };
        var _x179:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x180:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x129, _x161, ((_x178 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x179 = @:tmpset0 __tmp__._0;
            _x180 = @:tmpset0 __tmp__._1;
        };
        var _x181:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x182:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x131, _x163, ((_x180 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x181 = @:tmpset0 __tmp__._0;
            _x182 = @:tmpset0 __tmp__._1;
        };
        var _x183:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x184:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x133, _x165, ((_x182 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x183 = @:tmpset0 __tmp__._0;
            _x184 = @:tmpset0 __tmp__._1;
        };
        var _x185:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x186:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x135, _x167, ((_x184 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x185 = @:tmpset0 __tmp__._0;
            _x186 = @:tmpset0 __tmp__._1;
        };
        var _x187:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x188:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x137, _x169, ((_x186 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x187 = @:tmpset0 __tmp__._0;
            _x188 = @:tmpset0 __tmp__._1;
        };
        var _x189:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x190:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x139, _x171, ((_x188 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x189 = @:tmpset0 __tmp__._0;
            _x190 = @:tmpset0 __tmp__._1;
        };
        var _x191:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x192:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x141, _x173, ((_x190 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x191 = @:tmpset0 __tmp__._0;
            _x192 = @:tmpset0 __tmp__._1;
        };
        var _x193:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x194:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x142 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x126 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x108 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x76 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x175, ((_x192 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x193 = @:tmpset0 __tmp__._0;
            _x194 = @:tmpset0 __tmp__._1;
        };
        var _x195:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x196:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(4 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x196 = @:tmpset0 __tmp__._0;
            _x195 = @:tmpset0 __tmp__._1;
        };
        var _x197:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x198:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x181, _x195, (0i64 : stdgo.GoUInt64));
            _x197 = @:tmpset0 __tmp__._0;
            _x198 = @:tmpset0 __tmp__._1;
        };
        var _x199:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x200:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x183, _x196, ((_x198 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x199 = @:tmpset0 __tmp__._0;
            _x200 = @:tmpset0 __tmp__._1;
        };
        var _x201:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x202:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x185, (0i64 : stdgo.GoUInt64), ((_x200 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x201 = @:tmpset0 __tmp__._0;
            _x202 = @:tmpset0 __tmp__._1;
        };
        var _x203:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x204:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x187, (0i64 : stdgo.GoUInt64), ((_x202 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x203 = @:tmpset0 __tmp__._0;
            _x204 = @:tmpset0 __tmp__._1;
        };
        var _x205:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x206:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x189, (0i64 : stdgo.GoUInt64), ((_x204 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x205 = @:tmpset0 __tmp__._0;
            _x206 = @:tmpset0 __tmp__._1;
        };
        var _x207:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x208:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x191, (0i64 : stdgo.GoUInt64), ((_x206 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x207 = @:tmpset0 __tmp__._0;
            _x208 = @:tmpset0 __tmp__._1;
        };
        var _x209:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x210:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x193, (0i64 : stdgo.GoUInt64), ((_x208 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x209 = @:tmpset0 __tmp__._0;
            _x210 = @:tmpset0 __tmp__._1;
        };
        var _x211:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x212:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (511i64 : stdgo.GoUInt64));
            _x212 = @:tmpset0 __tmp__._0;
            _x211 = @:tmpset0 __tmp__._1;
        };
        var _x213:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x214:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x214 = @:tmpset0 __tmp__._0;
            _x213 = @:tmpset0 __tmp__._1;
        };
        var _x215:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x216:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x216 = @:tmpset0 __tmp__._0;
            _x215 = @:tmpset0 __tmp__._1;
        };
        var _x217:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x218:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x218 = @:tmpset0 __tmp__._0;
            _x217 = @:tmpset0 __tmp__._1;
        };
        var _x219:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x220:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x220 = @:tmpset0 __tmp__._0;
            _x219 = @:tmpset0 __tmp__._1;
        };
        var _x221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x222:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x222 = @:tmpset0 __tmp__._0;
            _x221 = @:tmpset0 __tmp__._1;
        };
        var _x223:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x224:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x224 = @:tmpset0 __tmp__._0;
            _x223 = @:tmpset0 __tmp__._1;
        };
        var _x225:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x226:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
            _x226 = @:tmpset0 __tmp__._0;
            _x225 = @:tmpset0 __tmp__._1;
        };
        var _x227:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x228:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x179, (-1i64 : stdgo.GoUInt64));
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
        var _x246:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x179, _x227, (0i64 : stdgo.GoUInt64));
            _x246 = @:tmpset0 __tmp__._1;
        };
        var _x247:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x248:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x197, _x229, ((_x246 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x247 = @:tmpset0 __tmp__._0;
            _x248 = @:tmpset0 __tmp__._1;
        };
        var _x249:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x199, _x231, ((_x248 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x249 = @:tmpset0 __tmp__._0;
            _x250 = @:tmpset0 __tmp__._1;
        };
        var _x251:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x252:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x201, _x233, ((_x250 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x251 = @:tmpset0 __tmp__._0;
            _x252 = @:tmpset0 __tmp__._1;
        };
        var _x253:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x254:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x203, _x235, ((_x252 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x253 = @:tmpset0 __tmp__._0;
            _x254 = @:tmpset0 __tmp__._1;
        };
        var _x255:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x256:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x205, _x237, ((_x254 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x255 = @:tmpset0 __tmp__._0;
            _x256 = @:tmpset0 __tmp__._1;
        };
        var _x257:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x258:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x207, _x239, ((_x256 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x257 = @:tmpset0 __tmp__._0;
            _x258 = @:tmpset0 __tmp__._1;
        };
        var _x259:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x260:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x209, _x241, ((_x258 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x259 = @:tmpset0 __tmp__._0;
            _x260 = @:tmpset0 __tmp__._1;
        };
        var _x261:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x262:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x210 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x194 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x176 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x144 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x243, ((_x260 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x261 = @:tmpset0 __tmp__._0;
            _x262 = @:tmpset0 __tmp__._1;
        };
        var _x263:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x264:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(5 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x264 = @:tmpset0 __tmp__._0;
            _x263 = @:tmpset0 __tmp__._1;
        };
        var _x265:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x266:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x249, _x263, (0i64 : stdgo.GoUInt64));
            _x265 = @:tmpset0 __tmp__._0;
            _x266 = @:tmpset0 __tmp__._1;
        };
        var _x267:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x268:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x251, _x264, ((_x266 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x267 = @:tmpset0 __tmp__._0;
            _x268 = @:tmpset0 __tmp__._1;
        };
        var _x269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x270:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x253, (0i64 : stdgo.GoUInt64), ((_x268 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x269 = @:tmpset0 __tmp__._0;
            _x270 = @:tmpset0 __tmp__._1;
        };
        var _x271:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x272:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x255, (0i64 : stdgo.GoUInt64), ((_x270 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x271 = @:tmpset0 __tmp__._0;
            _x272 = @:tmpset0 __tmp__._1;
        };
        var _x273:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x274:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x257, (0i64 : stdgo.GoUInt64), ((_x272 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x273 = @:tmpset0 __tmp__._0;
            _x274 = @:tmpset0 __tmp__._1;
        };
        var _x275:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x276:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x259, (0i64 : stdgo.GoUInt64), ((_x274 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x275 = @:tmpset0 __tmp__._0;
            _x276 = @:tmpset0 __tmp__._1;
        };
        var _x277:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x278:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x261, (0i64 : stdgo.GoUInt64), ((_x276 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x277 = @:tmpset0 __tmp__._0;
            _x278 = @:tmpset0 __tmp__._1;
        };
        var _x279:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x280:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (511i64 : stdgo.GoUInt64));
            _x280 = @:tmpset0 __tmp__._0;
            _x279 = @:tmpset0 __tmp__._1;
        };
        var _x281:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x282:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x282 = @:tmpset0 __tmp__._0;
            _x281 = @:tmpset0 __tmp__._1;
        };
        var _x283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x284:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x284 = @:tmpset0 __tmp__._0;
            _x283 = @:tmpset0 __tmp__._1;
        };
        var _x285:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x286:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x286 = @:tmpset0 __tmp__._0;
            _x285 = @:tmpset0 __tmp__._1;
        };
        var _x287:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x288 = @:tmpset0 __tmp__._0;
            _x287 = @:tmpset0 __tmp__._1;
        };
        var _x289:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x290:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x290 = @:tmpset0 __tmp__._0;
            _x289 = @:tmpset0 __tmp__._1;
        };
        var _x291:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x292:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x292 = @:tmpset0 __tmp__._0;
            _x291 = @:tmpset0 __tmp__._1;
        };
        var _x293:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x294:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x294 = @:tmpset0 __tmp__._0;
            _x293 = @:tmpset0 __tmp__._1;
        };
        var _x295:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x296:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x247, (-1i64 : stdgo.GoUInt64));
            _x296 = @:tmpset0 __tmp__._0;
            _x295 = @:tmpset0 __tmp__._1;
        };
        var _x297:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x298:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x296, _x293, (0i64 : stdgo.GoUInt64));
            _x297 = @:tmpset0 __tmp__._0;
            _x298 = @:tmpset0 __tmp__._1;
        };
        var _x299:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x300:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x294, _x291, ((_x298 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x299 = @:tmpset0 __tmp__._0;
            _x300 = @:tmpset0 __tmp__._1;
        };
        var _x301:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x302:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x292, _x289, ((_x300 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x301 = @:tmpset0 __tmp__._0;
            _x302 = @:tmpset0 __tmp__._1;
        };
        var _x303:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x304:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x290, _x287, ((_x302 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x303 = @:tmpset0 __tmp__._0;
            _x304 = @:tmpset0 __tmp__._1;
        };
        var _x305:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x306:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x288, _x285, ((_x304 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x305 = @:tmpset0 __tmp__._0;
            _x306 = @:tmpset0 __tmp__._1;
        };
        var _x307:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x308:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x286, _x283, ((_x306 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x307 = @:tmpset0 __tmp__._0;
            _x308 = @:tmpset0 __tmp__._1;
        };
        var _x309:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x310:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x284, _x281, ((_x308 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x309 = @:tmpset0 __tmp__._0;
            _x310 = @:tmpset0 __tmp__._1;
        };
        var _x311:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x282, _x279, ((_x310 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x311 = @:tmpset0 __tmp__._0;
            _x312 = @:tmpset0 __tmp__._1;
        };
        var _x314:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x247, _x295, (0i64 : stdgo.GoUInt64));
            _x314 = @:tmpset0 __tmp__._1;
        };
        var _x315:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x316:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x265, _x297, ((_x314 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x315 = @:tmpset0 __tmp__._0;
            _x316 = @:tmpset0 __tmp__._1;
        };
        var _x317:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x318:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x267, _x299, ((_x316 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x317 = @:tmpset0 __tmp__._0;
            _x318 = @:tmpset0 __tmp__._1;
        };
        var _x319:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x320:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x269, _x301, ((_x318 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x319 = @:tmpset0 __tmp__._0;
            _x320 = @:tmpset0 __tmp__._1;
        };
        var _x321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x322:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x271, _x303, ((_x320 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x321 = @:tmpset0 __tmp__._0;
            _x322 = @:tmpset0 __tmp__._1;
        };
        var _x323:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x324:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x273, _x305, ((_x322 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x323 = @:tmpset0 __tmp__._0;
            _x324 = @:tmpset0 __tmp__._1;
        };
        var _x325:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x326:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x275, _x307, ((_x324 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x325 = @:tmpset0 __tmp__._0;
            _x326 = @:tmpset0 __tmp__._1;
        };
        var _x327:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x328:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x277, _x309, ((_x326 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x327 = @:tmpset0 __tmp__._0;
            _x328 = @:tmpset0 __tmp__._1;
        };
        var _x329:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x330:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x278 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x262 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x244 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x212 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x311, ((_x328 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x329 = @:tmpset0 __tmp__._0;
            _x330 = @:tmpset0 __tmp__._1;
        };
        var _x331:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x332:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(6 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x332 = @:tmpset0 __tmp__._0;
            _x331 = @:tmpset0 __tmp__._1;
        };
        var _x333:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x334:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x317, _x331, (0i64 : stdgo.GoUInt64));
            _x333 = @:tmpset0 __tmp__._0;
            _x334 = @:tmpset0 __tmp__._1;
        };
        var _x335:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x319, _x332, ((_x334 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x335 = @:tmpset0 __tmp__._0;
            _x336 = @:tmpset0 __tmp__._1;
        };
        var _x337:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x338:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x321, (0i64 : stdgo.GoUInt64), ((_x336 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x337 = @:tmpset0 __tmp__._0;
            _x338 = @:tmpset0 __tmp__._1;
        };
        var _x339:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x340:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x323, (0i64 : stdgo.GoUInt64), ((_x338 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x339 = @:tmpset0 __tmp__._0;
            _x340 = @:tmpset0 __tmp__._1;
        };
        var _x341:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x342:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x325, (0i64 : stdgo.GoUInt64), ((_x340 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x341 = @:tmpset0 __tmp__._0;
            _x342 = @:tmpset0 __tmp__._1;
        };
        var _x343:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x327, (0i64 : stdgo.GoUInt64), ((_x342 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x343 = @:tmpset0 __tmp__._0;
            _x344 = @:tmpset0 __tmp__._1;
        };
        var _x345:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x346:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x329, (0i64 : stdgo.GoUInt64), ((_x344 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x345 = @:tmpset0 __tmp__._0;
            _x346 = @:tmpset0 __tmp__._1;
        };
        var _x347:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x348:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (511i64 : stdgo.GoUInt64));
            _x348 = @:tmpset0 __tmp__._0;
            _x347 = @:tmpset0 __tmp__._1;
        };
        var _x349:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x350:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x350 = @:tmpset0 __tmp__._0;
            _x349 = @:tmpset0 __tmp__._1;
        };
        var _x351:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x352:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x352 = @:tmpset0 __tmp__._0;
            _x351 = @:tmpset0 __tmp__._1;
        };
        var _x353:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x354:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x354 = @:tmpset0 __tmp__._0;
            _x353 = @:tmpset0 __tmp__._1;
        };
        var _x355:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x356:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x356 = @:tmpset0 __tmp__._0;
            _x355 = @:tmpset0 __tmp__._1;
        };
        var _x357:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x358:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x358 = @:tmpset0 __tmp__._0;
            _x357 = @:tmpset0 __tmp__._1;
        };
        var _x359:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x360:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x360 = @:tmpset0 __tmp__._0;
            _x359 = @:tmpset0 __tmp__._1;
        };
        var _x361:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x362:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x362 = @:tmpset0 __tmp__._0;
            _x361 = @:tmpset0 __tmp__._1;
        };
        var _x363:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x364:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x315, (-1i64 : stdgo.GoUInt64));
            _x364 = @:tmpset0 __tmp__._0;
            _x363 = @:tmpset0 __tmp__._1;
        };
        var _x365:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x366:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x364, _x361, (0i64 : stdgo.GoUInt64));
            _x365 = @:tmpset0 __tmp__._0;
            _x366 = @:tmpset0 __tmp__._1;
        };
        var _x367:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x368:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x362, _x359, ((_x366 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x367 = @:tmpset0 __tmp__._0;
            _x368 = @:tmpset0 __tmp__._1;
        };
        var _x369:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x370:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x360, _x357, ((_x368 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x369 = @:tmpset0 __tmp__._0;
            _x370 = @:tmpset0 __tmp__._1;
        };
        var _x371:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x372:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x358, _x355, ((_x370 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x371 = @:tmpset0 __tmp__._0;
            _x372 = @:tmpset0 __tmp__._1;
        };
        var _x373:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x374:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x356, _x353, ((_x372 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x373 = @:tmpset0 __tmp__._0;
            _x374 = @:tmpset0 __tmp__._1;
        };
        var _x375:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x376:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x354, _x351, ((_x374 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x375 = @:tmpset0 __tmp__._0;
            _x376 = @:tmpset0 __tmp__._1;
        };
        var _x377:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x378:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x352, _x349, ((_x376 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x377 = @:tmpset0 __tmp__._0;
            _x378 = @:tmpset0 __tmp__._1;
        };
        var _x379:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x380:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x350, _x347, ((_x378 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x379 = @:tmpset0 __tmp__._0;
            _x380 = @:tmpset0 __tmp__._1;
        };
        var _x382:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x315, _x363, (0i64 : stdgo.GoUInt64));
            _x382 = @:tmpset0 __tmp__._1;
        };
        var _x383:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x384:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x333, _x365, ((_x382 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x383 = @:tmpset0 __tmp__._0;
            _x384 = @:tmpset0 __tmp__._1;
        };
        var _x385:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x386:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x335, _x367, ((_x384 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x385 = @:tmpset0 __tmp__._0;
            _x386 = @:tmpset0 __tmp__._1;
        };
        var _x387:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x337, _x369, ((_x386 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x387 = @:tmpset0 __tmp__._0;
            _x388 = @:tmpset0 __tmp__._1;
        };
        var _x389:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x390:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x339, _x371, ((_x388 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x389 = @:tmpset0 __tmp__._0;
            _x390 = @:tmpset0 __tmp__._1;
        };
        var _x391:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x392:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x341, _x373, ((_x390 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x391 = @:tmpset0 __tmp__._0;
            _x392 = @:tmpset0 __tmp__._1;
        };
        var _x393:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x394:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x343, _x375, ((_x392 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x393 = @:tmpset0 __tmp__._0;
            _x394 = @:tmpset0 __tmp__._1;
        };
        var _x395:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x396:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x345, _x377, ((_x394 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x395 = @:tmpset0 __tmp__._0;
            _x396 = @:tmpset0 __tmp__._1;
        };
        var _x397:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x398:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x346 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x330 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x312 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x280 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x379, ((_x396 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x397 = @:tmpset0 __tmp__._0;
            _x398 = @:tmpset0 __tmp__._1;
        };
        var _x399:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x400:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(7 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x400 = @:tmpset0 __tmp__._0;
            _x399 = @:tmpset0 __tmp__._1;
        };
        var _x401:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x402:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x385, _x399, (0i64 : stdgo.GoUInt64));
            _x401 = @:tmpset0 __tmp__._0;
            _x402 = @:tmpset0 __tmp__._1;
        };
        var _x403:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x404:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x387, _x400, ((_x402 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x403 = @:tmpset0 __tmp__._0;
            _x404 = @:tmpset0 __tmp__._1;
        };
        var _x405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x406:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x389, (0i64 : stdgo.GoUInt64), ((_x404 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x405 = @:tmpset0 __tmp__._0;
            _x406 = @:tmpset0 __tmp__._1;
        };
        var _x407:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x408:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x391, (0i64 : stdgo.GoUInt64), ((_x406 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x407 = @:tmpset0 __tmp__._0;
            _x408 = @:tmpset0 __tmp__._1;
        };
        var _x409:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x410:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x393, (0i64 : stdgo.GoUInt64), ((_x408 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x409 = @:tmpset0 __tmp__._0;
            _x410 = @:tmpset0 __tmp__._1;
        };
        var _x411:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x412:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x395, (0i64 : stdgo.GoUInt64), ((_x410 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x411 = @:tmpset0 __tmp__._0;
            _x412 = @:tmpset0 __tmp__._1;
        };
        var _x413:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x414:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x397, (0i64 : stdgo.GoUInt64), ((_x412 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x413 = @:tmpset0 __tmp__._0;
            _x414 = @:tmpset0 __tmp__._1;
        };
        var _x415:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x416:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (511i64 : stdgo.GoUInt64));
            _x416 = @:tmpset0 __tmp__._0;
            _x415 = @:tmpset0 __tmp__._1;
        };
        var _x417:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x418:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x418 = @:tmpset0 __tmp__._0;
            _x417 = @:tmpset0 __tmp__._1;
        };
        var _x419:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x420:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x420 = @:tmpset0 __tmp__._0;
            _x419 = @:tmpset0 __tmp__._1;
        };
        var _x421:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x422:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x422 = @:tmpset0 __tmp__._0;
            _x421 = @:tmpset0 __tmp__._1;
        };
        var _x423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x424:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x424 = @:tmpset0 __tmp__._0;
            _x423 = @:tmpset0 __tmp__._1;
        };
        var _x425:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x426:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x426 = @:tmpset0 __tmp__._0;
            _x425 = @:tmpset0 __tmp__._1;
        };
        var _x427:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x428:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x428 = @:tmpset0 __tmp__._0;
            _x427 = @:tmpset0 __tmp__._1;
        };
        var _x429:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x430:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x430 = @:tmpset0 __tmp__._0;
            _x429 = @:tmpset0 __tmp__._1;
        };
        var _x431:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x432:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x383, (-1i64 : stdgo.GoUInt64));
            _x432 = @:tmpset0 __tmp__._0;
            _x431 = @:tmpset0 __tmp__._1;
        };
        var _x433:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x434:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x432, _x429, (0i64 : stdgo.GoUInt64));
            _x433 = @:tmpset0 __tmp__._0;
            _x434 = @:tmpset0 __tmp__._1;
        };
        var _x435:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x436:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x430, _x427, ((_x434 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x435 = @:tmpset0 __tmp__._0;
            _x436 = @:tmpset0 __tmp__._1;
        };
        var _x437:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x438:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x428, _x425, ((_x436 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x437 = @:tmpset0 __tmp__._0;
            _x438 = @:tmpset0 __tmp__._1;
        };
        var _x439:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x440:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x426, _x423, ((_x438 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x439 = @:tmpset0 __tmp__._0;
            _x440 = @:tmpset0 __tmp__._1;
        };
        var _x441:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x442:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x424, _x421, ((_x440 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x441 = @:tmpset0 __tmp__._0;
            _x442 = @:tmpset0 __tmp__._1;
        };
        var _x443:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x444:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x422, _x419, ((_x442 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x443 = @:tmpset0 __tmp__._0;
            _x444 = @:tmpset0 __tmp__._1;
        };
        var _x445:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x446:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x420, _x417, ((_x444 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x445 = @:tmpset0 __tmp__._0;
            _x446 = @:tmpset0 __tmp__._1;
        };
        var _x447:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x448:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x418, _x415, ((_x446 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x447 = @:tmpset0 __tmp__._0;
            _x448 = @:tmpset0 __tmp__._1;
        };
        var _x450:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x383, _x431, (0i64 : stdgo.GoUInt64));
            _x450 = @:tmpset0 __tmp__._1;
        };
        var _x451:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x452:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x401, _x433, ((_x450 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x451 = @:tmpset0 __tmp__._0;
            _x452 = @:tmpset0 __tmp__._1;
        };
        var _x453:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x454:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x403, _x435, ((_x452 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x453 = @:tmpset0 __tmp__._0;
            _x454 = @:tmpset0 __tmp__._1;
        };
        var _x455:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x456:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x405, _x437, ((_x454 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x455 = @:tmpset0 __tmp__._0;
            _x456 = @:tmpset0 __tmp__._1;
        };
        var _x457:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x458:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x407, _x439, ((_x456 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x457 = @:tmpset0 __tmp__._0;
            _x458 = @:tmpset0 __tmp__._1;
        };
        var _x459:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x409, _x441, ((_x458 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x459 = @:tmpset0 __tmp__._0;
            _x460 = @:tmpset0 __tmp__._1;
        };
        var _x461:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x462:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x411, _x443, ((_x460 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x461 = @:tmpset0 __tmp__._0;
            _x462 = @:tmpset0 __tmp__._1;
        };
        var _x463:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x464:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x413, _x445, ((_x462 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x463 = @:tmpset0 __tmp__._0;
            _x464 = @:tmpset0 __tmp__._1;
        };
        var _x465:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x466:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x414 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x398 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x380 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x348 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x447, ((_x464 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x465 = @:tmpset0 __tmp__._0;
            _x466 = @:tmpset0 __tmp__._1;
        };
        var _x467:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x468:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_arg1[(8 : stdgo.GoInt)], (70368744177664i64 : stdgo.GoUInt64));
            _x468 = @:tmpset0 __tmp__._0;
            _x467 = @:tmpset0 __tmp__._1;
        };
        var _x469:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x470:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x453, _x467, (0i64 : stdgo.GoUInt64));
            _x469 = @:tmpset0 __tmp__._0;
            _x470 = @:tmpset0 __tmp__._1;
        };
        var _x471:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x472:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x455, _x468, ((_x470 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x471 = @:tmpset0 __tmp__._0;
            _x472 = @:tmpset0 __tmp__._1;
        };
        var _x473:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x457, (0i64 : stdgo.GoUInt64), ((_x472 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x473 = @:tmpset0 __tmp__._0;
            _x474 = @:tmpset0 __tmp__._1;
        };
        var _x475:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x476:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x459, (0i64 : stdgo.GoUInt64), ((_x474 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x475 = @:tmpset0 __tmp__._0;
            _x476 = @:tmpset0 __tmp__._1;
        };
        var _x477:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x478:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x461, (0i64 : stdgo.GoUInt64), ((_x476 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x477 = @:tmpset0 __tmp__._0;
            _x478 = @:tmpset0 __tmp__._1;
        };
        var _x479:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x480:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x463, (0i64 : stdgo.GoUInt64), ((_x478 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x479 = @:tmpset0 __tmp__._0;
            _x480 = @:tmpset0 __tmp__._1;
        };
        var _x481:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x482:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x465, (0i64 : stdgo.GoUInt64), ((_x480 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x481 = @:tmpset0 __tmp__._0;
            _x482 = @:tmpset0 __tmp__._1;
        };
        var _x483:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x484:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (511i64 : stdgo.GoUInt64));
            _x484 = @:tmpset0 __tmp__._0;
            _x483 = @:tmpset0 __tmp__._1;
        };
        var _x485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x486:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x486 = @:tmpset0 __tmp__._0;
            _x485 = @:tmpset0 __tmp__._1;
        };
        var _x487:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x488:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x488 = @:tmpset0 __tmp__._0;
            _x487 = @:tmpset0 __tmp__._1;
        };
        var _x489:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x490:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x490 = @:tmpset0 __tmp__._0;
            _x489 = @:tmpset0 __tmp__._1;
        };
        var _x491:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x492:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x492 = @:tmpset0 __tmp__._0;
            _x491 = @:tmpset0 __tmp__._1;
        };
        var _x493:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x494:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x494 = @:tmpset0 __tmp__._0;
            _x493 = @:tmpset0 __tmp__._1;
        };
        var _x495:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x496:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x496 = @:tmpset0 __tmp__._0;
            _x495 = @:tmpset0 __tmp__._1;
        };
        var _x497:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x498:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x498 = @:tmpset0 __tmp__._0;
            _x497 = @:tmpset0 __tmp__._1;
        };
        var _x499:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x500:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x451, (-1i64 : stdgo.GoUInt64));
            _x500 = @:tmpset0 __tmp__._0;
            _x499 = @:tmpset0 __tmp__._1;
        };
        var _x501:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x502:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x500, _x497, (0i64 : stdgo.GoUInt64));
            _x501 = @:tmpset0 __tmp__._0;
            _x502 = @:tmpset0 __tmp__._1;
        };
        var _x503:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x504:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x498, _x495, ((_x502 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x503 = @:tmpset0 __tmp__._0;
            _x504 = @:tmpset0 __tmp__._1;
        };
        var _x505:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x506:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x496, _x493, ((_x504 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x505 = @:tmpset0 __tmp__._0;
            _x506 = @:tmpset0 __tmp__._1;
        };
        var _x507:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x508:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x494, _x491, ((_x506 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x507 = @:tmpset0 __tmp__._0;
            _x508 = @:tmpset0 __tmp__._1;
        };
        var _x509:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x510:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x492, _x489, ((_x508 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x509 = @:tmpset0 __tmp__._0;
            _x510 = @:tmpset0 __tmp__._1;
        };
        var _x511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x512:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x490, _x487, ((_x510 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x511 = @:tmpset0 __tmp__._0;
            _x512 = @:tmpset0 __tmp__._1;
        };
        var _x513:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x514:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x488, _x485, ((_x512 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x513 = @:tmpset0 __tmp__._0;
            _x514 = @:tmpset0 __tmp__._1;
        };
        var _x515:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x516:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x486, _x483, ((_x514 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x515 = @:tmpset0 __tmp__._0;
            _x516 = @:tmpset0 __tmp__._1;
        };
        var _x518:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x451, _x499, (0i64 : stdgo.GoUInt64));
            _x518 = @:tmpset0 __tmp__._1;
        };
        var _x519:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x520:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x469, _x501, ((_x518 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x519 = @:tmpset0 __tmp__._0;
            _x520 = @:tmpset0 __tmp__._1;
        };
        var _x521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x522:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x471, _x503, ((_x520 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x521 = @:tmpset0 __tmp__._0;
            _x522 = @:tmpset0 __tmp__._1;
        };
        var _x523:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x524:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x473, _x505, ((_x522 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x523 = @:tmpset0 __tmp__._0;
            _x524 = @:tmpset0 __tmp__._1;
        };
        var _x525:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x526:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x475, _x507, ((_x524 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x525 = @:tmpset0 __tmp__._0;
            _x526 = @:tmpset0 __tmp__._1;
        };
        var _x527:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x528:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x477, _x509, ((_x526 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x527 = @:tmpset0 __tmp__._0;
            _x528 = @:tmpset0 __tmp__._1;
        };
        var _x529:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x530:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x479, _x511, ((_x528 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x529 = @:tmpset0 __tmp__._0;
            _x530 = @:tmpset0 __tmp__._1;
        };
        var _x531:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x532:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x481, _x513, ((_x530 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x531 = @:tmpset0 __tmp__._0;
            _x532 = @:tmpset0 __tmp__._1;
        };
        var _x533:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x534:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x482 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x466 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x448 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x416 : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x515, ((_x532 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x533 = @:tmpset0 __tmp__._0;
            _x534 = @:tmpset0 __tmp__._1;
        };
        var _x535 = ((((_x534 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + ((((_x516 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64) + _x484 : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x536:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x537:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x519, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x536 = @:tmpset0 __tmp__._0;
            _x537 = @:tmpset0 __tmp__._1;
        };
        var _x538:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x539:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x521, (-1i64 : stdgo.GoUInt64), ((_x537 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x538 = @:tmpset0 __tmp__._0;
            _x539 = @:tmpset0 __tmp__._1;
        };
        var _x540:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x541:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x523, (-1i64 : stdgo.GoUInt64), ((_x539 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x540 = @:tmpset0 __tmp__._0;
            _x541 = @:tmpset0 __tmp__._1;
        };
        var _x542:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x543:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x525, (-1i64 : stdgo.GoUInt64), ((_x541 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x542 = @:tmpset0 __tmp__._0;
            _x543 = @:tmpset0 __tmp__._1;
        };
        var _x544:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x545:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x527, (-1i64 : stdgo.GoUInt64), ((_x543 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x544 = @:tmpset0 __tmp__._0;
            _x545 = @:tmpset0 __tmp__._1;
        };
        var _x546:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x547:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x529, (-1i64 : stdgo.GoUInt64), ((_x545 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x546 = @:tmpset0 __tmp__._0;
            _x547 = @:tmpset0 __tmp__._1;
        };
        var _x548:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x549:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x531, (-1i64 : stdgo.GoUInt64), ((_x547 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x548 = @:tmpset0 __tmp__._0;
            _x549 = @:tmpset0 __tmp__._1;
        };
        var _x550:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x551:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x533, (-1i64 : stdgo.GoUInt64), ((_x549 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x550 = @:tmpset0 __tmp__._0;
            _x551 = @:tmpset0 __tmp__._1;
        };
        var _x552:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x553:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x535, (511i64 : stdgo.GoUInt64), ((_x551 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x552 = @:tmpset0 __tmp__._0;
            _x553 = @:tmpset0 __tmp__._1;
        };
        var _x555:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x553 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1) : stdgo.GoUInt64));
            _x555 = @:tmpset0 __tmp__._1;
        };
        var _x556:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x556__pointer__ = stdgo.Go.pointer(_x556);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x556__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x536, _x519);
        var _x557:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x557__pointer__ = stdgo.Go.pointer(_x557);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x557__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x538, _x521);
        var _x558:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x558__pointer__ = stdgo.Go.pointer(_x558);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x558__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x540, _x523);
        var _x559:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x559__pointer__ = stdgo.Go.pointer(_x559);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x559__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x542, _x525);
        var _x560:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x560__pointer__ = stdgo.Go.pointer(_x560);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x560__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x544, _x527);
        var _x561:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x561__pointer__ = stdgo.Go.pointer(_x561);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x561__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x546, _x529);
        var _x562:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x562__pointer__ = stdgo.Go.pointer(_x562);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x562__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x548, _x531);
        var _x563:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x563__pointer__ = stdgo.Go.pointer(_x563);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x563__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x550, _x533);
        var _x564:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x564__pointer__ = stdgo.Go.pointer(_x564);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x564__pointer__, (_x555 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1), _x552, _x535);
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
