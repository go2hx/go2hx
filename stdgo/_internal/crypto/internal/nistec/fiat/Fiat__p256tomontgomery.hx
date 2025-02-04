package stdgo._internal.crypto.internal.nistec.fiat;
function _p256ToMontgomery(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256montgomerydomainfieldelement.T_p256MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256nonmontgomerydomainfieldelement.T_p256NonMontgomeryDomainFieldElement>):Void {
        var _x1 = (_arg1[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x2 = (_arg1[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x3 = (_arg1[(3 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x4 = (_arg1[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (21474836477i64 : stdgo.GoUInt64));
            _x6 = @:tmpset0 __tmp__._0;
            _x5 = @:tmpset0 __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-2i64 : stdgo.GoUInt64));
            _x8 = @:tmpset0 __tmp__._0;
            _x7 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (-17179869185i64 : stdgo.GoUInt64));
            _x10 = @:tmpset0 __tmp__._0;
            _x9 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x4, (3i64 : stdgo.GoUInt64));
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
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x10, _x7, ((_x14 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x8, _x5, ((_x16 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-4294967295i64 : stdgo.GoUInt64));
            _x20 = @:tmpset0 __tmp__._0;
            _x19 = @:tmpset0 __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (4294967295i64 : stdgo.GoUInt64));
            _x22 = @:tmpset0 __tmp__._0;
            _x21 = @:tmpset0 __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x11, (-1i64 : stdgo.GoUInt64));
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
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x11, _x23, (0i64 : stdgo.GoUInt64));
            _x28 = @:tmpset0 __tmp__._1;
        };
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x13, _x25, ((_x28 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x29 = @:tmpset0 __tmp__._0;
            _x30 = @:tmpset0 __tmp__._1;
        };
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x15, ((((_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x22 : stdgo.GoUInt64)), ((_x30 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x31 = @:tmpset0 __tmp__._0;
            _x32 = @:tmpset0 __tmp__._1;
        };
        var _x33:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x34:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x17, _x19, ((_x32 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x33 = @:tmpset0 __tmp__._0;
            _x34 = @:tmpset0 __tmp__._1;
        };
        var _x35:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x36:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((_x18 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x6 : stdgo.GoUInt64)), _x20, ((_x34 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x35 = @:tmpset0 __tmp__._0;
            _x36 = @:tmpset0 __tmp__._1;
        };
        var _x37:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x38:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (21474836477i64 : stdgo.GoUInt64));
            _x38 = @:tmpset0 __tmp__._0;
            _x37 = @:tmpset0 __tmp__._1;
        };
        var _x39:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x40:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-2i64 : stdgo.GoUInt64));
            _x40 = @:tmpset0 __tmp__._0;
            _x39 = @:tmpset0 __tmp__._1;
        };
        var _x41:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x42:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (-17179869185i64 : stdgo.GoUInt64));
            _x42 = @:tmpset0 __tmp__._0;
            _x41 = @:tmpset0 __tmp__._1;
        };
        var _x43:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x44:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x1, (3i64 : stdgo.GoUInt64));
            _x44 = @:tmpset0 __tmp__._0;
            _x43 = @:tmpset0 __tmp__._1;
        };
        var _x45:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x46:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x44, _x41, (0i64 : stdgo.GoUInt64));
            _x45 = @:tmpset0 __tmp__._0;
            _x46 = @:tmpset0 __tmp__._1;
        };
        var _x47:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x48:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x42, _x39, ((_x46 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x47 = @:tmpset0 __tmp__._0;
            _x48 = @:tmpset0 __tmp__._1;
        };
        var _x49:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x50:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x40, _x37, ((_x48 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x49 = @:tmpset0 __tmp__._0;
            _x50 = @:tmpset0 __tmp__._1;
        };
        var _x51:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x52:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x29, _x43, (0i64 : stdgo.GoUInt64));
            _x51 = @:tmpset0 __tmp__._0;
            _x52 = @:tmpset0 __tmp__._1;
        };
        var _x53:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x54:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x31, _x45, ((_x52 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x53 = @:tmpset0 __tmp__._0;
            _x54 = @:tmpset0 __tmp__._1;
        };
        var _x55:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x56:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x33, _x47, ((_x54 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x55 = @:tmpset0 __tmp__._0;
            _x56 = @:tmpset0 __tmp__._1;
        };
        var _x57:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x58:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x35, _x49, ((_x56 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x57 = @:tmpset0 __tmp__._0;
            _x58 = @:tmpset0 __tmp__._1;
        };
        var _x59:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x60:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x51, (-4294967295i64 : stdgo.GoUInt64));
            _x60 = @:tmpset0 __tmp__._0;
            _x59 = @:tmpset0 __tmp__._1;
        };
        var _x61:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x62:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x51, (4294967295i64 : stdgo.GoUInt64));
            _x62 = @:tmpset0 __tmp__._0;
            _x61 = @:tmpset0 __tmp__._1;
        };
        var _x63:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x64:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x51, (-1i64 : stdgo.GoUInt64));
            _x64 = @:tmpset0 __tmp__._0;
            _x63 = @:tmpset0 __tmp__._1;
        };
        var _x65:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x66:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x64, _x61, (0i64 : stdgo.GoUInt64));
            _x65 = @:tmpset0 __tmp__._0;
            _x66 = @:tmpset0 __tmp__._1;
        };
        var _x68:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x51, _x63, (0i64 : stdgo.GoUInt64));
            _x68 = @:tmpset0 __tmp__._1;
        };
        var _x69:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x70:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x53, _x65, ((_x68 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x69 = @:tmpset0 __tmp__._0;
            _x70 = @:tmpset0 __tmp__._1;
        };
        var _x71:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x72:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x55, ((((_x66 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x62 : stdgo.GoUInt64)), ((_x70 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x71 = @:tmpset0 __tmp__._0;
            _x72 = @:tmpset0 __tmp__._1;
        };
        var _x73:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x74:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x57, _x59, ((_x72 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x73 = @:tmpset0 __tmp__._0;
            _x74 = @:tmpset0 __tmp__._1;
        };
        var _x75:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x76:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((((_x58 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x36 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)) + ((((_x50 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x38 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x60, ((_x74 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x75 = @:tmpset0 __tmp__._0;
            _x76 = @:tmpset0 __tmp__._1;
        };
        var _x77:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x78:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (21474836477i64 : stdgo.GoUInt64));
            _x78 = @:tmpset0 __tmp__._0;
            _x77 = @:tmpset0 __tmp__._1;
        };
        var _x79:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x80:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-2i64 : stdgo.GoUInt64));
            _x80 = @:tmpset0 __tmp__._0;
            _x79 = @:tmpset0 __tmp__._1;
        };
        var _x81:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x82:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (-17179869185i64 : stdgo.GoUInt64));
            _x82 = @:tmpset0 __tmp__._0;
            _x81 = @:tmpset0 __tmp__._1;
        };
        var _x83:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x84:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x2, (3i64 : stdgo.GoUInt64));
            _x84 = @:tmpset0 __tmp__._0;
            _x83 = @:tmpset0 __tmp__._1;
        };
        var _x85:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x86:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x84, _x81, (0i64 : stdgo.GoUInt64));
            _x85 = @:tmpset0 __tmp__._0;
            _x86 = @:tmpset0 __tmp__._1;
        };
        var _x87:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x88:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x82, _x79, ((_x86 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x87 = @:tmpset0 __tmp__._0;
            _x88 = @:tmpset0 __tmp__._1;
        };
        var _x89:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x90:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x80, _x77, ((_x88 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x89 = @:tmpset0 __tmp__._0;
            _x90 = @:tmpset0 __tmp__._1;
        };
        var _x91:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x92:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x69, _x83, (0i64 : stdgo.GoUInt64));
            _x91 = @:tmpset0 __tmp__._0;
            _x92 = @:tmpset0 __tmp__._1;
        };
        var _x93:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x94:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x71, _x85, ((_x92 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x93 = @:tmpset0 __tmp__._0;
            _x94 = @:tmpset0 __tmp__._1;
        };
        var _x95:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x96:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x73, _x87, ((_x94 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x95 = @:tmpset0 __tmp__._0;
            _x96 = @:tmpset0 __tmp__._1;
        };
        var _x97:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x98:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x75, _x89, ((_x96 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x97 = @:tmpset0 __tmp__._0;
            _x98 = @:tmpset0 __tmp__._1;
        };
        var _x99:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x100:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x91, (-4294967295i64 : stdgo.GoUInt64));
            _x100 = @:tmpset0 __tmp__._0;
            _x99 = @:tmpset0 __tmp__._1;
        };
        var _x101:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x102:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x91, (4294967295i64 : stdgo.GoUInt64));
            _x102 = @:tmpset0 __tmp__._0;
            _x101 = @:tmpset0 __tmp__._1;
        };
        var _x103:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x104:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x91, (-1i64 : stdgo.GoUInt64));
            _x104 = @:tmpset0 __tmp__._0;
            _x103 = @:tmpset0 __tmp__._1;
        };
        var _x105:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x106:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x104, _x101, (0i64 : stdgo.GoUInt64));
            _x105 = @:tmpset0 __tmp__._0;
            _x106 = @:tmpset0 __tmp__._1;
        };
        var _x108:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x91, _x103, (0i64 : stdgo.GoUInt64));
            _x108 = @:tmpset0 __tmp__._1;
        };
        var _x109:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x110:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x93, _x105, ((_x108 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x109 = @:tmpset0 __tmp__._0;
            _x110 = @:tmpset0 __tmp__._1;
        };
        var _x111:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x112:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x95, ((((_x106 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x102 : stdgo.GoUInt64)), ((_x110 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x111 = @:tmpset0 __tmp__._0;
            _x112 = @:tmpset0 __tmp__._1;
        };
        var _x113:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x114:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x97, _x99, ((_x112 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x113 = @:tmpset0 __tmp__._0;
            _x114 = @:tmpset0 __tmp__._1;
        };
        var _x115:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x116:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((((_x98 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x76 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)) + ((((_x90 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x78 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x100, ((_x114 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x115 = @:tmpset0 __tmp__._0;
            _x116 = @:tmpset0 __tmp__._1;
        };
        var _x117:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x118:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (21474836477i64 : stdgo.GoUInt64));
            _x118 = @:tmpset0 __tmp__._0;
            _x117 = @:tmpset0 __tmp__._1;
        };
        var _x119:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x120:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-2i64 : stdgo.GoUInt64));
            _x120 = @:tmpset0 __tmp__._0;
            _x119 = @:tmpset0 __tmp__._1;
        };
        var _x121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x122:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (-17179869185i64 : stdgo.GoUInt64));
            _x122 = @:tmpset0 __tmp__._0;
            _x121 = @:tmpset0 __tmp__._1;
        };
        var _x123:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x124:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x3, (3i64 : stdgo.GoUInt64));
            _x124 = @:tmpset0 __tmp__._0;
            _x123 = @:tmpset0 __tmp__._1;
        };
        var _x125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x126:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x124, _x121, (0i64 : stdgo.GoUInt64));
            _x125 = @:tmpset0 __tmp__._0;
            _x126 = @:tmpset0 __tmp__._1;
        };
        var _x127:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x128:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x122, _x119, ((_x126 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x127 = @:tmpset0 __tmp__._0;
            _x128 = @:tmpset0 __tmp__._1;
        };
        var _x129:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x130:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x120, _x117, ((_x128 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x129 = @:tmpset0 __tmp__._0;
            _x130 = @:tmpset0 __tmp__._1;
        };
        var _x131:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x132:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x109, _x123, (0i64 : stdgo.GoUInt64));
            _x131 = @:tmpset0 __tmp__._0;
            _x132 = @:tmpset0 __tmp__._1;
        };
        var _x133:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x134:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x111, _x125, ((_x132 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x133 = @:tmpset0 __tmp__._0;
            _x134 = @:tmpset0 __tmp__._1;
        };
        var _x135:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x136:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x113, _x127, ((_x134 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x135 = @:tmpset0 __tmp__._0;
            _x136 = @:tmpset0 __tmp__._1;
        };
        var _x137:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x138:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x115, _x129, ((_x136 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x137 = @:tmpset0 __tmp__._0;
            _x138 = @:tmpset0 __tmp__._1;
        };
        var _x139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x140:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x131, (-4294967295i64 : stdgo.GoUInt64));
            _x140 = @:tmpset0 __tmp__._0;
            _x139 = @:tmpset0 __tmp__._1;
        };
        var _x141:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x142:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x131, (4294967295i64 : stdgo.GoUInt64));
            _x142 = @:tmpset0 __tmp__._0;
            _x141 = @:tmpset0 __tmp__._1;
        };
        var _x143:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x144:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_x131, (-1i64 : stdgo.GoUInt64));
            _x144 = @:tmpset0 __tmp__._0;
            _x143 = @:tmpset0 __tmp__._1;
        };
        var _x145:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x146:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x144, _x141, (0i64 : stdgo.GoUInt64));
            _x145 = @:tmpset0 __tmp__._0;
            _x146 = @:tmpset0 __tmp__._1;
        };
        var _x148:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x131, _x143, (0i64 : stdgo.GoUInt64));
            _x148 = @:tmpset0 __tmp__._1;
        };
        var _x149:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x150:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x133, _x145, ((_x148 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x149 = @:tmpset0 __tmp__._0;
            _x150 = @:tmpset0 __tmp__._1;
        };
        var _x151:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x152:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x135, ((((_x146 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x142 : stdgo.GoUInt64)), ((_x150 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x151 = @:tmpset0 __tmp__._0;
            _x152 = @:tmpset0 __tmp__._1;
        };
        var _x153:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x154:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_x137, _x139, ((_x152 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x153 = @:tmpset0 __tmp__._0;
            _x154 = @:tmpset0 __tmp__._1;
        };
        var _x155:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x156:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(((((((_x138 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + ((_x116 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) : stdgo.GoUInt64)) + ((((_x130 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64) + _x118 : stdgo.GoUInt64)) : stdgo.GoUInt64)), _x140, ((_x154 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x155 = @:tmpset0 __tmp__._0;
            _x156 = @:tmpset0 __tmp__._1;
        };
        var _x157:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x158:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x149, (-1i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x157 = @:tmpset0 __tmp__._0;
            _x158 = @:tmpset0 __tmp__._1;
        };
        var _x159:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x160:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x151, (4294967295i64 : stdgo.GoUInt64), ((_x158 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x159 = @:tmpset0 __tmp__._0;
            _x160 = @:tmpset0 __tmp__._1;
        };
        var _x161:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x162:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x153, (0i64 : stdgo.GoUInt64), ((_x160 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x161 = @:tmpset0 __tmp__._0;
            _x162 = @:tmpset0 __tmp__._1;
        };
        var _x163:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x164:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x155, (-4294967295i64 : stdgo.GoUInt64), ((_x162 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x163 = @:tmpset0 __tmp__._0;
            _x164 = @:tmpset0 __tmp__._1;
        };
        var _x166:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x156 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x164 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1) : stdgo.GoUInt64));
            _x166 = @:tmpset0 __tmp__._1;
        };
        var _x167:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x167__pointer__ = stdgo.Go.pointer(_x167);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x167__pointer__, (_x166 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x157, _x149);
        var _x168:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x168__pointer__ = stdgo.Go.pointer(_x168);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x168__pointer__, (_x166 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x159, _x151);
        var _x169:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x169__pointer__ = stdgo.Go.pointer(_x169);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x169__pointer__, (_x166 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x161, _x153);
        var _x170:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x170__pointer__ = stdgo.Go.pointer(_x170);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p256cmovznzu64._p256CmovznzU64(_x170__pointer__, (_x166 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p256uint1.T_p256Uint1), _x163, _x155);
        _out1[(0 : stdgo.GoInt)] = _x167;
        _out1[(1 : stdgo.GoInt)] = _x168;
        _out1[(2 : stdgo.GoInt)] = _x169;
        _out1[(3 : stdgo.GoInt)] = _x170;
    }
