package stdgo.crypto.elliptic.internal.fiat;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _p224ZeroEncoding : Slice<GoUInt8> = new P224Element().bytes();
var _p224MinusOneEncoding : Slice<GoUInt8> = new P224Element().sub(new P224Element(), new P224Element().one()).bytes();
var _p384ZeroEncoding : Slice<GoUInt8> = new P384Element().bytes();
var _p384MinusOneEncoding : Slice<GoUInt8> = new P384Element().sub(new P384Element(), new P384Element().one()).bytes();
var _p521ZeroEncoding : Slice<GoUInt8> = new P521Element().bytes();
var _p521MinusOneEncoding : Slice<GoUInt8> = new P521Element().sub(new P521Element(), new P521Element().one()).bytes();
@:structInit @:using(crypto.elliptic.internal.fiat.Fiat.P224Element_static_extension) class P224Element {
    public var _x : T_p224MontgomeryDomainFieldElement = new T_p224MontgomeryDomainFieldElement();
    public function new(?_x:T_p224MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P224Element(_x);
    }
}
@:structInit @:using(crypto.elliptic.internal.fiat.Fiat.P384Element_static_extension) class P384Element {
    public var _x : T_p384MontgomeryDomainFieldElement = new T_p384MontgomeryDomainFieldElement();
    public function new(?_x:T_p384MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P384Element(_x);
    }
}
@:structInit @:using(crypto.elliptic.internal.fiat.Fiat.P521Element_static_extension) class P521Element {
    public var _x : T_p521MontgomeryDomainFieldElement = new T_p521MontgomeryDomainFieldElement();
    public function new(?_x:T_p521MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new P521Element(_x);
    }
}
@:named typedef T_p224UntypedFieldElement = GoArray<GoUInt64>;
@:named typedef T_p224Uint1 = GoUInt64;
@:named typedef T_p224Int1 = GoInt64;
@:named typedef T_p224MontgomeryDomainFieldElement = GoArray<GoUInt64>;
@:named typedef T_p224NonMontgomeryDomainFieldElement = GoArray<GoUInt64>;
@:named typedef T_p384UntypedFieldElement = GoArray<GoUInt64>;
@:named typedef T_p384Uint1 = GoUInt64;
@:named typedef T_p384Int1 = GoInt64;
@:named typedef T_p384MontgomeryDomainFieldElement = GoArray<GoUInt64>;
@:named typedef T_p384NonMontgomeryDomainFieldElement = GoArray<GoUInt64>;
@:named typedef T_p521UntypedFieldElement = GoArray<GoUInt64>;
@:named typedef T_p521Uint1 = GoUInt64;
@:named typedef T_p521Int1 = GoInt64;
@:named typedef T_p521MontgomeryDomainFieldElement = GoArray<GoUInt64>;
@:named typedef T_p521NonMontgomeryDomainFieldElement = GoArray<GoUInt64>;
function _p224InvertEndianness(_v:Slice<GoByte>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((_v != null ? _v.length : ((0 : GoInt))) / ((2 : GoInt))), _i++, {
                {
                    final __tmp__0 = (_v != null ? _v[((_v != null ? _v.length : ((0 : GoInt))) - ((1 : GoInt))) - _i] : ((0 : GoUInt8)));
                    final __tmp__1 = (_v != null ? _v[_i] : ((0 : GoUInt8)));
                    if (_v != null) _v[_i] = __tmp__0;
                    if (_v != null) _v[((_v != null ? _v.length : ((0 : GoInt))) - ((1 : GoInt))) - _i] = __tmp__1;
                };
            });
        };
    }
/**
    // p224CmovznzU64 is a single-word conditional move.
    //
    // Postconditions:
    //   out1 = (if arg1 = 0 then arg2 else arg3)
    //
    // Input Bounds:
    //   arg1: [0x0 ~> 0x1]
    //   arg2: [0x0 ~> 0xffffffffffffffff]
    //   arg3: [0x0 ~> 0xffffffffffffffff]
    // Output Bounds:
    //   out1: [0x0 ~> 0xffffffffffffffff]
**/
function _p224CmovznzU64(_out1:Pointer<GoUInt64>, _arg1:T_p224Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
        var _x1:GoUInt64 = (((_arg1 : GoUInt64)) * (("18446744073709551615" : GoUInt64)));
        var _x2:GoUInt64 = ((_x1 & _arg3) | (((-1 ^ _x1)) & _arg2));
        _out1.value = _x2;
    }
/**
    // p224Mul multiplies two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) * eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224Mul(_out1:T_p224MontgomeryDomainFieldElement, _arg1:T_p224MontgomeryDomainFieldElement, _arg2:T_p224MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x6 = __tmp__._0;
            _x5 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((0 : GoUInt64)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x14 : T_p224Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x8, _x5, ((((_x16 : T_p224Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = (((((_x18 : T_p224Uint1)) : GoUInt64)) + _x6);
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x11, (("18446744073709551615" : GoUInt64)));
            _x20 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x20, (("4294967295" : GoUInt64)));
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x20, (("18446744073709551615" : GoUInt64)));
            _x25 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x20, (("18446744069414584320" : GoUInt64)));
            _x27 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x27, _x24, ((((0 : GoUInt64)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x25, _x22, ((((_x29 : T_p224Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = (((((_x31 : T_p224Uint1)) : GoUInt64)) + _x23);
        var _x34:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x20, ((((0 : GoUInt64)) : GoUInt64)));
            _x34 = __tmp__._1;
        };
        var _x35:GoUInt64 = ((0 : GoUInt64));
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x26, ((((_x34 : T_p224Uint1)) : GoUInt64)));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:GoUInt64 = ((0 : GoUInt64));
        var _x38:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x28, ((((_x36 : T_p224Uint1)) : GoUInt64)));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:GoUInt64 = ((0 : GoUInt64));
        var _x40:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x30, ((((_x38 : T_p224Uint1)) : GoUInt64)));
            _x39 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x41:GoUInt64 = ((0 : GoUInt64));
        var _x42:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x32, ((((_x40 : T_p224Uint1)) : GoUInt64)));
            _x41 = __tmp__._0;
            _x42 = __tmp__._1;
        };
        var _x43:GoUInt64 = ((0 : GoUInt64));
        var _x44:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x44 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:GoUInt64 = ((0 : GoUInt64));
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x48 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x50 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, _x47, ((((0 : GoUInt64)) : GoUInt64)));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, _x45, ((((_x52 : T_p224Uint1)) : GoUInt64)));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x46, _x43, ((((_x54 : T_p224Uint1)) : GoUInt64)));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = (((((_x56 : T_p224Uint1)) : GoUInt64)) + _x44);
        var _x58:GoUInt64 = ((0 : GoUInt64));
        var _x59:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x35, _x49, ((((0 : GoUInt64)) : GoUInt64)));
            _x58 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x60:GoUInt64 = ((0 : GoUInt64));
        var _x61:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x37, _x51, ((((_x59 : T_p224Uint1)) : GoUInt64)));
            _x60 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x62:GoUInt64 = ((0 : GoUInt64));
        var _x63:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x39, _x53, ((((_x61 : T_p224Uint1)) : GoUInt64)));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:GoUInt64 = ((0 : GoUInt64));
        var _x65:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x41, _x55, ((((_x63 : T_p224Uint1)) : GoUInt64)));
            _x64 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x66:GoUInt64 = ((0 : GoUInt64));
        var _x67:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x42 : T_p224Uint1)) : GoUInt64)), _x57, ((((_x65 : T_p224Uint1)) : GoUInt64)));
            _x66 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x58, (("18446744073709551615" : GoUInt64)));
            _x68 = __tmp__._1;
        };
        var _x70:GoUInt64 = ((0 : GoUInt64));
        var _x71:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x68, (("4294967295" : GoUInt64)));
            _x71 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x72:GoUInt64 = ((0 : GoUInt64));
        var _x73:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x68, (("18446744073709551615" : GoUInt64)));
            _x73 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x74:GoUInt64 = ((0 : GoUInt64));
        var _x75:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x68, (("18446744069414584320" : GoUInt64)));
            _x75 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x76:GoUInt64 = ((0 : GoUInt64));
        var _x77:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x75, _x72, ((((0 : GoUInt64)) : GoUInt64)));
            _x76 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x78:GoUInt64 = ((0 : GoUInt64));
        var _x79:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x73, _x70, ((((_x77 : T_p224Uint1)) : GoUInt64)));
            _x78 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x80:GoUInt64 = (((((_x79 : T_p224Uint1)) : GoUInt64)) + _x71);
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x58, _x68, ((((0 : GoUInt64)) : GoUInt64)));
            _x82 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x60, _x74, ((((_x82 : T_p224Uint1)) : GoUInt64)));
            _x83 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x62, _x76, ((((_x84 : T_p224Uint1)) : GoUInt64)));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x64, _x78, ((((_x86 : T_p224Uint1)) : GoUInt64)));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        var _x90:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x66, _x80, ((((_x88 : T_p224Uint1)) : GoUInt64)));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:GoUInt64 = (((((_x90 : T_p224Uint1)) : GoUInt64)) + ((((_x67 : T_p224Uint1)) : GoUInt64)));
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x93 = __tmp__._0;
            _x92 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x95 = __tmp__._0;
            _x94 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x97 = __tmp__._0;
            _x96 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x99 = __tmp__._0;
            _x98 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x99, _x96, ((((0 : GoUInt64)) : GoUInt64)));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x97, _x94, ((((_x101 : T_p224Uint1)) : GoUInt64)));
            _x102 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x95, _x92, ((((_x103 : T_p224Uint1)) : GoUInt64)));
            _x104 = __tmp__._0;
            _x105 = __tmp__._1;
        };
        var _x106:GoUInt64 = (((((_x105 : T_p224Uint1)) : GoUInt64)) + _x93);
        var _x107:GoUInt64 = ((0 : GoUInt64));
        var _x108:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x83, _x98, ((((0 : GoUInt64)) : GoUInt64)));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x109:GoUInt64 = ((0 : GoUInt64));
        var _x110:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x85, _x100, ((((_x108 : T_p224Uint1)) : GoUInt64)));
            _x109 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x111:GoUInt64 = ((0 : GoUInt64));
        var _x112:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x87, _x102, ((((_x110 : T_p224Uint1)) : GoUInt64)));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x113:GoUInt64 = ((0 : GoUInt64));
        var _x114:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x89, _x104, ((((_x112 : T_p224Uint1)) : GoUInt64)));
            _x113 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x115:GoUInt64 = ((0 : GoUInt64));
        var _x116:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x91, _x106, ((((_x114 : T_p224Uint1)) : GoUInt64)));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x107, (("18446744073709551615" : GoUInt64)));
            _x117 = __tmp__._1;
        };
        var _x119:GoUInt64 = ((0 : GoUInt64));
        var _x120:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x117, (("4294967295" : GoUInt64)));
            _x120 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x121:GoUInt64 = ((0 : GoUInt64));
        var _x122:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x117, (("18446744073709551615" : GoUInt64)));
            _x122 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x123:GoUInt64 = ((0 : GoUInt64));
        var _x124:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x117, (("18446744069414584320" : GoUInt64)));
            _x124 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x125:GoUInt64 = ((0 : GoUInt64));
        var _x126:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x124, _x121, ((((0 : GoUInt64)) : GoUInt64)));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:GoUInt64 = ((0 : GoUInt64));
        var _x128:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x122, _x119, ((((_x126 : T_p224Uint1)) : GoUInt64)));
            _x127 = __tmp__._0;
            _x128 = __tmp__._1;
        };
        var _x129:GoUInt64 = (((((_x128 : T_p224Uint1)) : GoUInt64)) + _x120);
        var _x131:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x107, _x117, ((((0 : GoUInt64)) : GoUInt64)));
            _x131 = __tmp__._1;
        };
        var _x132:GoUInt64 = ((0 : GoUInt64));
        var _x133:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x109, _x123, ((((_x131 : T_p224Uint1)) : GoUInt64)));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:GoUInt64 = ((0 : GoUInt64));
        var _x135:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x125, ((((_x133 : T_p224Uint1)) : GoUInt64)));
            _x134 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x136:GoUInt64 = ((0 : GoUInt64));
        var _x137:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x127, ((((_x135 : T_p224Uint1)) : GoUInt64)));
            _x136 = __tmp__._0;
            _x137 = __tmp__._1;
        };
        var _x138:GoUInt64 = ((0 : GoUInt64));
        var _x139:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x129, ((((_x137 : T_p224Uint1)) : GoUInt64)));
            _x138 = __tmp__._0;
            _x139 = __tmp__._1;
        };
        var _x140:GoUInt64 = (((((_x139 : T_p224Uint1)) : GoUInt64)) + ((((_x116 : T_p224Uint1)) : GoUInt64)));
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x142 = __tmp__._0;
            _x141 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x144 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x146 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x148 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x148, _x145, ((((0 : GoUInt64)) : GoUInt64)));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x146, _x143, ((((_x150 : T_p224Uint1)) : GoUInt64)));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x144, _x141, ((((_x152 : T_p224Uint1)) : GoUInt64)));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:GoUInt64 = (((((_x154 : T_p224Uint1)) : GoUInt64)) + _x142);
        var _x156:GoUInt64 = ((0 : GoUInt64));
        var _x157:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x132, _x147, ((((0 : GoUInt64)) : GoUInt64)));
            _x156 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        var _x159:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x134, _x149, ((((_x157 : T_p224Uint1)) : GoUInt64)));
            _x158 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x160:GoUInt64 = ((0 : GoUInt64));
        var _x161:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x136, _x151, ((((_x159 : T_p224Uint1)) : GoUInt64)));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162:GoUInt64 = ((0 : GoUInt64));
        var _x163:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x138, _x153, ((((_x161 : T_p224Uint1)) : GoUInt64)));
            _x162 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x164:GoUInt64 = ((0 : GoUInt64));
        var _x165:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x140, _x155, ((((_x163 : T_p224Uint1)) : GoUInt64)));
            _x164 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x166:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x156, (("18446744073709551615" : GoUInt64)));
            _x166 = __tmp__._1;
        };
        var _x168:GoUInt64 = ((0 : GoUInt64));
        var _x169:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x166, (("4294967295" : GoUInt64)));
            _x169 = __tmp__._0;
            _x168 = __tmp__._1;
        };
        var _x170:GoUInt64 = ((0 : GoUInt64));
        var _x171:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x166, (("18446744073709551615" : GoUInt64)));
            _x171 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x172:GoUInt64 = ((0 : GoUInt64));
        var _x173:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x166, (("18446744069414584320" : GoUInt64)));
            _x173 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x174:GoUInt64 = ((0 : GoUInt64));
        var _x175:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x173, _x170, ((((0 : GoUInt64)) : GoUInt64)));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x176:GoUInt64 = ((0 : GoUInt64));
        var _x177:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x171, _x168, ((((_x175 : T_p224Uint1)) : GoUInt64)));
            _x176 = __tmp__._0;
            _x177 = __tmp__._1;
        };
        var _x178:GoUInt64 = (((((_x177 : T_p224Uint1)) : GoUInt64)) + _x169);
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x156, _x166, ((((0 : GoUInt64)) : GoUInt64)));
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x158, _x172, ((((_x180 : T_p224Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        var _x184:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x160, _x174, ((((_x182 : T_p224Uint1)) : GoUInt64)));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x162, _x176, ((((_x184 : T_p224Uint1)) : GoUInt64)));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x164, _x178, ((((_x186 : T_p224Uint1)) : GoUInt64)));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:GoUInt64 = (((((_x188 : T_p224Uint1)) : GoUInt64)) + ((((_x165 : T_p224Uint1)) : GoUInt64)));
        var _x190:GoUInt64 = ((0 : GoUInt64));
        var _x191:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x181, ((((1 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x190 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x192:GoUInt64 = ((0 : GoUInt64));
        var _x193:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x183, (("18446744069414584320" : GoUInt64)), ((((_x191 : T_p224Uint1)) : GoUInt64)));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:GoUInt64 = ((0 : GoUInt64));
        var _x195:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x185, (("18446744073709551615" : GoUInt64)), ((((_x193 : T_p224Uint1)) : GoUInt64)));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:GoUInt64 = ((0 : GoUInt64));
        var _x197:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x187, (("4294967295" : GoUInt64)), ((((_x195 : T_p224Uint1)) : GoUInt64)));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x199:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x189, ((((0 : GoUInt64)) : GoUInt64)), ((((_x197 : T_p224Uint1)) : GoUInt64)));
            _x199 = __tmp__._1;
        };
        var _x200:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x200), ((_x199 : T_p224Uint1)), _x190, _x181);
        var _x201:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x201), ((_x199 : T_p224Uint1)), _x192, _x183);
        var _x202:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x202), ((_x199 : T_p224Uint1)), _x194, _x185);
        var _x203:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x203), ((_x199 : T_p224Uint1)), _x196, _x187);
        if (_out1 != null) _out1[((0 : GoInt))] = _x200;
        if (_out1 != null) _out1[((1 : GoInt))] = _x201;
        if (_out1 != null) _out1[((2 : GoInt))] = _x202;
        if (_out1 != null) _out1[((3 : GoInt))] = _x203;
    }
/**
    // p224Square squares a field element in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) * eval (from_montgomery arg1)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224Square(_out1:T_p224MontgomeryDomainFieldElement, _arg1:T_p224MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x6 = __tmp__._0;
            _x5 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((0 : GoUInt64)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x14 : T_p224Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x8, _x5, ((((_x16 : T_p224Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = (((((_x18 : T_p224Uint1)) : GoUInt64)) + _x6);
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x11, (("18446744073709551615" : GoUInt64)));
            _x20 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x20, (("4294967295" : GoUInt64)));
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x20, (("18446744073709551615" : GoUInt64)));
            _x25 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x20, (("18446744069414584320" : GoUInt64)));
            _x27 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x27, _x24, ((((0 : GoUInt64)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x25, _x22, ((((_x29 : T_p224Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = (((((_x31 : T_p224Uint1)) : GoUInt64)) + _x23);
        var _x34:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x20, ((((0 : GoUInt64)) : GoUInt64)));
            _x34 = __tmp__._1;
        };
        var _x35:GoUInt64 = ((0 : GoUInt64));
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x26, ((((_x34 : T_p224Uint1)) : GoUInt64)));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:GoUInt64 = ((0 : GoUInt64));
        var _x38:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x28, ((((_x36 : T_p224Uint1)) : GoUInt64)));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:GoUInt64 = ((0 : GoUInt64));
        var _x40:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x30, ((((_x38 : T_p224Uint1)) : GoUInt64)));
            _x39 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x41:GoUInt64 = ((0 : GoUInt64));
        var _x42:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x32, ((((_x40 : T_p224Uint1)) : GoUInt64)));
            _x41 = __tmp__._0;
            _x42 = __tmp__._1;
        };
        var _x43:GoUInt64 = ((0 : GoUInt64));
        var _x44:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x44 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:GoUInt64 = ((0 : GoUInt64));
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x48 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x50 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, _x47, ((((0 : GoUInt64)) : GoUInt64)));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, _x45, ((((_x52 : T_p224Uint1)) : GoUInt64)));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x46, _x43, ((((_x54 : T_p224Uint1)) : GoUInt64)));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = (((((_x56 : T_p224Uint1)) : GoUInt64)) + _x44);
        var _x58:GoUInt64 = ((0 : GoUInt64));
        var _x59:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x35, _x49, ((((0 : GoUInt64)) : GoUInt64)));
            _x58 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x60:GoUInt64 = ((0 : GoUInt64));
        var _x61:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x37, _x51, ((((_x59 : T_p224Uint1)) : GoUInt64)));
            _x60 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x62:GoUInt64 = ((0 : GoUInt64));
        var _x63:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x39, _x53, ((((_x61 : T_p224Uint1)) : GoUInt64)));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:GoUInt64 = ((0 : GoUInt64));
        var _x65:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x41, _x55, ((((_x63 : T_p224Uint1)) : GoUInt64)));
            _x64 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x66:GoUInt64 = ((0 : GoUInt64));
        var _x67:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x42 : T_p224Uint1)) : GoUInt64)), _x57, ((((_x65 : T_p224Uint1)) : GoUInt64)));
            _x66 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x58, (("18446744073709551615" : GoUInt64)));
            _x68 = __tmp__._1;
        };
        var _x70:GoUInt64 = ((0 : GoUInt64));
        var _x71:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x68, (("4294967295" : GoUInt64)));
            _x71 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x72:GoUInt64 = ((0 : GoUInt64));
        var _x73:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x68, (("18446744073709551615" : GoUInt64)));
            _x73 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x74:GoUInt64 = ((0 : GoUInt64));
        var _x75:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x68, (("18446744069414584320" : GoUInt64)));
            _x75 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x76:GoUInt64 = ((0 : GoUInt64));
        var _x77:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x75, _x72, ((((0 : GoUInt64)) : GoUInt64)));
            _x76 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x78:GoUInt64 = ((0 : GoUInt64));
        var _x79:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x73, _x70, ((((_x77 : T_p224Uint1)) : GoUInt64)));
            _x78 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x80:GoUInt64 = (((((_x79 : T_p224Uint1)) : GoUInt64)) + _x71);
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x58, _x68, ((((0 : GoUInt64)) : GoUInt64)));
            _x82 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x60, _x74, ((((_x82 : T_p224Uint1)) : GoUInt64)));
            _x83 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x62, _x76, ((((_x84 : T_p224Uint1)) : GoUInt64)));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x64, _x78, ((((_x86 : T_p224Uint1)) : GoUInt64)));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        var _x90:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x66, _x80, ((((_x88 : T_p224Uint1)) : GoUInt64)));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:GoUInt64 = (((((_x90 : T_p224Uint1)) : GoUInt64)) + ((((_x67 : T_p224Uint1)) : GoUInt64)));
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x93 = __tmp__._0;
            _x92 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x95 = __tmp__._0;
            _x94 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x97 = __tmp__._0;
            _x96 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x99 = __tmp__._0;
            _x98 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x99, _x96, ((((0 : GoUInt64)) : GoUInt64)));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x97, _x94, ((((_x101 : T_p224Uint1)) : GoUInt64)));
            _x102 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x95, _x92, ((((_x103 : T_p224Uint1)) : GoUInt64)));
            _x104 = __tmp__._0;
            _x105 = __tmp__._1;
        };
        var _x106:GoUInt64 = (((((_x105 : T_p224Uint1)) : GoUInt64)) + _x93);
        var _x107:GoUInt64 = ((0 : GoUInt64));
        var _x108:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x83, _x98, ((((0 : GoUInt64)) : GoUInt64)));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x109:GoUInt64 = ((0 : GoUInt64));
        var _x110:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x85, _x100, ((((_x108 : T_p224Uint1)) : GoUInt64)));
            _x109 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x111:GoUInt64 = ((0 : GoUInt64));
        var _x112:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x87, _x102, ((((_x110 : T_p224Uint1)) : GoUInt64)));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x113:GoUInt64 = ((0 : GoUInt64));
        var _x114:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x89, _x104, ((((_x112 : T_p224Uint1)) : GoUInt64)));
            _x113 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x115:GoUInt64 = ((0 : GoUInt64));
        var _x116:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x91, _x106, ((((_x114 : T_p224Uint1)) : GoUInt64)));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x107, (("18446744073709551615" : GoUInt64)));
            _x117 = __tmp__._1;
        };
        var _x119:GoUInt64 = ((0 : GoUInt64));
        var _x120:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x117, (("4294967295" : GoUInt64)));
            _x120 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x121:GoUInt64 = ((0 : GoUInt64));
        var _x122:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x117, (("18446744073709551615" : GoUInt64)));
            _x122 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x123:GoUInt64 = ((0 : GoUInt64));
        var _x124:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x117, (("18446744069414584320" : GoUInt64)));
            _x124 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x125:GoUInt64 = ((0 : GoUInt64));
        var _x126:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x124, _x121, ((((0 : GoUInt64)) : GoUInt64)));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:GoUInt64 = ((0 : GoUInt64));
        var _x128:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x122, _x119, ((((_x126 : T_p224Uint1)) : GoUInt64)));
            _x127 = __tmp__._0;
            _x128 = __tmp__._1;
        };
        var _x129:GoUInt64 = (((((_x128 : T_p224Uint1)) : GoUInt64)) + _x120);
        var _x131:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x107, _x117, ((((0 : GoUInt64)) : GoUInt64)));
            _x131 = __tmp__._1;
        };
        var _x132:GoUInt64 = ((0 : GoUInt64));
        var _x133:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x109, _x123, ((((_x131 : T_p224Uint1)) : GoUInt64)));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:GoUInt64 = ((0 : GoUInt64));
        var _x135:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x125, ((((_x133 : T_p224Uint1)) : GoUInt64)));
            _x134 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x136:GoUInt64 = ((0 : GoUInt64));
        var _x137:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x127, ((((_x135 : T_p224Uint1)) : GoUInt64)));
            _x136 = __tmp__._0;
            _x137 = __tmp__._1;
        };
        var _x138:GoUInt64 = ((0 : GoUInt64));
        var _x139:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x129, ((((_x137 : T_p224Uint1)) : GoUInt64)));
            _x138 = __tmp__._0;
            _x139 = __tmp__._1;
        };
        var _x140:GoUInt64 = (((((_x139 : T_p224Uint1)) : GoUInt64)) + ((((_x116 : T_p224Uint1)) : GoUInt64)));
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x142 = __tmp__._0;
            _x141 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x144 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x146 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x148 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x148, _x145, ((((0 : GoUInt64)) : GoUInt64)));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x146, _x143, ((((_x150 : T_p224Uint1)) : GoUInt64)));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x144, _x141, ((((_x152 : T_p224Uint1)) : GoUInt64)));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:GoUInt64 = (((((_x154 : T_p224Uint1)) : GoUInt64)) + _x142);
        var _x156:GoUInt64 = ((0 : GoUInt64));
        var _x157:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x132, _x147, ((((0 : GoUInt64)) : GoUInt64)));
            _x156 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        var _x159:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x134, _x149, ((((_x157 : T_p224Uint1)) : GoUInt64)));
            _x158 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x160:GoUInt64 = ((0 : GoUInt64));
        var _x161:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x136, _x151, ((((_x159 : T_p224Uint1)) : GoUInt64)));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162:GoUInt64 = ((0 : GoUInt64));
        var _x163:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x138, _x153, ((((_x161 : T_p224Uint1)) : GoUInt64)));
            _x162 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x164:GoUInt64 = ((0 : GoUInt64));
        var _x165:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x140, _x155, ((((_x163 : T_p224Uint1)) : GoUInt64)));
            _x164 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x166:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x156, (("18446744073709551615" : GoUInt64)));
            _x166 = __tmp__._1;
        };
        var _x168:GoUInt64 = ((0 : GoUInt64));
        var _x169:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x166, (("4294967295" : GoUInt64)));
            _x169 = __tmp__._0;
            _x168 = __tmp__._1;
        };
        var _x170:GoUInt64 = ((0 : GoUInt64));
        var _x171:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x166, (("18446744073709551615" : GoUInt64)));
            _x171 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x172:GoUInt64 = ((0 : GoUInt64));
        var _x173:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x166, (("18446744069414584320" : GoUInt64)));
            _x173 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x174:GoUInt64 = ((0 : GoUInt64));
        var _x175:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x173, _x170, ((((0 : GoUInt64)) : GoUInt64)));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x176:GoUInt64 = ((0 : GoUInt64));
        var _x177:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x171, _x168, ((((_x175 : T_p224Uint1)) : GoUInt64)));
            _x176 = __tmp__._0;
            _x177 = __tmp__._1;
        };
        var _x178:GoUInt64 = (((((_x177 : T_p224Uint1)) : GoUInt64)) + _x169);
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x156, _x166, ((((0 : GoUInt64)) : GoUInt64)));
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x158, _x172, ((((_x180 : T_p224Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        var _x184:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x160, _x174, ((((_x182 : T_p224Uint1)) : GoUInt64)));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x162, _x176, ((((_x184 : T_p224Uint1)) : GoUInt64)));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x164, _x178, ((((_x186 : T_p224Uint1)) : GoUInt64)));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:GoUInt64 = (((((_x188 : T_p224Uint1)) : GoUInt64)) + ((((_x165 : T_p224Uint1)) : GoUInt64)));
        var _x190:GoUInt64 = ((0 : GoUInt64));
        var _x191:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x181, ((((1 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x190 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x192:GoUInt64 = ((0 : GoUInt64));
        var _x193:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x183, (("18446744069414584320" : GoUInt64)), ((((_x191 : T_p224Uint1)) : GoUInt64)));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:GoUInt64 = ((0 : GoUInt64));
        var _x195:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x185, (("18446744073709551615" : GoUInt64)), ((((_x193 : T_p224Uint1)) : GoUInt64)));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:GoUInt64 = ((0 : GoUInt64));
        var _x197:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x187, (("4294967295" : GoUInt64)), ((((_x195 : T_p224Uint1)) : GoUInt64)));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x199:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x189, ((((0 : GoUInt64)) : GoUInt64)), ((((_x197 : T_p224Uint1)) : GoUInt64)));
            _x199 = __tmp__._1;
        };
        var _x200:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x200), ((_x199 : T_p224Uint1)), _x190, _x181);
        var _x201:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x201), ((_x199 : T_p224Uint1)), _x192, _x183);
        var _x202:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x202), ((_x199 : T_p224Uint1)), _x194, _x185);
        var _x203:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x203), ((_x199 : T_p224Uint1)), _x196, _x187);
        if (_out1 != null) _out1[((0 : GoInt))] = _x200;
        if (_out1 != null) _out1[((1 : GoInt))] = _x201;
        if (_out1 != null) _out1[((2 : GoInt))] = _x202;
        if (_out1 != null) _out1[((3 : GoInt))] = _x203;
    }
/**
    // p224Add adds two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) + eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224Add(_out1:T_p224MontgomeryDomainFieldElement, _arg1:T_p224MontgomeryDomainFieldElement, _arg2:T_p224MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), ((((_x2 : T_p224Uint1)) : GoUInt64)));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), ((((_x4 : T_p224Uint1)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), ((((_x6 : T_p224Uint1)) : GoUInt64)));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x1, ((((1 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x3, (("18446744069414584320" : GoUInt64)), ((((_x10 : T_p224Uint1)) : GoUInt64)));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x5, (("18446744073709551615" : GoUInt64)), ((((_x12 : T_p224Uint1)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x7, (("4294967295" : GoUInt64)), ((((_x14 : T_p224Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((_x8 : T_p224Uint1)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x16 : T_p224Uint1)) : GoUInt64)));
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x19), ((_x18 : T_p224Uint1)), _x9, _x1);
        var _x20:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x20), ((_x18 : T_p224Uint1)), _x11, _x3);
        var _x21:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x21), ((_x18 : T_p224Uint1)), _x13, _x5);
        var _x22:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x22), ((_x18 : T_p224Uint1)), _x15, _x7);
        if (_out1 != null) _out1[((0 : GoInt))] = _x19;
        if (_out1 != null) _out1[((1 : GoInt))] = _x20;
        if (_out1 != null) _out1[((2 : GoInt))] = _x21;
        if (_out1 != null) _out1[((3 : GoInt))] = _x22;
    }
/**
    // p224Sub subtracts two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) - eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224Sub(_out1:T_p224MontgomeryDomainFieldElement, _arg1:T_p224MontgomeryDomainFieldElement, _arg2:T_p224MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), ((((_x2 : T_p224Uint1)) : GoUInt64)));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), ((((_x4 : T_p224Uint1)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), ((((_x6 : T_p224Uint1)) : GoUInt64)));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x9), ((_x8 : T_p224Uint1)), ((((0 : GoUInt64)) : GoUInt64)), (("18446744073709551615" : GoUInt64)));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        var _x11:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, (((((_x9 : T_p224Uint1)) & ((1 : GoUInt64))) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x10 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x12:GoUInt64 = ((0 : GoUInt64));
        var _x13:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x3, (_x9 & (("18446744069414584320" : GoUInt64))), ((((_x11 : T_p224Uint1)) : GoUInt64)));
            _x12 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x14:GoUInt64 = ((0 : GoUInt64));
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x5, _x9, ((((_x13 : T_p224Uint1)) : GoUInt64)));
            _x14 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x7, (_x9 & (("4294967295" : GoUInt64))), ((((_x15 : T_p224Uint1)) : GoUInt64)));
            _x16 = __tmp__._0;
        };
        if (_out1 != null) _out1[((0 : GoInt))] = _x10;
        if (_out1 != null) _out1[((1 : GoInt))] = _x12;
        if (_out1 != null) _out1[((2 : GoInt))] = _x14;
        if (_out1 != null) _out1[((3 : GoInt))] = _x16;
    }
/**
    // p224SetOne returns the field element one in the Montgomery domain.
    //
    // Postconditions:
    //   eval (from_montgomery out1) mod m = 1 mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224SetOne(_out1:T_p224MontgomeryDomainFieldElement):Void {
        if (_out1 != null) _out1[((0 : GoInt))] = (("18446744069414584320" : GoUInt64));
        if (_out1 != null) _out1[((1 : GoInt))] = (("18446744073709551615" : GoUInt64));
        if (_out1 != null) _out1[((2 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((3 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
    }
/**
    // p224FromMontgomery translates a field element out of the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval out1 mod m = (eval arg1 * ((2^64)⁻¹ mod m)^4) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224FromMontgomery(_out1:T_p224NonMontgomeryDomainFieldElement, _arg1:T_p224MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x2 = __tmp__._1;
        };
        var _x4:GoUInt64 = ((0 : GoUInt64));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("4294967295" : GoUInt64)));
            _x5 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x6:GoUInt64 = ((0 : GoUInt64));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744073709551615" : GoUInt64)));
            _x7 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x8:GoUInt64 = ((0 : GoUInt64));
        var _x9:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744069414584320" : GoUInt64)));
            _x9 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x10:GoUInt64 = ((0 : GoUInt64));
        var _x11:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x9, _x6, ((((0 : GoUInt64)) : GoUInt64)));
            _x10 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x12:GoUInt64 = ((0 : GoUInt64));
        var _x13:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x7, _x4, ((((_x11 : T_p224Uint1)) : GoUInt64)));
            _x12 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, _x2, ((((0 : GoUInt64)) : GoUInt64)));
            _x15 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        var _x17:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x8, ((((_x15 : T_p224Uint1)) : GoUInt64)));
            _x16 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x10, ((((_x17 : T_p224Uint1)) : GoUInt64)));
            _x18 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x12, ((((_x19 : T_p224Uint1)) : GoUInt64)));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x16, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x18, ((((0 : GoUInt64)) : GoUInt64)), ((((_x23 : T_p224Uint1)) : GoUInt64)));
            _x24 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x20, ((((0 : GoUInt64)) : GoUInt64)), ((((_x25 : T_p224Uint1)) : GoUInt64)));
            _x26 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x22, (("18446744073709551615" : GoUInt64)));
            _x28 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x28, (("4294967295" : GoUInt64)));
            _x31 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x28, (("18446744073709551615" : GoUInt64)));
            _x33 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x28, (("18446744069414584320" : GoUInt64)));
            _x35 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x35, _x32, ((((0 : GoUInt64)) : GoUInt64)));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x33, _x30, ((((_x37 : T_p224Uint1)) : GoUInt64)));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x22, _x28, ((((0 : GoUInt64)) : GoUInt64)));
            _x41 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x24, _x34, ((((_x41 : T_p224Uint1)) : GoUInt64)));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:GoUInt64 = ((0 : GoUInt64));
        var _x45:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x26, _x36, ((((_x43 : T_p224Uint1)) : GoUInt64)));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:GoUInt64 = ((0 : GoUInt64));
        var _x47:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x27 : T_p224Uint1)) : GoUInt64)) + (((((_x21 : T_p224Uint1)) : GoUInt64)) + (((((_x13 : T_p224Uint1)) : GoUInt64)) + _x5))), _x38, ((((_x45 : T_p224Uint1)) : GoUInt64)));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:GoUInt64 = ((0 : GoUInt64));
        var _x49:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x42, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:GoUInt64 = ((0 : GoUInt64));
        var _x51:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x44, ((((0 : GoUInt64)) : GoUInt64)), ((((_x49 : T_p224Uint1)) : GoUInt64)));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:GoUInt64 = ((0 : GoUInt64));
        var _x53:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x46, ((((0 : GoUInt64)) : GoUInt64)), ((((_x51 : T_p224Uint1)) : GoUInt64)));
            _x52 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x48, (("18446744073709551615" : GoUInt64)));
            _x54 = __tmp__._1;
        };
        var _x56:GoUInt64 = ((0 : GoUInt64));
        var _x57:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("4294967295" : GoUInt64)));
            _x57 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x58:GoUInt64 = ((0 : GoUInt64));
        var _x59:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x59 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x60:GoUInt64 = ((0 : GoUInt64));
        var _x61:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744069414584320" : GoUInt64)));
            _x61 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x62:GoUInt64 = ((0 : GoUInt64));
        var _x63:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x61, _x58, ((((0 : GoUInt64)) : GoUInt64)));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:GoUInt64 = ((0 : GoUInt64));
        var _x65:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x59, _x56, ((((_x63 : T_p224Uint1)) : GoUInt64)));
            _x64 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, _x54, ((((0 : GoUInt64)) : GoUInt64)));
            _x67 = __tmp__._1;
        };
        var _x68:GoUInt64 = ((0 : GoUInt64));
        var _x69:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, _x60, ((((_x67 : T_p224Uint1)) : GoUInt64)));
            _x68 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x70:GoUInt64 = ((0 : GoUInt64));
        var _x71:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x52, _x62, ((((_x69 : T_p224Uint1)) : GoUInt64)));
            _x70 = __tmp__._0;
            _x71 = __tmp__._1;
        };
        var _x72:GoUInt64 = ((0 : GoUInt64));
        var _x73:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x53 : T_p224Uint1)) : GoUInt64)) + (((((_x47 : T_p224Uint1)) : GoUInt64)) + (((((_x39 : T_p224Uint1)) : GoUInt64)) + _x31))), _x64, ((((_x71 : T_p224Uint1)) : GoUInt64)));
            _x72 = __tmp__._0;
            _x73 = __tmp__._1;
        };
        var _x74:GoUInt64 = ((0 : GoUInt64));
        var _x75:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x68, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x74 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x76:GoUInt64 = ((0 : GoUInt64));
        var _x77:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x70, ((((0 : GoUInt64)) : GoUInt64)), ((((_x75 : T_p224Uint1)) : GoUInt64)));
            _x76 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x78:GoUInt64 = ((0 : GoUInt64));
        var _x79:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x72, ((((0 : GoUInt64)) : GoUInt64)), ((((_x77 : T_p224Uint1)) : GoUInt64)));
            _x78 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x80:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x74, (("18446744073709551615" : GoUInt64)));
            _x80 = __tmp__._1;
        };
        var _x82:GoUInt64 = ((0 : GoUInt64));
        var _x83:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x80, (("4294967295" : GoUInt64)));
            _x83 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x84:GoUInt64 = ((0 : GoUInt64));
        var _x85:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x80, (("18446744073709551615" : GoUInt64)));
            _x85 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x86:GoUInt64 = ((0 : GoUInt64));
        var _x87:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x80, (("18446744069414584320" : GoUInt64)));
            _x87 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x88:GoUInt64 = ((0 : GoUInt64));
        var _x89:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x87, _x84, ((((0 : GoUInt64)) : GoUInt64)));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:GoUInt64 = ((0 : GoUInt64));
        var _x91:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x85, _x82, ((((_x89 : T_p224Uint1)) : GoUInt64)));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x74, _x80, ((((0 : GoUInt64)) : GoUInt64)));
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x76, _x86, ((((_x93 : T_p224Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x78, _x88, ((((_x95 : T_p224Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x79 : T_p224Uint1)) : GoUInt64)) + (((((_x73 : T_p224Uint1)) : GoUInt64)) + (((((_x65 : T_p224Uint1)) : GoUInt64)) + _x57))), _x90, ((((_x97 : T_p224Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = (((((_x99 : T_p224Uint1)) : GoUInt64)) + (((((_x91 : T_p224Uint1)) : GoUInt64)) + _x83));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        var _x102:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x94, ((((1 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x101 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x103:GoUInt64 = ((0 : GoUInt64));
        var _x104:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x96, (("18446744069414584320" : GoUInt64)), ((((_x102 : T_p224Uint1)) : GoUInt64)));
            _x103 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x105:GoUInt64 = ((0 : GoUInt64));
        var _x106:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x98, (("18446744073709551615" : GoUInt64)), ((((_x104 : T_p224Uint1)) : GoUInt64)));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x107:GoUInt64 = ((0 : GoUInt64));
        var _x108:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x100, (("4294967295" : GoUInt64)), ((((_x106 : T_p224Uint1)) : GoUInt64)));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((0 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x108 : T_p224Uint1)) : GoUInt64)));
            _x110 = __tmp__._1;
        };
        var _x111:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x111), ((_x110 : T_p224Uint1)), _x101, _x94);
        var _x112:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x112), ((_x110 : T_p224Uint1)), _x103, _x96);
        var _x113:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x113), ((_x110 : T_p224Uint1)), _x105, _x98);
        var _x114:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x114), ((_x110 : T_p224Uint1)), _x107, _x100);
        if (_out1 != null) _out1[((0 : GoInt))] = _x111;
        if (_out1 != null) _out1[((1 : GoInt))] = _x112;
        if (_out1 != null) _out1[((2 : GoInt))] = _x113;
        if (_out1 != null) _out1[((3 : GoInt))] = _x114;
    }
/**
    // p224ToMontgomery translates a field element into the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = eval arg1 mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p224ToMontgomery(_out1:T_p224MontgomeryDomainFieldElement, _arg1:T_p224NonMontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("4294967295" : GoUInt64)));
            _x6 = __tmp__._0;
            _x5 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("18446744065119617024" : GoUInt64)));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("18446744069414584320" : GoUInt64)));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("18446744069414584321" : GoUInt64)));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((0 : GoUInt64)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x14 : T_p224Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x8, _x5, ((((_x16 : T_p224Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x11, (("18446744073709551615" : GoUInt64)));
            _x19 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x19, (("4294967295" : GoUInt64)));
            _x22 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x19, (("18446744073709551615" : GoUInt64)));
            _x24 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x25:GoUInt64 = ((0 : GoUInt64));
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x19, (("18446744069414584320" : GoUInt64)));
            _x26 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x26, _x23, ((((0 : GoUInt64)) : GoUInt64)));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:GoUInt64 = ((0 : GoUInt64));
        var _x30:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x24, _x21, ((((_x28 : T_p224Uint1)) : GoUInt64)));
            _x29 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x19, ((((0 : GoUInt64)) : GoUInt64)));
            _x32 = __tmp__._1;
        };
        var _x33:GoUInt64 = ((0 : GoUInt64));
        var _x34:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x25, ((((_x32 : T_p224Uint1)) : GoUInt64)));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:GoUInt64 = ((0 : GoUInt64));
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x27, ((((_x34 : T_p224Uint1)) : GoUInt64)));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:GoUInt64 = ((0 : GoUInt64));
        var _x38:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x29, ((((_x36 : T_p224Uint1)) : GoUInt64)));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:GoUInt64 = ((0 : GoUInt64));
        var _x40:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("4294967295" : GoUInt64)));
            _x40 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x41:GoUInt64 = ((0 : GoUInt64));
        var _x42:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744065119617024" : GoUInt64)));
            _x42 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x43:GoUInt64 = ((0 : GoUInt64));
        var _x44:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744069414584320" : GoUInt64)));
            _x44 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744069414584321" : GoUInt64)));
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:GoUInt64 = ((0 : GoUInt64));
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x46, _x43, ((((0 : GoUInt64)) : GoUInt64)));
            _x47 = __tmp__._0;
            _x48 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x44, _x41, ((((_x48 : T_p224Uint1)) : GoUInt64)));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x42, _x39, ((((_x50 : T_p224Uint1)) : GoUInt64)));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x33, _x45, ((((0 : GoUInt64)) : GoUInt64)));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x35, _x47, ((((_x54 : T_p224Uint1)) : GoUInt64)));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x37, _x49, ((((_x56 : T_p224Uint1)) : GoUInt64)));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((((_x38 : T_p224Uint1)) : GoUInt64)) + (((((_x18 : T_p224Uint1)) : GoUInt64)) + _x6)) + (((((_x30 : T_p224Uint1)) : GoUInt64)) + _x22)), _x51, ((((_x58 : T_p224Uint1)) : GoUInt64)));
            _x59 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x53, (("18446744073709551615" : GoUInt64)));
            _x61 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x61, (("4294967295" : GoUInt64)));
            _x64 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x61, (("18446744073709551615" : GoUInt64)));
            _x66 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x61, (("18446744069414584320" : GoUInt64)));
            _x68 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x68, _x65, ((((0 : GoUInt64)) : GoUInt64)));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x66, _x63, ((((_x70 : T_p224Uint1)) : GoUInt64)));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x53, _x61, ((((0 : GoUInt64)) : GoUInt64)));
            _x74 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x55, _x67, ((((_x74 : T_p224Uint1)) : GoUInt64)));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x57, _x69, ((((_x76 : T_p224Uint1)) : GoUInt64)));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79:GoUInt64 = ((0 : GoUInt64));
        var _x80:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x59, _x71, ((((_x78 : T_p224Uint1)) : GoUInt64)));
            _x79 = __tmp__._0;
            _x80 = __tmp__._1;
        };
        var _x81:GoUInt64 = ((0 : GoUInt64));
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("4294967295" : GoUInt64)));
            _x82 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744065119617024" : GoUInt64)));
            _x84 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744069414584320" : GoUInt64)));
            _x86 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744069414584321" : GoUInt64)));
            _x88 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        var _x90:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x88, _x85, ((((0 : GoUInt64)) : GoUInt64)));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:GoUInt64 = ((0 : GoUInt64));
        var _x92:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x86, _x83, ((((_x90 : T_p224Uint1)) : GoUInt64)));
            _x91 = __tmp__._0;
            _x92 = __tmp__._1;
        };
        var _x93:GoUInt64 = ((0 : GoUInt64));
        var _x94:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x84, _x81, ((((_x92 : T_p224Uint1)) : GoUInt64)));
            _x93 = __tmp__._0;
            _x94 = __tmp__._1;
        };
        var _x95:GoUInt64 = ((0 : GoUInt64));
        var _x96:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x75, _x87, ((((0 : GoUInt64)) : GoUInt64)));
            _x95 = __tmp__._0;
            _x96 = __tmp__._1;
        };
        var _x97:GoUInt64 = ((0 : GoUInt64));
        var _x98:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x77, _x89, ((((_x96 : T_p224Uint1)) : GoUInt64)));
            _x97 = __tmp__._0;
            _x98 = __tmp__._1;
        };
        var _x99:GoUInt64 = ((0 : GoUInt64));
        var _x100:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x79, _x91, ((((_x98 : T_p224Uint1)) : GoUInt64)));
            _x99 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x101:GoUInt64 = ((0 : GoUInt64));
        var _x102:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((((_x80 : T_p224Uint1)) : GoUInt64)) + (((((_x60 : T_p224Uint1)) : GoUInt64)) + (((((_x52 : T_p224Uint1)) : GoUInt64)) + _x40))) + (((((_x72 : T_p224Uint1)) : GoUInt64)) + _x64)), _x93, ((((_x100 : T_p224Uint1)) : GoUInt64)));
            _x101 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x95, (("18446744073709551615" : GoUInt64)));
            _x103 = __tmp__._1;
        };
        var _x105:GoUInt64 = ((0 : GoUInt64));
        var _x106:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x103, (("4294967295" : GoUInt64)));
            _x106 = __tmp__._0;
            _x105 = __tmp__._1;
        };
        var _x107:GoUInt64 = ((0 : GoUInt64));
        var _x108:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x103, (("18446744073709551615" : GoUInt64)));
            _x108 = __tmp__._0;
            _x107 = __tmp__._1;
        };
        var _x109:GoUInt64 = ((0 : GoUInt64));
        var _x110:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x103, (("18446744069414584320" : GoUInt64)));
            _x110 = __tmp__._0;
            _x109 = __tmp__._1;
        };
        var _x111:GoUInt64 = ((0 : GoUInt64));
        var _x112:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x110, _x107, ((((0 : GoUInt64)) : GoUInt64)));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x113:GoUInt64 = ((0 : GoUInt64));
        var _x114:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x108, _x105, ((((_x112 : T_p224Uint1)) : GoUInt64)));
            _x113 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x95, _x103, ((((0 : GoUInt64)) : GoUInt64)));
            _x116 = __tmp__._1;
        };
        var _x117:GoUInt64 = ((0 : GoUInt64));
        var _x118:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x97, _x109, ((((_x116 : T_p224Uint1)) : GoUInt64)));
            _x117 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x119:GoUInt64 = ((0 : GoUInt64));
        var _x120:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x99, _x111, ((((_x118 : T_p224Uint1)) : GoUInt64)));
            _x119 = __tmp__._0;
            _x120 = __tmp__._1;
        };
        var _x121:GoUInt64 = ((0 : GoUInt64));
        var _x122:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x101, _x113, ((((_x120 : T_p224Uint1)) : GoUInt64)));
            _x121 = __tmp__._0;
            _x122 = __tmp__._1;
        };
        var _x123:GoUInt64 = ((0 : GoUInt64));
        var _x124:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("4294967295" : GoUInt64)));
            _x124 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x125:GoUInt64 = ((0 : GoUInt64));
        var _x126:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("18446744065119617024" : GoUInt64)));
            _x126 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x127:GoUInt64 = ((0 : GoUInt64));
        var _x128:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("18446744069414584320" : GoUInt64)));
            _x128 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x129:GoUInt64 = ((0 : GoUInt64));
        var _x130:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("18446744069414584321" : GoUInt64)));
            _x130 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x131:GoUInt64 = ((0 : GoUInt64));
        var _x132:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x130, _x127, ((((0 : GoUInt64)) : GoUInt64)));
            _x131 = __tmp__._0;
            _x132 = __tmp__._1;
        };
        var _x133:GoUInt64 = ((0 : GoUInt64));
        var _x134:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x128, _x125, ((((_x132 : T_p224Uint1)) : GoUInt64)));
            _x133 = __tmp__._0;
            _x134 = __tmp__._1;
        };
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x126, _x123, ((((_x134 : T_p224Uint1)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, _x129, ((((0 : GoUInt64)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x119, _x131, ((((_x138 : T_p224Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x121, _x133, ((((_x140 : T_p224Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((((_x122 : T_p224Uint1)) : GoUInt64)) + (((((_x102 : T_p224Uint1)) : GoUInt64)) + (((((_x94 : T_p224Uint1)) : GoUInt64)) + _x82))) + (((((_x114 : T_p224Uint1)) : GoUInt64)) + _x106)), _x135, ((((_x142 : T_p224Uint1)) : GoUInt64)));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x137, (("18446744073709551615" : GoUInt64)));
            _x145 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x145, (("4294967295" : GoUInt64)));
            _x148 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x145, (("18446744073709551615" : GoUInt64)));
            _x150 = __tmp__._0;
            _x149 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x145, (("18446744069414584320" : GoUInt64)));
            _x152 = __tmp__._0;
            _x151 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x152, _x149, ((((0 : GoUInt64)) : GoUInt64)));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:GoUInt64 = ((0 : GoUInt64));
        var _x156:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x150, _x147, ((((_x154 : T_p224Uint1)) : GoUInt64)));
            _x155 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x137, _x145, ((((0 : GoUInt64)) : GoUInt64)));
            _x158 = __tmp__._1;
        };
        var _x159:GoUInt64 = ((0 : GoUInt64));
        var _x160:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x139, _x151, ((((_x158 : T_p224Uint1)) : GoUInt64)));
            _x159 = __tmp__._0;
            _x160 = __tmp__._1;
        };
        var _x161:GoUInt64 = ((0 : GoUInt64));
        var _x162:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x153, ((((_x160 : T_p224Uint1)) : GoUInt64)));
            _x161 = __tmp__._0;
            _x162 = __tmp__._1;
        };
        var _x163:GoUInt64 = ((0 : GoUInt64));
        var _x164:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x155, ((((_x162 : T_p224Uint1)) : GoUInt64)));
            _x163 = __tmp__._0;
            _x164 = __tmp__._1;
        };
        var _x165:GoUInt64 = ((((((_x164 : T_p224Uint1)) : GoUInt64)) + (((((_x144 : T_p224Uint1)) : GoUInt64)) + (((((_x136 : T_p224Uint1)) : GoUInt64)) + _x124))) + (((((_x156 : T_p224Uint1)) : GoUInt64)) + _x148));
        var _x166:GoUInt64 = ((0 : GoUInt64));
        var _x167:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x159, ((((1 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:GoUInt64 = ((0 : GoUInt64));
        var _x169:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x161, (("18446744069414584320" : GoUInt64)), ((((_x167 : T_p224Uint1)) : GoUInt64)));
            _x168 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x170:GoUInt64 = ((0 : GoUInt64));
        var _x171:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x163, (("18446744073709551615" : GoUInt64)), ((((_x169 : T_p224Uint1)) : GoUInt64)));
            _x170 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x172:GoUInt64 = ((0 : GoUInt64));
        var _x173:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x165, (("4294967295" : GoUInt64)), ((((_x171 : T_p224Uint1)) : GoUInt64)));
            _x172 = __tmp__._0;
            _x173 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((0 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x173 : T_p224Uint1)) : GoUInt64)));
            _x175 = __tmp__._1;
        };
        var _x176:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x176), ((_x175 : T_p224Uint1)), _x166, _x159);
        var _x177:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x177), ((_x175 : T_p224Uint1)), _x168, _x161);
        var _x178:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x178), ((_x175 : T_p224Uint1)), _x170, _x163);
        var _x179:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x179), ((_x175 : T_p224Uint1)), _x172, _x165);
        if (_out1 != null) _out1[((0 : GoInt))] = _x176;
        if (_out1 != null) _out1[((1 : GoInt))] = _x177;
        if (_out1 != null) _out1[((2 : GoInt))] = _x178;
        if (_out1 != null) _out1[((3 : GoInt))] = _x179;
    }
/**
    // p224Selectznz is a multi-limb conditional select.
    //
    // Postconditions:
    //   eval out1 = (if arg1 = 0 then eval arg2 else eval arg3)
    //
    // Input Bounds:
    //   arg1: [0x0 ~> 0x1]
    //   arg2: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    //   arg3: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
**/
function _p224Selectznz(_out1:GoArray<GoUInt64>, _arg1:T_p224Uint1, _arg2:GoArray<GoUInt64>, _arg3:GoArray<GoUInt64>):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x1), _arg1, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((0 : GoInt))] : ((0 : GoUInt64))));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x2), _arg1, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((1 : GoInt))] : ((0 : GoUInt64))));
        var _x3:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x3), _arg1, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((2 : GoInt))] : ((0 : GoUInt64))));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        _p224CmovznzU64(Go.pointer(_x4), _arg1, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((3 : GoInt))] : ((0 : GoUInt64))));
        if (_out1 != null) _out1[((0 : GoInt))] = _x1;
        if (_out1 != null) _out1[((1 : GoInt))] = _x2;
        if (_out1 != null) _out1[((2 : GoInt))] = _x3;
        if (_out1 != null) _out1[((3 : GoInt))] = _x4;
    }
/**
    // p224ToBytes serializes a field element NOT in the Montgomery domain to bytes in little-endian order.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   out1 = map (λ x, ⌊((eval arg1 mod m) mod 2^(8 * (x + 1))) / 2^(8 * x)⌋) [0..27]
    //
    // Input Bounds:
    //   arg1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff]]
**/
function _p224ToBytes(_out1:GoArray<GoUInt8>, _arg1:GoArray<GoUInt64>):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt8 = (((_x4 : GoUInt8)) & ((255 : GoUInt8)));
        var _x6:GoUInt64 = (_x4 >> ((8 : GoUnTypedInt)));
        var _x7:GoUInt8 = (((_x6 : GoUInt8)) & ((255 : GoUInt8)));
        var _x8:GoUInt64 = (_x6 >> ((8 : GoUnTypedInt)));
        var _x9:GoUInt8 = (((_x8 : GoUInt8)) & ((255 : GoUInt8)));
        var _x10:GoUInt64 = (_x8 >> ((8 : GoUnTypedInt)));
        var _x11:GoUInt8 = (((_x10 : GoUInt8)) & ((255 : GoUInt8)));
        var _x12:GoUInt64 = (_x10 >> ((8 : GoUnTypedInt)));
        var _x13:GoUInt8 = (((_x12 : GoUInt8)) & ((255 : GoUInt8)));
        var _x14:GoUInt64 = (_x12 >> ((8 : GoUnTypedInt)));
        var _x15:GoUInt8 = (((_x14 : GoUInt8)) & ((255 : GoUInt8)));
        var _x16:GoUInt64 = (_x14 >> ((8 : GoUnTypedInt)));
        var _x17:GoUInt8 = (((_x16 : GoUInt8)) & ((255 : GoUInt8)));
        var _x18:GoUInt8 = (((_x16 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x19:GoUInt8 = (((_x3 : GoUInt8)) & ((255 : GoUInt8)));
        var _x20:GoUInt64 = (_x3 >> ((8 : GoUnTypedInt)));
        var _x21:GoUInt8 = (((_x20 : GoUInt8)) & ((255 : GoUInt8)));
        var _x22:GoUInt64 = (_x20 >> ((8 : GoUnTypedInt)));
        var _x23:GoUInt8 = (((_x22 : GoUInt8)) & ((255 : GoUInt8)));
        var _x24:GoUInt64 = (_x22 >> ((8 : GoUnTypedInt)));
        var _x25:GoUInt8 = (((_x24 : GoUInt8)) & ((255 : GoUInt8)));
        var _x26:GoUInt64 = (_x24 >> ((8 : GoUnTypedInt)));
        var _x27:GoUInt8 = (((_x26 : GoUInt8)) & ((255 : GoUInt8)));
        var _x28:GoUInt64 = (_x26 >> ((8 : GoUnTypedInt)));
        var _x29:GoUInt8 = (((_x28 : GoUInt8)) & ((255 : GoUInt8)));
        var _x30:GoUInt64 = (_x28 >> ((8 : GoUnTypedInt)));
        var _x31:GoUInt8 = (((_x30 : GoUInt8)) & ((255 : GoUInt8)));
        var _x32:GoUInt8 = (((_x30 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x33:GoUInt8 = (((_x2 : GoUInt8)) & ((255 : GoUInt8)));
        var _x34:GoUInt64 = (_x2 >> ((8 : GoUnTypedInt)));
        var _x35:GoUInt8 = (((_x34 : GoUInt8)) & ((255 : GoUInt8)));
        var _x36:GoUInt64 = (_x34 >> ((8 : GoUnTypedInt)));
        var _x37:GoUInt8 = (((_x36 : GoUInt8)) & ((255 : GoUInt8)));
        var _x38:GoUInt64 = (_x36 >> ((8 : GoUnTypedInt)));
        var _x39:GoUInt8 = (((_x38 : GoUInt8)) & ((255 : GoUInt8)));
        var _x40:GoUInt64 = (_x38 >> ((8 : GoUnTypedInt)));
        var _x41:GoUInt8 = (((_x40 : GoUInt8)) & ((255 : GoUInt8)));
        var _x42:GoUInt64 = (_x40 >> ((8 : GoUnTypedInt)));
        var _x43:GoUInt8 = (((_x42 : GoUInt8)) & ((255 : GoUInt8)));
        var _x44:GoUInt64 = (_x42 >> ((8 : GoUnTypedInt)));
        var _x45:GoUInt8 = (((_x44 : GoUInt8)) & ((255 : GoUInt8)));
        var _x46:GoUInt8 = (((_x44 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x47:GoUInt8 = (((_x1 : GoUInt8)) & ((255 : GoUInt8)));
        var _x48:GoUInt64 = (_x1 >> ((8 : GoUnTypedInt)));
        var _x49:GoUInt8 = (((_x48 : GoUInt8)) & ((255 : GoUInt8)));
        var _x50:GoUInt64 = (_x48 >> ((8 : GoUnTypedInt)));
        var _x51:GoUInt8 = (((_x50 : GoUInt8)) & ((255 : GoUInt8)));
        var _x52:GoUInt8 = (((_x50 >> ((8 : GoUnTypedInt))) : GoUInt8));
        if (_out1 != null) _out1[((0 : GoInt))] = _x5;
        if (_out1 != null) _out1[((1 : GoInt))] = _x7;
        if (_out1 != null) _out1[((2 : GoInt))] = _x9;
        if (_out1 != null) _out1[((3 : GoInt))] = _x11;
        if (_out1 != null) _out1[((4 : GoInt))] = _x13;
        if (_out1 != null) _out1[((5 : GoInt))] = _x15;
        if (_out1 != null) _out1[((6 : GoInt))] = _x17;
        if (_out1 != null) _out1[((7 : GoInt))] = _x18;
        if (_out1 != null) _out1[((8 : GoInt))] = _x19;
        if (_out1 != null) _out1[((9 : GoInt))] = _x21;
        if (_out1 != null) _out1[((10 : GoInt))] = _x23;
        if (_out1 != null) _out1[((11 : GoInt))] = _x25;
        if (_out1 != null) _out1[((12 : GoInt))] = _x27;
        if (_out1 != null) _out1[((13 : GoInt))] = _x29;
        if (_out1 != null) _out1[((14 : GoInt))] = _x31;
        if (_out1 != null) _out1[((15 : GoInt))] = _x32;
        if (_out1 != null) _out1[((16 : GoInt))] = _x33;
        if (_out1 != null) _out1[((17 : GoInt))] = _x35;
        if (_out1 != null) _out1[((18 : GoInt))] = _x37;
        if (_out1 != null) _out1[((19 : GoInt))] = _x39;
        if (_out1 != null) _out1[((20 : GoInt))] = _x41;
        if (_out1 != null) _out1[((21 : GoInt))] = _x43;
        if (_out1 != null) _out1[((22 : GoInt))] = _x45;
        if (_out1 != null) _out1[((23 : GoInt))] = _x46;
        if (_out1 != null) _out1[((24 : GoInt))] = _x47;
        if (_out1 != null) _out1[((25 : GoInt))] = _x49;
        if (_out1 != null) _out1[((26 : GoInt))] = _x51;
        if (_out1 != null) _out1[((27 : GoInt))] = _x52;
    }
/**
    // p224FromBytes deserializes a field element NOT in the Montgomery domain from bytes in little-endian order.
    //
    // Preconditions:
    //   0 ≤ bytes_eval arg1 < m
    // Postconditions:
    //   eval out1 mod m = bytes_eval arg1 mod m
    //   0 ≤ eval out1 < m
    //
    // Input Bounds:
    //   arg1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffff]]
**/
function _p224FromBytes(_out1:GoArray<GoUInt64>, _arg1:GoArray<GoUInt8>):Void {
        var _x1:GoUInt64 = ((((_arg1 != null ? _arg1[((27 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x2:GoUInt64 = ((((_arg1 != null ? _arg1[((26 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x3:GoUInt64 = ((((_arg1 != null ? _arg1[((25 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x4:GoUInt8 = (_arg1 != null ? _arg1[((24 : GoInt))] : ((0 : GoUInt8)));
        var _x5:GoUInt64 = ((((_arg1 != null ? _arg1[((23 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x6:GoUInt64 = ((((_arg1 != null ? _arg1[((22 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x7:GoUInt64 = ((((_arg1 != null ? _arg1[((21 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x8:GoUInt64 = ((((_arg1 != null ? _arg1[((20 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x9:GoUInt64 = ((((_arg1 != null ? _arg1[((19 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x10:GoUInt64 = ((((_arg1 != null ? _arg1[((18 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x11:GoUInt64 = ((((_arg1 != null ? _arg1[((17 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x12:GoUInt8 = (_arg1 != null ? _arg1[((16 : GoInt))] : ((0 : GoUInt8)));
        var _x13:GoUInt64 = ((((_arg1 != null ? _arg1[((15 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x14:GoUInt64 = ((((_arg1 != null ? _arg1[((14 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x15:GoUInt64 = ((((_arg1 != null ? _arg1[((13 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x16:GoUInt64 = ((((_arg1 != null ? _arg1[((12 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x17:GoUInt64 = ((((_arg1 != null ? _arg1[((11 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x18:GoUInt64 = ((((_arg1 != null ? _arg1[((10 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x19:GoUInt64 = ((((_arg1 != null ? _arg1[((9 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x20:GoUInt8 = (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt8)));
        var _x21:GoUInt64 = ((((_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x22:GoUInt64 = ((((_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x23:GoUInt64 = ((((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x24:GoUInt64 = ((((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x25:GoUInt64 = ((((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x26:GoUInt64 = ((((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x27:GoUInt64 = ((((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x28:GoUInt8 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt8)));
        var _x29:GoUInt64 = (_x27 + ((_x28 : GoUInt64)));
        var _x30:GoUInt64 = (_x26 + _x29);
        var _x31:GoUInt64 = (_x25 + _x30);
        var _x32:GoUInt64 = (_x24 + _x31);
        var _x33:GoUInt64 = (_x23 + _x32);
        var _x34:GoUInt64 = (_x22 + _x33);
        var _x35:GoUInt64 = (_x21 + _x34);
        var _x36:GoUInt64 = (_x19 + ((_x20 : GoUInt64)));
        var _x37:GoUInt64 = (_x18 + _x36);
        var _x38:GoUInt64 = (_x17 + _x37);
        var _x39:GoUInt64 = (_x16 + _x38);
        var _x40:GoUInt64 = (_x15 + _x39);
        var _x41:GoUInt64 = (_x14 + _x40);
        var _x42:GoUInt64 = (_x13 + _x41);
        var _x43:GoUInt64 = (_x11 + ((_x12 : GoUInt64)));
        var _x44:GoUInt64 = (_x10 + _x43);
        var _x45:GoUInt64 = (_x9 + _x44);
        var _x46:GoUInt64 = (_x8 + _x45);
        var _x47:GoUInt64 = (_x7 + _x46);
        var _x48:GoUInt64 = (_x6 + _x47);
        var _x49:GoUInt64 = (_x5 + _x48);
        var _x50:GoUInt64 = (_x3 + ((_x4 : GoUInt64)));
        var _x51:GoUInt64 = (_x2 + _x50);
        var _x52:GoUInt64 = (_x1 + _x51);
        if (_out1 != null) _out1[((0 : GoInt))] = _x35;
        if (_out1 != null) _out1[((1 : GoInt))] = _x42;
        if (_out1 != null) _out1[((2 : GoInt))] = _x49;
        if (_out1 != null) _out1[((3 : GoInt))] = _x52;
    }
function _p384InvertEndianness(_v:Slice<GoByte>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((_v != null ? _v.length : ((0 : GoInt))) / ((2 : GoInt))), _i++, {
                {
                    final __tmp__0 = (_v != null ? _v[((_v != null ? _v.length : ((0 : GoInt))) - ((1 : GoInt))) - _i] : ((0 : GoUInt8)));
                    final __tmp__1 = (_v != null ? _v[_i] : ((0 : GoUInt8)));
                    if (_v != null) _v[_i] = __tmp__0;
                    if (_v != null) _v[((_v != null ? _v.length : ((0 : GoInt))) - ((1 : GoInt))) - _i] = __tmp__1;
                };
            });
        };
    }
/**
    // p384CmovznzU64 is a single-word conditional move.
    //
    // Postconditions:
    //   out1 = (if arg1 = 0 then arg2 else arg3)
    //
    // Input Bounds:
    //   arg1: [0x0 ~> 0x1]
    //   arg2: [0x0 ~> 0xffffffffffffffff]
    //   arg3: [0x0 ~> 0xffffffffffffffff]
    // Output Bounds:
    //   out1: [0x0 ~> 0xffffffffffffffff]
**/
function _p384CmovznzU64(_out1:Pointer<GoUInt64>, _arg1:T_p384Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
        var _x1:GoUInt64 = (((_arg1 : GoUInt64)) * (("18446744073709551615" : GoUInt64)));
        var _x2:GoUInt64 = ((_x1 & _arg3) | (((-1 ^ _x1)) & _arg2));
        _out1.value = _x2;
    }
/**
    // p384Mul multiplies two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) * eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384Mul(_out1:T_p384MontgomeryDomainFieldElement, _arg1:T_p384MontgomeryDomainFieldElement, _arg2:T_p384MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x14 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x16 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x18 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x18, _x15, ((((0 : GoUInt64)) : GoUInt64)));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x16, _x13, ((((_x20 : T_p384Uint1)) : GoUInt64)));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x14, _x11, ((((_x22 : T_p384Uint1)) : GoUInt64)));
            _x23 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x25:GoUInt64 = ((0 : GoUInt64));
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((_x24 : T_p384Uint1)) : GoUInt64)));
            _x25 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x26 : T_p384Uint1)) : GoUInt64)));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:GoUInt64 = (((((_x28 : T_p384Uint1)) : GoUInt64)) + _x8);
        var _x30:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x17, (("4294967297" : GoUInt64)));
            _x30 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551615" : GoUInt64)));
            _x33 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551615" : GoUInt64)));
            _x35 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551615" : GoUInt64)));
            _x37 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551614" : GoUInt64)));
            _x39 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x40:GoUInt64 = ((0 : GoUInt64));
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744069414584320" : GoUInt64)));
            _x41 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("4294967295" : GoUInt64)));
            _x43 = __tmp__._0;
            _x42 = __tmp__._1;
        };
        var _x44:GoUInt64 = ((0 : GoUInt64));
        var _x45:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x43, _x40, ((((0 : GoUInt64)) : GoUInt64)));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:GoUInt64 = ((0 : GoUInt64));
        var _x47:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x41, _x38, ((((_x45 : T_p384Uint1)) : GoUInt64)));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:GoUInt64 = ((0 : GoUInt64));
        var _x49:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x39, _x36, ((((_x47 : T_p384Uint1)) : GoUInt64)));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:GoUInt64 = ((0 : GoUInt64));
        var _x51:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x37, _x34, ((((_x49 : T_p384Uint1)) : GoUInt64)));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:GoUInt64 = ((0 : GoUInt64));
        var _x53:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x35, _x32, ((((_x51 : T_p384Uint1)) : GoUInt64)));
            _x52 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x54:GoUInt64 = (((((_x53 : T_p384Uint1)) : GoUInt64)) + _x33);
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x42, ((((0 : GoUInt64)) : GoUInt64)));
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x44, ((((_x56 : T_p384Uint1)) : GoUInt64)));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x21, _x46, ((((_x58 : T_p384Uint1)) : GoUInt64)));
            _x59 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        var _x62:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x23, _x48, ((((_x60 : T_p384Uint1)) : GoUInt64)));
            _x61 = __tmp__._0;
            _x62 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x25, _x50, ((((_x62 : T_p384Uint1)) : GoUInt64)));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x27, _x52, ((((_x64 : T_p384Uint1)) : GoUInt64)));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x29, _x54, ((((_x66 : T_p384Uint1)) : GoUInt64)));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x70 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x72 = __tmp__._0;
            _x71 = __tmp__._1;
        };
        var _x73:GoUInt64 = ((0 : GoUInt64));
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x74 = __tmp__._0;
            _x73 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x76 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x78 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x79:GoUInt64 = ((0 : GoUInt64));
        var _x80:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x80 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x81:GoUInt64 = ((0 : GoUInt64));
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x80, _x77, ((((0 : GoUInt64)) : GoUInt64)));
            _x81 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x78, _x75, ((((_x82 : T_p384Uint1)) : GoUInt64)));
            _x83 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x76, _x73, ((((_x84 : T_p384Uint1)) : GoUInt64)));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x74, _x71, ((((_x86 : T_p384Uint1)) : GoUInt64)));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        var _x90:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x72, _x69, ((((_x88 : T_p384Uint1)) : GoUInt64)));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:GoUInt64 = (((((_x90 : T_p384Uint1)) : GoUInt64)) + _x70);
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x57, _x79, ((((0 : GoUInt64)) : GoUInt64)));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x59, _x81, ((((_x93 : T_p384Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x61, _x83, ((((_x95 : T_p384Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x63, _x85, ((((_x97 : T_p384Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x65, _x87, ((((_x99 : T_p384Uint1)) : GoUInt64)));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x67, _x89, ((((_x101 : T_p384Uint1)) : GoUInt64)));
            _x102 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x68 : T_p384Uint1)) : GoUInt64)), _x91, ((((_x103 : T_p384Uint1)) : GoUInt64)));
            _x104 = __tmp__._0;
            _x105 = __tmp__._1;
        };
        var _x106:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x92, (("4294967297" : GoUInt64)));
            _x106 = __tmp__._1;
        };
        var _x108:GoUInt64 = ((0 : GoUInt64));
        var _x109:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551615" : GoUInt64)));
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        var _x111:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551615" : GoUInt64)));
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:GoUInt64 = ((0 : GoUInt64));
        var _x113:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551615" : GoUInt64)));
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        var _x115:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551614" : GoUInt64)));
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744069414584320" : GoUInt64)));
            _x117 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x118:GoUInt64 = ((0 : GoUInt64));
        var _x119:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("4294967295" : GoUInt64)));
            _x119 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x120:GoUInt64 = ((0 : GoUInt64));
        var _x121:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x119, _x116, ((((0 : GoUInt64)) : GoUInt64)));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:GoUInt64 = ((0 : GoUInt64));
        var _x123:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, _x114, ((((_x121 : T_p384Uint1)) : GoUInt64)));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:GoUInt64 = ((0 : GoUInt64));
        var _x125:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x112, ((((_x123 : T_p384Uint1)) : GoUInt64)));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:GoUInt64 = ((0 : GoUInt64));
        var _x127:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x110, ((((_x125 : T_p384Uint1)) : GoUInt64)));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:GoUInt64 = ((0 : GoUInt64));
        var _x129:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x108, ((((_x127 : T_p384Uint1)) : GoUInt64)));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:GoUInt64 = (((((_x129 : T_p384Uint1)) : GoUInt64)) + _x109);
        var _x132:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x92, _x118, ((((0 : GoUInt64)) : GoUInt64)));
            _x132 = __tmp__._1;
        };
        var _x133:GoUInt64 = ((0 : GoUInt64));
        var _x134:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x94, _x120, ((((_x132 : T_p384Uint1)) : GoUInt64)));
            _x133 = __tmp__._0;
            _x134 = __tmp__._1;
        };
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x96, _x122, ((((_x134 : T_p384Uint1)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x98, _x124, ((((_x136 : T_p384Uint1)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x100, _x126, ((((_x138 : T_p384Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x102, _x128, ((((_x140 : T_p384Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x104, _x130, ((((_x142 : T_p384Uint1)) : GoUInt64)));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:GoUInt64 = (((((_x144 : T_p384Uint1)) : GoUInt64)) + ((((_x105 : T_p384Uint1)) : GoUInt64)));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        var _x147:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x147 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x148:GoUInt64 = ((0 : GoUInt64));
        var _x149:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x149 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x150:GoUInt64 = ((0 : GoUInt64));
        var _x151:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x151 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x152:GoUInt64 = ((0 : GoUInt64));
        var _x153:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x153 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x154:GoUInt64 = ((0 : GoUInt64));
        var _x155:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:GoUInt64 = ((0 : GoUInt64));
        var _x157:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x157 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        var _x159:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x157, _x154, ((((0 : GoUInt64)) : GoUInt64)));
            _x158 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x160:GoUInt64 = ((0 : GoUInt64));
        var _x161:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x155, _x152, ((((_x159 : T_p384Uint1)) : GoUInt64)));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162:GoUInt64 = ((0 : GoUInt64));
        var _x163:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x153, _x150, ((((_x161 : T_p384Uint1)) : GoUInt64)));
            _x162 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x164:GoUInt64 = ((0 : GoUInt64));
        var _x165:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x151, _x148, ((((_x163 : T_p384Uint1)) : GoUInt64)));
            _x164 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x166:GoUInt64 = ((0 : GoUInt64));
        var _x167:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x149, _x146, ((((_x165 : T_p384Uint1)) : GoUInt64)));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:GoUInt64 = (((((_x167 : T_p384Uint1)) : GoUInt64)) + _x147);
        var _x169:GoUInt64 = ((0 : GoUInt64));
        var _x170:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x133, _x156, ((((0 : GoUInt64)) : GoUInt64)));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:GoUInt64 = ((0 : GoUInt64));
        var _x172:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x135, _x158, ((((_x170 : T_p384Uint1)) : GoUInt64)));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        var _x174:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x137, _x160, ((((_x172 : T_p384Uint1)) : GoUInt64)));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        var _x176:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x139, _x162, ((((_x174 : T_p384Uint1)) : GoUInt64)));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:GoUInt64 = ((0 : GoUInt64));
        var _x178:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x164, ((((_x176 : T_p384Uint1)) : GoUInt64)));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x179:GoUInt64 = ((0 : GoUInt64));
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x166, ((((_x178 : T_p384Uint1)) : GoUInt64)));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x145, _x168, ((((_x180 : T_p384Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x169, (("4294967297" : GoUInt64)));
            _x183 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551615" : GoUInt64)));
            _x186 = __tmp__._0;
            _x185 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551615" : GoUInt64)));
            _x188 = __tmp__._0;
            _x187 = __tmp__._1;
        };
        var _x189:GoUInt64 = ((0 : GoUInt64));
        var _x190:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551615" : GoUInt64)));
            _x190 = __tmp__._0;
            _x189 = __tmp__._1;
        };
        var _x191:GoUInt64 = ((0 : GoUInt64));
        var _x192:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551614" : GoUInt64)));
            _x192 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x193:GoUInt64 = ((0 : GoUInt64));
        var _x194:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744069414584320" : GoUInt64)));
            _x194 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x195:GoUInt64 = ((0 : GoUInt64));
        var _x196:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("4294967295" : GoUInt64)));
            _x196 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x197:GoUInt64 = ((0 : GoUInt64));
        var _x198:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x193, ((((0 : GoUInt64)) : GoUInt64)));
            _x197 = __tmp__._0;
            _x198 = __tmp__._1;
        };
        var _x199:GoUInt64 = ((0 : GoUInt64));
        var _x200:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x191, ((((_x198 : T_p384Uint1)) : GoUInt64)));
            _x199 = __tmp__._0;
            _x200 = __tmp__._1;
        };
        var _x201:GoUInt64 = ((0 : GoUInt64));
        var _x202:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x192, _x189, ((((_x200 : T_p384Uint1)) : GoUInt64)));
            _x201 = __tmp__._0;
            _x202 = __tmp__._1;
        };
        var _x203:GoUInt64 = ((0 : GoUInt64));
        var _x204:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x190, _x187, ((((_x202 : T_p384Uint1)) : GoUInt64)));
            _x203 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x205:GoUInt64 = ((0 : GoUInt64));
        var _x206:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x188, _x185, ((((_x204 : T_p384Uint1)) : GoUInt64)));
            _x205 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x207:GoUInt64 = (((((_x206 : T_p384Uint1)) : GoUInt64)) + _x186);
        var _x209:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x169, _x195, ((((0 : GoUInt64)) : GoUInt64)));
            _x209 = __tmp__._1;
        };
        var _x210:GoUInt64 = ((0 : GoUInt64));
        var _x211:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x171, _x197, ((((_x209 : T_p384Uint1)) : GoUInt64)));
            _x210 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x212:GoUInt64 = ((0 : GoUInt64));
        var _x213:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x173, _x199, ((((_x211 : T_p384Uint1)) : GoUInt64)));
            _x212 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x214:GoUInt64 = ((0 : GoUInt64));
        var _x215:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x175, _x201, ((((_x213 : T_p384Uint1)) : GoUInt64)));
            _x214 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x216:GoUInt64 = ((0 : GoUInt64));
        var _x217:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x177, _x203, ((((_x215 : T_p384Uint1)) : GoUInt64)));
            _x216 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x218:GoUInt64 = ((0 : GoUInt64));
        var _x219:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x179, _x205, ((((_x217 : T_p384Uint1)) : GoUInt64)));
            _x218 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x220:GoUInt64 = ((0 : GoUInt64));
        var _x221:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x181, _x207, ((((_x219 : T_p384Uint1)) : GoUInt64)));
            _x220 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x222:GoUInt64 = (((((_x221 : T_p384Uint1)) : GoUInt64)) + ((((_x182 : T_p384Uint1)) : GoUInt64)));
        var _x223:GoUInt64 = ((0 : GoUInt64));
        var _x224:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:GoUInt64 = ((0 : GoUInt64));
        var _x226:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        var _x228:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:GoUInt64 = ((0 : GoUInt64));
        var _x230:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x230 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x231:GoUInt64 = ((0 : GoUInt64));
        var _x232:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x232 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x233:GoUInt64 = ((0 : GoUInt64));
        var _x234:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x234 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x235:GoUInt64 = ((0 : GoUInt64));
        var _x236:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x234, _x231, ((((0 : GoUInt64)) : GoUInt64)));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:GoUInt64 = ((0 : GoUInt64));
        var _x238:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x232, _x229, ((((_x236 : T_p384Uint1)) : GoUInt64)));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:GoUInt64 = ((0 : GoUInt64));
        var _x240:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x230, _x227, ((((_x238 : T_p384Uint1)) : GoUInt64)));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        var _x242:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, _x225, ((((_x240 : T_p384Uint1)) : GoUInt64)));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:GoUInt64 = ((0 : GoUInt64));
        var _x244:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x226, _x223, ((((_x242 : T_p384Uint1)) : GoUInt64)));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x245:GoUInt64 = (((((_x244 : T_p384Uint1)) : GoUInt64)) + _x224);
        var _x246:GoUInt64 = ((0 : GoUInt64));
        var _x247:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x210, _x233, ((((0 : GoUInt64)) : GoUInt64)));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:GoUInt64 = ((0 : GoUInt64));
        var _x249:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x212, _x235, ((((_x247 : T_p384Uint1)) : GoUInt64)));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:GoUInt64 = ((0 : GoUInt64));
        var _x251:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x214, _x237, ((((_x249 : T_p384Uint1)) : GoUInt64)));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:GoUInt64 = ((0 : GoUInt64));
        var _x253:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x216, _x239, ((((_x251 : T_p384Uint1)) : GoUInt64)));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:GoUInt64 = ((0 : GoUInt64));
        var _x255:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x218, _x241, ((((_x253 : T_p384Uint1)) : GoUInt64)));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:GoUInt64 = ((0 : GoUInt64));
        var _x257:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x220, _x243, ((((_x255 : T_p384Uint1)) : GoUInt64)));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:GoUInt64 = ((0 : GoUInt64));
        var _x259:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x222, _x245, ((((_x257 : T_p384Uint1)) : GoUInt64)));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("4294967297" : GoUInt64)));
            _x260 = __tmp__._1;
        };
        var _x262:GoUInt64 = ((0 : GoUInt64));
        var _x263:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551615" : GoUInt64)));
            _x263 = __tmp__._0;
            _x262 = __tmp__._1;
        };
        var _x264:GoUInt64 = ((0 : GoUInt64));
        var _x265:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551615" : GoUInt64)));
            _x265 = __tmp__._0;
            _x264 = __tmp__._1;
        };
        var _x266:GoUInt64 = ((0 : GoUInt64));
        var _x267:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551615" : GoUInt64)));
            _x267 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x268:GoUInt64 = ((0 : GoUInt64));
        var _x269:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551614" : GoUInt64)));
            _x269 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x270:GoUInt64 = ((0 : GoUInt64));
        var _x271:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744069414584320" : GoUInt64)));
            _x271 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x272:GoUInt64 = ((0 : GoUInt64));
        var _x273:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("4294967295" : GoUInt64)));
            _x273 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x274:GoUInt64 = ((0 : GoUInt64));
        var _x275:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x273, _x270, ((((0 : GoUInt64)) : GoUInt64)));
            _x274 = __tmp__._0;
            _x275 = __tmp__._1;
        };
        var _x276:GoUInt64 = ((0 : GoUInt64));
        var _x277:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x271, _x268, ((((_x275 : T_p384Uint1)) : GoUInt64)));
            _x276 = __tmp__._0;
            _x277 = __tmp__._1;
        };
        var _x278:GoUInt64 = ((0 : GoUInt64));
        var _x279:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x269, _x266, ((((_x277 : T_p384Uint1)) : GoUInt64)));
            _x278 = __tmp__._0;
            _x279 = __tmp__._1;
        };
        var _x280:GoUInt64 = ((0 : GoUInt64));
        var _x281:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x267, _x264, ((((_x279 : T_p384Uint1)) : GoUInt64)));
            _x280 = __tmp__._0;
            _x281 = __tmp__._1;
        };
        var _x282:GoUInt64 = ((0 : GoUInt64));
        var _x283:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x265, _x262, ((((_x281 : T_p384Uint1)) : GoUInt64)));
            _x282 = __tmp__._0;
            _x283 = __tmp__._1;
        };
        var _x284:GoUInt64 = (((((_x283 : T_p384Uint1)) : GoUInt64)) + _x263);
        var _x286:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x246, _x272, ((((0 : GoUInt64)) : GoUInt64)));
            _x286 = __tmp__._1;
        };
        var _x287:GoUInt64 = ((0 : GoUInt64));
        var _x288:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x248, _x274, ((((_x286 : T_p384Uint1)) : GoUInt64)));
            _x287 = __tmp__._0;
            _x288 = __tmp__._1;
        };
        var _x289:GoUInt64 = ((0 : GoUInt64));
        var _x290:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x250, _x276, ((((_x288 : T_p384Uint1)) : GoUInt64)));
            _x289 = __tmp__._0;
            _x290 = __tmp__._1;
        };
        var _x291:GoUInt64 = ((0 : GoUInt64));
        var _x292:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x252, _x278, ((((_x290 : T_p384Uint1)) : GoUInt64)));
            _x291 = __tmp__._0;
            _x292 = __tmp__._1;
        };
        var _x293:GoUInt64 = ((0 : GoUInt64));
        var _x294:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x254, _x280, ((((_x292 : T_p384Uint1)) : GoUInt64)));
            _x293 = __tmp__._0;
            _x294 = __tmp__._1;
        };
        var _x295:GoUInt64 = ((0 : GoUInt64));
        var _x296:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x256, _x282, ((((_x294 : T_p384Uint1)) : GoUInt64)));
            _x295 = __tmp__._0;
            _x296 = __tmp__._1;
        };
        var _x297:GoUInt64 = ((0 : GoUInt64));
        var _x298:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x258, _x284, ((((_x296 : T_p384Uint1)) : GoUInt64)));
            _x297 = __tmp__._0;
            _x298 = __tmp__._1;
        };
        var _x299:GoUInt64 = (((((_x298 : T_p384Uint1)) : GoUInt64)) + ((((_x259 : T_p384Uint1)) : GoUInt64)));
        var _x300:GoUInt64 = ((0 : GoUInt64));
        var _x301:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x301 = __tmp__._0;
            _x300 = __tmp__._1;
        };
        var _x302:GoUInt64 = ((0 : GoUInt64));
        var _x303:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x303 = __tmp__._0;
            _x302 = __tmp__._1;
        };
        var _x304:GoUInt64 = ((0 : GoUInt64));
        var _x305:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x305 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x306:GoUInt64 = ((0 : GoUInt64));
        var _x307:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x307 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x308:GoUInt64 = ((0 : GoUInt64));
        var _x309:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x309 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x310:GoUInt64 = ((0 : GoUInt64));
        var _x311:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x311 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x312:GoUInt64 = ((0 : GoUInt64));
        var _x313:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x311, _x308, ((((0 : GoUInt64)) : GoUInt64)));
            _x312 = __tmp__._0;
            _x313 = __tmp__._1;
        };
        var _x314:GoUInt64 = ((0 : GoUInt64));
        var _x315:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x309, _x306, ((((_x313 : T_p384Uint1)) : GoUInt64)));
            _x314 = __tmp__._0;
            _x315 = __tmp__._1;
        };
        var _x316:GoUInt64 = ((0 : GoUInt64));
        var _x317:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x307, _x304, ((((_x315 : T_p384Uint1)) : GoUInt64)));
            _x316 = __tmp__._0;
            _x317 = __tmp__._1;
        };
        var _x318:GoUInt64 = ((0 : GoUInt64));
        var _x319:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x305, _x302, ((((_x317 : T_p384Uint1)) : GoUInt64)));
            _x318 = __tmp__._0;
            _x319 = __tmp__._1;
        };
        var _x320:GoUInt64 = ((0 : GoUInt64));
        var _x321:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x303, _x300, ((((_x319 : T_p384Uint1)) : GoUInt64)));
            _x320 = __tmp__._0;
            _x321 = __tmp__._1;
        };
        var _x322:GoUInt64 = (((((_x321 : T_p384Uint1)) : GoUInt64)) + _x301);
        var _x323:GoUInt64 = ((0 : GoUInt64));
        var _x324:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x287, _x310, ((((0 : GoUInt64)) : GoUInt64)));
            _x323 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x325:GoUInt64 = ((0 : GoUInt64));
        var _x326:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x289, _x312, ((((_x324 : T_p384Uint1)) : GoUInt64)));
            _x325 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x327:GoUInt64 = ((0 : GoUInt64));
        var _x328:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x291, _x314, ((((_x326 : T_p384Uint1)) : GoUInt64)));
            _x327 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x329:GoUInt64 = ((0 : GoUInt64));
        var _x330:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x293, _x316, ((((_x328 : T_p384Uint1)) : GoUInt64)));
            _x329 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x331:GoUInt64 = ((0 : GoUInt64));
        var _x332:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x295, _x318, ((((_x330 : T_p384Uint1)) : GoUInt64)));
            _x331 = __tmp__._0;
            _x332 = __tmp__._1;
        };
        var _x333:GoUInt64 = ((0 : GoUInt64));
        var _x334:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x297, _x320, ((((_x332 : T_p384Uint1)) : GoUInt64)));
            _x333 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x335:GoUInt64 = ((0 : GoUInt64));
        var _x336:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x299, _x322, ((((_x334 : T_p384Uint1)) : GoUInt64)));
            _x335 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x337:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x323, (("4294967297" : GoUInt64)));
            _x337 = __tmp__._1;
        };
        var _x339:GoUInt64 = ((0 : GoUInt64));
        var _x340:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551615" : GoUInt64)));
            _x340 = __tmp__._0;
            _x339 = __tmp__._1;
        };
        var _x341:GoUInt64 = ((0 : GoUInt64));
        var _x342:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551615" : GoUInt64)));
            _x342 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x343:GoUInt64 = ((0 : GoUInt64));
        var _x344:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551615" : GoUInt64)));
            _x344 = __tmp__._0;
            _x343 = __tmp__._1;
        };
        var _x345:GoUInt64 = ((0 : GoUInt64));
        var _x346:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551614" : GoUInt64)));
            _x346 = __tmp__._0;
            _x345 = __tmp__._1;
        };
        var _x347:GoUInt64 = ((0 : GoUInt64));
        var _x348:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744069414584320" : GoUInt64)));
            _x348 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x349:GoUInt64 = ((0 : GoUInt64));
        var _x350:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("4294967295" : GoUInt64)));
            _x350 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x351:GoUInt64 = ((0 : GoUInt64));
        var _x352:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x350, _x347, ((((0 : GoUInt64)) : GoUInt64)));
            _x351 = __tmp__._0;
            _x352 = __tmp__._1;
        };
        var _x353:GoUInt64 = ((0 : GoUInt64));
        var _x354:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x348, _x345, ((((_x352 : T_p384Uint1)) : GoUInt64)));
            _x353 = __tmp__._0;
            _x354 = __tmp__._1;
        };
        var _x355:GoUInt64 = ((0 : GoUInt64));
        var _x356:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x346, _x343, ((((_x354 : T_p384Uint1)) : GoUInt64)));
            _x355 = __tmp__._0;
            _x356 = __tmp__._1;
        };
        var _x357:GoUInt64 = ((0 : GoUInt64));
        var _x358:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x344, _x341, ((((_x356 : T_p384Uint1)) : GoUInt64)));
            _x357 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x359:GoUInt64 = ((0 : GoUInt64));
        var _x360:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x342, _x339, ((((_x358 : T_p384Uint1)) : GoUInt64)));
            _x359 = __tmp__._0;
            _x360 = __tmp__._1;
        };
        var _x361:GoUInt64 = (((((_x360 : T_p384Uint1)) : GoUInt64)) + _x340);
        var _x363:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x323, _x349, ((((0 : GoUInt64)) : GoUInt64)));
            _x363 = __tmp__._1;
        };
        var _x364:GoUInt64 = ((0 : GoUInt64));
        var _x365:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x325, _x351, ((((_x363 : T_p384Uint1)) : GoUInt64)));
            _x364 = __tmp__._0;
            _x365 = __tmp__._1;
        };
        var _x366:GoUInt64 = ((0 : GoUInt64));
        var _x367:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x327, _x353, ((((_x365 : T_p384Uint1)) : GoUInt64)));
            _x366 = __tmp__._0;
            _x367 = __tmp__._1;
        };
        var _x368:GoUInt64 = ((0 : GoUInt64));
        var _x369:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x329, _x355, ((((_x367 : T_p384Uint1)) : GoUInt64)));
            _x368 = __tmp__._0;
            _x369 = __tmp__._1;
        };
        var _x370:GoUInt64 = ((0 : GoUInt64));
        var _x371:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x331, _x357, ((((_x369 : T_p384Uint1)) : GoUInt64)));
            _x370 = __tmp__._0;
            _x371 = __tmp__._1;
        };
        var _x372:GoUInt64 = ((0 : GoUInt64));
        var _x373:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x333, _x359, ((((_x371 : T_p384Uint1)) : GoUInt64)));
            _x372 = __tmp__._0;
            _x373 = __tmp__._1;
        };
        var _x374:GoUInt64 = ((0 : GoUInt64));
        var _x375:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x335, _x361, ((((_x373 : T_p384Uint1)) : GoUInt64)));
            _x374 = __tmp__._0;
            _x375 = __tmp__._1;
        };
        var _x376:GoUInt64 = (((((_x375 : T_p384Uint1)) : GoUInt64)) + ((((_x336 : T_p384Uint1)) : GoUInt64)));
        var _x377:GoUInt64 = ((0 : GoUInt64));
        var _x378:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x378 = __tmp__._0;
            _x377 = __tmp__._1;
        };
        var _x379:GoUInt64 = ((0 : GoUInt64));
        var _x380:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x380 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x381:GoUInt64 = ((0 : GoUInt64));
        var _x382:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x382 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x383:GoUInt64 = ((0 : GoUInt64));
        var _x384:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x384 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x385:GoUInt64 = ((0 : GoUInt64));
        var _x386:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x386 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x387:GoUInt64 = ((0 : GoUInt64));
        var _x388:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x388 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x389:GoUInt64 = ((0 : GoUInt64));
        var _x390:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x388, _x385, ((((0 : GoUInt64)) : GoUInt64)));
            _x389 = __tmp__._0;
            _x390 = __tmp__._1;
        };
        var _x391:GoUInt64 = ((0 : GoUInt64));
        var _x392:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x386, _x383, ((((_x390 : T_p384Uint1)) : GoUInt64)));
            _x391 = __tmp__._0;
            _x392 = __tmp__._1;
        };
        var _x393:GoUInt64 = ((0 : GoUInt64));
        var _x394:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x384, _x381, ((((_x392 : T_p384Uint1)) : GoUInt64)));
            _x393 = __tmp__._0;
            _x394 = __tmp__._1;
        };
        var _x395:GoUInt64 = ((0 : GoUInt64));
        var _x396:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x382, _x379, ((((_x394 : T_p384Uint1)) : GoUInt64)));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:GoUInt64 = ((0 : GoUInt64));
        var _x398:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x380, _x377, ((((_x396 : T_p384Uint1)) : GoUInt64)));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:GoUInt64 = (((((_x398 : T_p384Uint1)) : GoUInt64)) + _x378);
        var _x400:GoUInt64 = ((0 : GoUInt64));
        var _x401:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x364, _x387, ((((0 : GoUInt64)) : GoUInt64)));
            _x400 = __tmp__._0;
            _x401 = __tmp__._1;
        };
        var _x402:GoUInt64 = ((0 : GoUInt64));
        var _x403:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x366, _x389, ((((_x401 : T_p384Uint1)) : GoUInt64)));
            _x402 = __tmp__._0;
            _x403 = __tmp__._1;
        };
        var _x404:GoUInt64 = ((0 : GoUInt64));
        var _x405:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x368, _x391, ((((_x403 : T_p384Uint1)) : GoUInt64)));
            _x404 = __tmp__._0;
            _x405 = __tmp__._1;
        };
        var _x406:GoUInt64 = ((0 : GoUInt64));
        var _x407:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x370, _x393, ((((_x405 : T_p384Uint1)) : GoUInt64)));
            _x406 = __tmp__._0;
            _x407 = __tmp__._1;
        };
        var _x408:GoUInt64 = ((0 : GoUInt64));
        var _x409:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x372, _x395, ((((_x407 : T_p384Uint1)) : GoUInt64)));
            _x408 = __tmp__._0;
            _x409 = __tmp__._1;
        };
        var _x410:GoUInt64 = ((0 : GoUInt64));
        var _x411:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x374, _x397, ((((_x409 : T_p384Uint1)) : GoUInt64)));
            _x410 = __tmp__._0;
            _x411 = __tmp__._1;
        };
        var _x412:GoUInt64 = ((0 : GoUInt64));
        var _x413:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x376, _x399, ((((_x411 : T_p384Uint1)) : GoUInt64)));
            _x412 = __tmp__._0;
            _x413 = __tmp__._1;
        };
        var _x414:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x400, (("4294967297" : GoUInt64)));
            _x414 = __tmp__._1;
        };
        var _x416:GoUInt64 = ((0 : GoUInt64));
        var _x417:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551615" : GoUInt64)));
            _x417 = __tmp__._0;
            _x416 = __tmp__._1;
        };
        var _x418:GoUInt64 = ((0 : GoUInt64));
        var _x419:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551615" : GoUInt64)));
            _x419 = __tmp__._0;
            _x418 = __tmp__._1;
        };
        var _x420:GoUInt64 = ((0 : GoUInt64));
        var _x421:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551615" : GoUInt64)));
            _x421 = __tmp__._0;
            _x420 = __tmp__._1;
        };
        var _x422:GoUInt64 = ((0 : GoUInt64));
        var _x423:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551614" : GoUInt64)));
            _x423 = __tmp__._0;
            _x422 = __tmp__._1;
        };
        var _x424:GoUInt64 = ((0 : GoUInt64));
        var _x425:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744069414584320" : GoUInt64)));
            _x425 = __tmp__._0;
            _x424 = __tmp__._1;
        };
        var _x426:GoUInt64 = ((0 : GoUInt64));
        var _x427:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("4294967295" : GoUInt64)));
            _x427 = __tmp__._0;
            _x426 = __tmp__._1;
        };
        var _x428:GoUInt64 = ((0 : GoUInt64));
        var _x429:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x427, _x424, ((((0 : GoUInt64)) : GoUInt64)));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:GoUInt64 = ((0 : GoUInt64));
        var _x431:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x425, _x422, ((((_x429 : T_p384Uint1)) : GoUInt64)));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432:GoUInt64 = ((0 : GoUInt64));
        var _x433:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x423, _x420, ((((_x431 : T_p384Uint1)) : GoUInt64)));
            _x432 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x434:GoUInt64 = ((0 : GoUInt64));
        var _x435:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x421, _x418, ((((_x433 : T_p384Uint1)) : GoUInt64)));
            _x434 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x436:GoUInt64 = ((0 : GoUInt64));
        var _x437:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x419, _x416, ((((_x435 : T_p384Uint1)) : GoUInt64)));
            _x436 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x438:GoUInt64 = (((((_x437 : T_p384Uint1)) : GoUInt64)) + _x417);
        var _x440:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x400, _x426, ((((0 : GoUInt64)) : GoUInt64)));
            _x440 = __tmp__._1;
        };
        var _x441:GoUInt64 = ((0 : GoUInt64));
        var _x442:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x402, _x428, ((((_x440 : T_p384Uint1)) : GoUInt64)));
            _x441 = __tmp__._0;
            _x442 = __tmp__._1;
        };
        var _x443:GoUInt64 = ((0 : GoUInt64));
        var _x444:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x404, _x430, ((((_x442 : T_p384Uint1)) : GoUInt64)));
            _x443 = __tmp__._0;
            _x444 = __tmp__._1;
        };
        var _x445:GoUInt64 = ((0 : GoUInt64));
        var _x446:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x406, _x432, ((((_x444 : T_p384Uint1)) : GoUInt64)));
            _x445 = __tmp__._0;
            _x446 = __tmp__._1;
        };
        var _x447:GoUInt64 = ((0 : GoUInt64));
        var _x448:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x408, _x434, ((((_x446 : T_p384Uint1)) : GoUInt64)));
            _x447 = __tmp__._0;
            _x448 = __tmp__._1;
        };
        var _x449:GoUInt64 = ((0 : GoUInt64));
        var _x450:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x410, _x436, ((((_x448 : T_p384Uint1)) : GoUInt64)));
            _x449 = __tmp__._0;
            _x450 = __tmp__._1;
        };
        var _x451:GoUInt64 = ((0 : GoUInt64));
        var _x452:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x412, _x438, ((((_x450 : T_p384Uint1)) : GoUInt64)));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:GoUInt64 = (((((_x452 : T_p384Uint1)) : GoUInt64)) + ((((_x413 : T_p384Uint1)) : GoUInt64)));
        var _x454:GoUInt64 = ((0 : GoUInt64));
        var _x455:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x441, (("4294967295" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x454 = __tmp__._0;
            _x455 = __tmp__._1;
        };
        var _x456:GoUInt64 = ((0 : GoUInt64));
        var _x457:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x443, (("18446744069414584320" : GoUInt64)), ((((_x455 : T_p384Uint1)) : GoUInt64)));
            _x456 = __tmp__._0;
            _x457 = __tmp__._1;
        };
        var _x458:GoUInt64 = ((0 : GoUInt64));
        var _x459:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x445, (("18446744073709551614" : GoUInt64)), ((((_x457 : T_p384Uint1)) : GoUInt64)));
            _x458 = __tmp__._0;
            _x459 = __tmp__._1;
        };
        var _x460:GoUInt64 = ((0 : GoUInt64));
        var _x461:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x447, (("18446744073709551615" : GoUInt64)), ((((_x459 : T_p384Uint1)) : GoUInt64)));
            _x460 = __tmp__._0;
            _x461 = __tmp__._1;
        };
        var _x462:GoUInt64 = ((0 : GoUInt64));
        var _x463:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x449, (("18446744073709551615" : GoUInt64)), ((((_x461 : T_p384Uint1)) : GoUInt64)));
            _x462 = __tmp__._0;
            _x463 = __tmp__._1;
        };
        var _x464:GoUInt64 = ((0 : GoUInt64));
        var _x465:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x451, (("18446744073709551615" : GoUInt64)), ((((_x463 : T_p384Uint1)) : GoUInt64)));
            _x464 = __tmp__._0;
            _x465 = __tmp__._1;
        };
        var _x467:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x453, ((((0 : GoUInt64)) : GoUInt64)), ((((_x465 : T_p384Uint1)) : GoUInt64)));
            _x467 = __tmp__._1;
        };
        var _x468:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x468), ((_x467 : T_p384Uint1)), _x454, _x441);
        var _x469:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x469), ((_x467 : T_p384Uint1)), _x456, _x443);
        var _x470:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x470), ((_x467 : T_p384Uint1)), _x458, _x445);
        var _x471:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x471), ((_x467 : T_p384Uint1)), _x460, _x447);
        var _x472:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x472), ((_x467 : T_p384Uint1)), _x462, _x449);
        var _x473:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x473), ((_x467 : T_p384Uint1)), _x464, _x451);
        if (_out1 != null) _out1[((0 : GoInt))] = _x468;
        if (_out1 != null) _out1[((1 : GoInt))] = _x469;
        if (_out1 != null) _out1[((2 : GoInt))] = _x470;
        if (_out1 != null) _out1[((3 : GoInt))] = _x471;
        if (_out1 != null) _out1[((4 : GoInt))] = _x472;
        if (_out1 != null) _out1[((5 : GoInt))] = _x473;
    }
/**
    // p384Square squares a field element in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) * eval (from_montgomery arg1)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384Square(_out1:T_p384MontgomeryDomainFieldElement, _arg1:T_p384MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x14 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x16 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x18 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x18, _x15, ((((0 : GoUInt64)) : GoUInt64)));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x16, _x13, ((((_x20 : T_p384Uint1)) : GoUInt64)));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x14, _x11, ((((_x22 : T_p384Uint1)) : GoUInt64)));
            _x23 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x25:GoUInt64 = ((0 : GoUInt64));
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((_x24 : T_p384Uint1)) : GoUInt64)));
            _x25 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x26 : T_p384Uint1)) : GoUInt64)));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:GoUInt64 = (((((_x28 : T_p384Uint1)) : GoUInt64)) + _x8);
        var _x30:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x17, (("4294967297" : GoUInt64)));
            _x30 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551615" : GoUInt64)));
            _x33 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551615" : GoUInt64)));
            _x35 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551615" : GoUInt64)));
            _x37 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744073709551614" : GoUInt64)));
            _x39 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x40:GoUInt64 = ((0 : GoUInt64));
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("18446744069414584320" : GoUInt64)));
            _x41 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x30, (("4294967295" : GoUInt64)));
            _x43 = __tmp__._0;
            _x42 = __tmp__._1;
        };
        var _x44:GoUInt64 = ((0 : GoUInt64));
        var _x45:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x43, _x40, ((((0 : GoUInt64)) : GoUInt64)));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:GoUInt64 = ((0 : GoUInt64));
        var _x47:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x41, _x38, ((((_x45 : T_p384Uint1)) : GoUInt64)));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:GoUInt64 = ((0 : GoUInt64));
        var _x49:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x39, _x36, ((((_x47 : T_p384Uint1)) : GoUInt64)));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:GoUInt64 = ((0 : GoUInt64));
        var _x51:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x37, _x34, ((((_x49 : T_p384Uint1)) : GoUInt64)));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:GoUInt64 = ((0 : GoUInt64));
        var _x53:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x35, _x32, ((((_x51 : T_p384Uint1)) : GoUInt64)));
            _x52 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x54:GoUInt64 = (((((_x53 : T_p384Uint1)) : GoUInt64)) + _x33);
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x42, ((((0 : GoUInt64)) : GoUInt64)));
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x44, ((((_x56 : T_p384Uint1)) : GoUInt64)));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x21, _x46, ((((_x58 : T_p384Uint1)) : GoUInt64)));
            _x59 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        var _x62:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x23, _x48, ((((_x60 : T_p384Uint1)) : GoUInt64)));
            _x61 = __tmp__._0;
            _x62 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x25, _x50, ((((_x62 : T_p384Uint1)) : GoUInt64)));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x27, _x52, ((((_x64 : T_p384Uint1)) : GoUInt64)));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x29, _x54, ((((_x66 : T_p384Uint1)) : GoUInt64)));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x70 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x72 = __tmp__._0;
            _x71 = __tmp__._1;
        };
        var _x73:GoUInt64 = ((0 : GoUInt64));
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x74 = __tmp__._0;
            _x73 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x76 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x78 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x79:GoUInt64 = ((0 : GoUInt64));
        var _x80:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x80 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x81:GoUInt64 = ((0 : GoUInt64));
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x80, _x77, ((((0 : GoUInt64)) : GoUInt64)));
            _x81 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x78, _x75, ((((_x82 : T_p384Uint1)) : GoUInt64)));
            _x83 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x76, _x73, ((((_x84 : T_p384Uint1)) : GoUInt64)));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x74, _x71, ((((_x86 : T_p384Uint1)) : GoUInt64)));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        var _x90:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x72, _x69, ((((_x88 : T_p384Uint1)) : GoUInt64)));
            _x89 = __tmp__._0;
            _x90 = __tmp__._1;
        };
        var _x91:GoUInt64 = (((((_x90 : T_p384Uint1)) : GoUInt64)) + _x70);
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x57, _x79, ((((0 : GoUInt64)) : GoUInt64)));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x59, _x81, ((((_x93 : T_p384Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x61, _x83, ((((_x95 : T_p384Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x63, _x85, ((((_x97 : T_p384Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x65, _x87, ((((_x99 : T_p384Uint1)) : GoUInt64)));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x67, _x89, ((((_x101 : T_p384Uint1)) : GoUInt64)));
            _x102 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x68 : T_p384Uint1)) : GoUInt64)), _x91, ((((_x103 : T_p384Uint1)) : GoUInt64)));
            _x104 = __tmp__._0;
            _x105 = __tmp__._1;
        };
        var _x106:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x92, (("4294967297" : GoUInt64)));
            _x106 = __tmp__._1;
        };
        var _x108:GoUInt64 = ((0 : GoUInt64));
        var _x109:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551615" : GoUInt64)));
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        var _x111:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551615" : GoUInt64)));
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:GoUInt64 = ((0 : GoUInt64));
        var _x113:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551615" : GoUInt64)));
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        var _x115:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744073709551614" : GoUInt64)));
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("18446744069414584320" : GoUInt64)));
            _x117 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x118:GoUInt64 = ((0 : GoUInt64));
        var _x119:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x106, (("4294967295" : GoUInt64)));
            _x119 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x120:GoUInt64 = ((0 : GoUInt64));
        var _x121:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x119, _x116, ((((0 : GoUInt64)) : GoUInt64)));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:GoUInt64 = ((0 : GoUInt64));
        var _x123:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, _x114, ((((_x121 : T_p384Uint1)) : GoUInt64)));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:GoUInt64 = ((0 : GoUInt64));
        var _x125:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x112, ((((_x123 : T_p384Uint1)) : GoUInt64)));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:GoUInt64 = ((0 : GoUInt64));
        var _x127:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x110, ((((_x125 : T_p384Uint1)) : GoUInt64)));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:GoUInt64 = ((0 : GoUInt64));
        var _x129:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x108, ((((_x127 : T_p384Uint1)) : GoUInt64)));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:GoUInt64 = (((((_x129 : T_p384Uint1)) : GoUInt64)) + _x109);
        var _x132:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x92, _x118, ((((0 : GoUInt64)) : GoUInt64)));
            _x132 = __tmp__._1;
        };
        var _x133:GoUInt64 = ((0 : GoUInt64));
        var _x134:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x94, _x120, ((((_x132 : T_p384Uint1)) : GoUInt64)));
            _x133 = __tmp__._0;
            _x134 = __tmp__._1;
        };
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x96, _x122, ((((_x134 : T_p384Uint1)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x98, _x124, ((((_x136 : T_p384Uint1)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x100, _x126, ((((_x138 : T_p384Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x102, _x128, ((((_x140 : T_p384Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x104, _x130, ((((_x142 : T_p384Uint1)) : GoUInt64)));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:GoUInt64 = (((((_x144 : T_p384Uint1)) : GoUInt64)) + ((((_x105 : T_p384Uint1)) : GoUInt64)));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        var _x147:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x147 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x148:GoUInt64 = ((0 : GoUInt64));
        var _x149:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x149 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x150:GoUInt64 = ((0 : GoUInt64));
        var _x151:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x151 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x152:GoUInt64 = ((0 : GoUInt64));
        var _x153:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x153 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x154:GoUInt64 = ((0 : GoUInt64));
        var _x155:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:GoUInt64 = ((0 : GoUInt64));
        var _x157:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x157 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        var _x159:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x157, _x154, ((((0 : GoUInt64)) : GoUInt64)));
            _x158 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x160:GoUInt64 = ((0 : GoUInt64));
        var _x161:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x155, _x152, ((((_x159 : T_p384Uint1)) : GoUInt64)));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162:GoUInt64 = ((0 : GoUInt64));
        var _x163:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x153, _x150, ((((_x161 : T_p384Uint1)) : GoUInt64)));
            _x162 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x164:GoUInt64 = ((0 : GoUInt64));
        var _x165:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x151, _x148, ((((_x163 : T_p384Uint1)) : GoUInt64)));
            _x164 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x166:GoUInt64 = ((0 : GoUInt64));
        var _x167:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x149, _x146, ((((_x165 : T_p384Uint1)) : GoUInt64)));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:GoUInt64 = (((((_x167 : T_p384Uint1)) : GoUInt64)) + _x147);
        var _x169:GoUInt64 = ((0 : GoUInt64));
        var _x170:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x133, _x156, ((((0 : GoUInt64)) : GoUInt64)));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:GoUInt64 = ((0 : GoUInt64));
        var _x172:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x135, _x158, ((((_x170 : T_p384Uint1)) : GoUInt64)));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        var _x174:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x137, _x160, ((((_x172 : T_p384Uint1)) : GoUInt64)));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        var _x176:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x139, _x162, ((((_x174 : T_p384Uint1)) : GoUInt64)));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:GoUInt64 = ((0 : GoUInt64));
        var _x178:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x164, ((((_x176 : T_p384Uint1)) : GoUInt64)));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x179:GoUInt64 = ((0 : GoUInt64));
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x166, ((((_x178 : T_p384Uint1)) : GoUInt64)));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x145, _x168, ((((_x180 : T_p384Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x169, (("4294967297" : GoUInt64)));
            _x183 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551615" : GoUInt64)));
            _x186 = __tmp__._0;
            _x185 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551615" : GoUInt64)));
            _x188 = __tmp__._0;
            _x187 = __tmp__._1;
        };
        var _x189:GoUInt64 = ((0 : GoUInt64));
        var _x190:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551615" : GoUInt64)));
            _x190 = __tmp__._0;
            _x189 = __tmp__._1;
        };
        var _x191:GoUInt64 = ((0 : GoUInt64));
        var _x192:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744073709551614" : GoUInt64)));
            _x192 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x193:GoUInt64 = ((0 : GoUInt64));
        var _x194:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("18446744069414584320" : GoUInt64)));
            _x194 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x195:GoUInt64 = ((0 : GoUInt64));
        var _x196:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x183, (("4294967295" : GoUInt64)));
            _x196 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x197:GoUInt64 = ((0 : GoUInt64));
        var _x198:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x193, ((((0 : GoUInt64)) : GoUInt64)));
            _x197 = __tmp__._0;
            _x198 = __tmp__._1;
        };
        var _x199:GoUInt64 = ((0 : GoUInt64));
        var _x200:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x191, ((((_x198 : T_p384Uint1)) : GoUInt64)));
            _x199 = __tmp__._0;
            _x200 = __tmp__._1;
        };
        var _x201:GoUInt64 = ((0 : GoUInt64));
        var _x202:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x192, _x189, ((((_x200 : T_p384Uint1)) : GoUInt64)));
            _x201 = __tmp__._0;
            _x202 = __tmp__._1;
        };
        var _x203:GoUInt64 = ((0 : GoUInt64));
        var _x204:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x190, _x187, ((((_x202 : T_p384Uint1)) : GoUInt64)));
            _x203 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x205:GoUInt64 = ((0 : GoUInt64));
        var _x206:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x188, _x185, ((((_x204 : T_p384Uint1)) : GoUInt64)));
            _x205 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x207:GoUInt64 = (((((_x206 : T_p384Uint1)) : GoUInt64)) + _x186);
        var _x209:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x169, _x195, ((((0 : GoUInt64)) : GoUInt64)));
            _x209 = __tmp__._1;
        };
        var _x210:GoUInt64 = ((0 : GoUInt64));
        var _x211:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x171, _x197, ((((_x209 : T_p384Uint1)) : GoUInt64)));
            _x210 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x212:GoUInt64 = ((0 : GoUInt64));
        var _x213:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x173, _x199, ((((_x211 : T_p384Uint1)) : GoUInt64)));
            _x212 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x214:GoUInt64 = ((0 : GoUInt64));
        var _x215:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x175, _x201, ((((_x213 : T_p384Uint1)) : GoUInt64)));
            _x214 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x216:GoUInt64 = ((0 : GoUInt64));
        var _x217:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x177, _x203, ((((_x215 : T_p384Uint1)) : GoUInt64)));
            _x216 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x218:GoUInt64 = ((0 : GoUInt64));
        var _x219:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x179, _x205, ((((_x217 : T_p384Uint1)) : GoUInt64)));
            _x218 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x220:GoUInt64 = ((0 : GoUInt64));
        var _x221:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x181, _x207, ((((_x219 : T_p384Uint1)) : GoUInt64)));
            _x220 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x222:GoUInt64 = (((((_x221 : T_p384Uint1)) : GoUInt64)) + ((((_x182 : T_p384Uint1)) : GoUInt64)));
        var _x223:GoUInt64 = ((0 : GoUInt64));
        var _x224:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:GoUInt64 = ((0 : GoUInt64));
        var _x226:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        var _x228:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:GoUInt64 = ((0 : GoUInt64));
        var _x230:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x230 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x231:GoUInt64 = ((0 : GoUInt64));
        var _x232:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x232 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x233:GoUInt64 = ((0 : GoUInt64));
        var _x234:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x234 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x235:GoUInt64 = ((0 : GoUInt64));
        var _x236:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x234, _x231, ((((0 : GoUInt64)) : GoUInt64)));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:GoUInt64 = ((0 : GoUInt64));
        var _x238:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x232, _x229, ((((_x236 : T_p384Uint1)) : GoUInt64)));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:GoUInt64 = ((0 : GoUInt64));
        var _x240:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x230, _x227, ((((_x238 : T_p384Uint1)) : GoUInt64)));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        var _x242:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, _x225, ((((_x240 : T_p384Uint1)) : GoUInt64)));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:GoUInt64 = ((0 : GoUInt64));
        var _x244:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x226, _x223, ((((_x242 : T_p384Uint1)) : GoUInt64)));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x245:GoUInt64 = (((((_x244 : T_p384Uint1)) : GoUInt64)) + _x224);
        var _x246:GoUInt64 = ((0 : GoUInt64));
        var _x247:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x210, _x233, ((((0 : GoUInt64)) : GoUInt64)));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:GoUInt64 = ((0 : GoUInt64));
        var _x249:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x212, _x235, ((((_x247 : T_p384Uint1)) : GoUInt64)));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:GoUInt64 = ((0 : GoUInt64));
        var _x251:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x214, _x237, ((((_x249 : T_p384Uint1)) : GoUInt64)));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:GoUInt64 = ((0 : GoUInt64));
        var _x253:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x216, _x239, ((((_x251 : T_p384Uint1)) : GoUInt64)));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:GoUInt64 = ((0 : GoUInt64));
        var _x255:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x218, _x241, ((((_x253 : T_p384Uint1)) : GoUInt64)));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:GoUInt64 = ((0 : GoUInt64));
        var _x257:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x220, _x243, ((((_x255 : T_p384Uint1)) : GoUInt64)));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:GoUInt64 = ((0 : GoUInt64));
        var _x259:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x222, _x245, ((((_x257 : T_p384Uint1)) : GoUInt64)));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("4294967297" : GoUInt64)));
            _x260 = __tmp__._1;
        };
        var _x262:GoUInt64 = ((0 : GoUInt64));
        var _x263:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551615" : GoUInt64)));
            _x263 = __tmp__._0;
            _x262 = __tmp__._1;
        };
        var _x264:GoUInt64 = ((0 : GoUInt64));
        var _x265:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551615" : GoUInt64)));
            _x265 = __tmp__._0;
            _x264 = __tmp__._1;
        };
        var _x266:GoUInt64 = ((0 : GoUInt64));
        var _x267:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551615" : GoUInt64)));
            _x267 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x268:GoUInt64 = ((0 : GoUInt64));
        var _x269:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744073709551614" : GoUInt64)));
            _x269 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x270:GoUInt64 = ((0 : GoUInt64));
        var _x271:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("18446744069414584320" : GoUInt64)));
            _x271 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x272:GoUInt64 = ((0 : GoUInt64));
        var _x273:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x260, (("4294967295" : GoUInt64)));
            _x273 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x274:GoUInt64 = ((0 : GoUInt64));
        var _x275:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x273, _x270, ((((0 : GoUInt64)) : GoUInt64)));
            _x274 = __tmp__._0;
            _x275 = __tmp__._1;
        };
        var _x276:GoUInt64 = ((0 : GoUInt64));
        var _x277:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x271, _x268, ((((_x275 : T_p384Uint1)) : GoUInt64)));
            _x276 = __tmp__._0;
            _x277 = __tmp__._1;
        };
        var _x278:GoUInt64 = ((0 : GoUInt64));
        var _x279:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x269, _x266, ((((_x277 : T_p384Uint1)) : GoUInt64)));
            _x278 = __tmp__._0;
            _x279 = __tmp__._1;
        };
        var _x280:GoUInt64 = ((0 : GoUInt64));
        var _x281:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x267, _x264, ((((_x279 : T_p384Uint1)) : GoUInt64)));
            _x280 = __tmp__._0;
            _x281 = __tmp__._1;
        };
        var _x282:GoUInt64 = ((0 : GoUInt64));
        var _x283:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x265, _x262, ((((_x281 : T_p384Uint1)) : GoUInt64)));
            _x282 = __tmp__._0;
            _x283 = __tmp__._1;
        };
        var _x284:GoUInt64 = (((((_x283 : T_p384Uint1)) : GoUInt64)) + _x263);
        var _x286:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x246, _x272, ((((0 : GoUInt64)) : GoUInt64)));
            _x286 = __tmp__._1;
        };
        var _x287:GoUInt64 = ((0 : GoUInt64));
        var _x288:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x248, _x274, ((((_x286 : T_p384Uint1)) : GoUInt64)));
            _x287 = __tmp__._0;
            _x288 = __tmp__._1;
        };
        var _x289:GoUInt64 = ((0 : GoUInt64));
        var _x290:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x250, _x276, ((((_x288 : T_p384Uint1)) : GoUInt64)));
            _x289 = __tmp__._0;
            _x290 = __tmp__._1;
        };
        var _x291:GoUInt64 = ((0 : GoUInt64));
        var _x292:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x252, _x278, ((((_x290 : T_p384Uint1)) : GoUInt64)));
            _x291 = __tmp__._0;
            _x292 = __tmp__._1;
        };
        var _x293:GoUInt64 = ((0 : GoUInt64));
        var _x294:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x254, _x280, ((((_x292 : T_p384Uint1)) : GoUInt64)));
            _x293 = __tmp__._0;
            _x294 = __tmp__._1;
        };
        var _x295:GoUInt64 = ((0 : GoUInt64));
        var _x296:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x256, _x282, ((((_x294 : T_p384Uint1)) : GoUInt64)));
            _x295 = __tmp__._0;
            _x296 = __tmp__._1;
        };
        var _x297:GoUInt64 = ((0 : GoUInt64));
        var _x298:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x258, _x284, ((((_x296 : T_p384Uint1)) : GoUInt64)));
            _x297 = __tmp__._0;
            _x298 = __tmp__._1;
        };
        var _x299:GoUInt64 = (((((_x298 : T_p384Uint1)) : GoUInt64)) + ((((_x259 : T_p384Uint1)) : GoUInt64)));
        var _x300:GoUInt64 = ((0 : GoUInt64));
        var _x301:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x301 = __tmp__._0;
            _x300 = __tmp__._1;
        };
        var _x302:GoUInt64 = ((0 : GoUInt64));
        var _x303:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x303 = __tmp__._0;
            _x302 = __tmp__._1;
        };
        var _x304:GoUInt64 = ((0 : GoUInt64));
        var _x305:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x305 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x306:GoUInt64 = ((0 : GoUInt64));
        var _x307:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x307 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x308:GoUInt64 = ((0 : GoUInt64));
        var _x309:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x309 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x310:GoUInt64 = ((0 : GoUInt64));
        var _x311:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x311 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x312:GoUInt64 = ((0 : GoUInt64));
        var _x313:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x311, _x308, ((((0 : GoUInt64)) : GoUInt64)));
            _x312 = __tmp__._0;
            _x313 = __tmp__._1;
        };
        var _x314:GoUInt64 = ((0 : GoUInt64));
        var _x315:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x309, _x306, ((((_x313 : T_p384Uint1)) : GoUInt64)));
            _x314 = __tmp__._0;
            _x315 = __tmp__._1;
        };
        var _x316:GoUInt64 = ((0 : GoUInt64));
        var _x317:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x307, _x304, ((((_x315 : T_p384Uint1)) : GoUInt64)));
            _x316 = __tmp__._0;
            _x317 = __tmp__._1;
        };
        var _x318:GoUInt64 = ((0 : GoUInt64));
        var _x319:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x305, _x302, ((((_x317 : T_p384Uint1)) : GoUInt64)));
            _x318 = __tmp__._0;
            _x319 = __tmp__._1;
        };
        var _x320:GoUInt64 = ((0 : GoUInt64));
        var _x321:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x303, _x300, ((((_x319 : T_p384Uint1)) : GoUInt64)));
            _x320 = __tmp__._0;
            _x321 = __tmp__._1;
        };
        var _x322:GoUInt64 = (((((_x321 : T_p384Uint1)) : GoUInt64)) + _x301);
        var _x323:GoUInt64 = ((0 : GoUInt64));
        var _x324:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x287, _x310, ((((0 : GoUInt64)) : GoUInt64)));
            _x323 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x325:GoUInt64 = ((0 : GoUInt64));
        var _x326:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x289, _x312, ((((_x324 : T_p384Uint1)) : GoUInt64)));
            _x325 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x327:GoUInt64 = ((0 : GoUInt64));
        var _x328:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x291, _x314, ((((_x326 : T_p384Uint1)) : GoUInt64)));
            _x327 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x329:GoUInt64 = ((0 : GoUInt64));
        var _x330:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x293, _x316, ((((_x328 : T_p384Uint1)) : GoUInt64)));
            _x329 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x331:GoUInt64 = ((0 : GoUInt64));
        var _x332:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x295, _x318, ((((_x330 : T_p384Uint1)) : GoUInt64)));
            _x331 = __tmp__._0;
            _x332 = __tmp__._1;
        };
        var _x333:GoUInt64 = ((0 : GoUInt64));
        var _x334:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x297, _x320, ((((_x332 : T_p384Uint1)) : GoUInt64)));
            _x333 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x335:GoUInt64 = ((0 : GoUInt64));
        var _x336:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x299, _x322, ((((_x334 : T_p384Uint1)) : GoUInt64)));
            _x335 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x337:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x323, (("4294967297" : GoUInt64)));
            _x337 = __tmp__._1;
        };
        var _x339:GoUInt64 = ((0 : GoUInt64));
        var _x340:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551615" : GoUInt64)));
            _x340 = __tmp__._0;
            _x339 = __tmp__._1;
        };
        var _x341:GoUInt64 = ((0 : GoUInt64));
        var _x342:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551615" : GoUInt64)));
            _x342 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x343:GoUInt64 = ((0 : GoUInt64));
        var _x344:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551615" : GoUInt64)));
            _x344 = __tmp__._0;
            _x343 = __tmp__._1;
        };
        var _x345:GoUInt64 = ((0 : GoUInt64));
        var _x346:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744073709551614" : GoUInt64)));
            _x346 = __tmp__._0;
            _x345 = __tmp__._1;
        };
        var _x347:GoUInt64 = ((0 : GoUInt64));
        var _x348:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("18446744069414584320" : GoUInt64)));
            _x348 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x349:GoUInt64 = ((0 : GoUInt64));
        var _x350:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x337, (("4294967295" : GoUInt64)));
            _x350 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x351:GoUInt64 = ((0 : GoUInt64));
        var _x352:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x350, _x347, ((((0 : GoUInt64)) : GoUInt64)));
            _x351 = __tmp__._0;
            _x352 = __tmp__._1;
        };
        var _x353:GoUInt64 = ((0 : GoUInt64));
        var _x354:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x348, _x345, ((((_x352 : T_p384Uint1)) : GoUInt64)));
            _x353 = __tmp__._0;
            _x354 = __tmp__._1;
        };
        var _x355:GoUInt64 = ((0 : GoUInt64));
        var _x356:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x346, _x343, ((((_x354 : T_p384Uint1)) : GoUInt64)));
            _x355 = __tmp__._0;
            _x356 = __tmp__._1;
        };
        var _x357:GoUInt64 = ((0 : GoUInt64));
        var _x358:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x344, _x341, ((((_x356 : T_p384Uint1)) : GoUInt64)));
            _x357 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x359:GoUInt64 = ((0 : GoUInt64));
        var _x360:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x342, _x339, ((((_x358 : T_p384Uint1)) : GoUInt64)));
            _x359 = __tmp__._0;
            _x360 = __tmp__._1;
        };
        var _x361:GoUInt64 = (((((_x360 : T_p384Uint1)) : GoUInt64)) + _x340);
        var _x363:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x323, _x349, ((((0 : GoUInt64)) : GoUInt64)));
            _x363 = __tmp__._1;
        };
        var _x364:GoUInt64 = ((0 : GoUInt64));
        var _x365:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x325, _x351, ((((_x363 : T_p384Uint1)) : GoUInt64)));
            _x364 = __tmp__._0;
            _x365 = __tmp__._1;
        };
        var _x366:GoUInt64 = ((0 : GoUInt64));
        var _x367:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x327, _x353, ((((_x365 : T_p384Uint1)) : GoUInt64)));
            _x366 = __tmp__._0;
            _x367 = __tmp__._1;
        };
        var _x368:GoUInt64 = ((0 : GoUInt64));
        var _x369:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x329, _x355, ((((_x367 : T_p384Uint1)) : GoUInt64)));
            _x368 = __tmp__._0;
            _x369 = __tmp__._1;
        };
        var _x370:GoUInt64 = ((0 : GoUInt64));
        var _x371:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x331, _x357, ((((_x369 : T_p384Uint1)) : GoUInt64)));
            _x370 = __tmp__._0;
            _x371 = __tmp__._1;
        };
        var _x372:GoUInt64 = ((0 : GoUInt64));
        var _x373:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x333, _x359, ((((_x371 : T_p384Uint1)) : GoUInt64)));
            _x372 = __tmp__._0;
            _x373 = __tmp__._1;
        };
        var _x374:GoUInt64 = ((0 : GoUInt64));
        var _x375:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x335, _x361, ((((_x373 : T_p384Uint1)) : GoUInt64)));
            _x374 = __tmp__._0;
            _x375 = __tmp__._1;
        };
        var _x376:GoUInt64 = (((((_x375 : T_p384Uint1)) : GoUInt64)) + ((((_x336 : T_p384Uint1)) : GoUInt64)));
        var _x377:GoUInt64 = ((0 : GoUInt64));
        var _x378:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x378 = __tmp__._0;
            _x377 = __tmp__._1;
        };
        var _x379:GoUInt64 = ((0 : GoUInt64));
        var _x380:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x380 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x381:GoUInt64 = ((0 : GoUInt64));
        var _x382:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x382 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x383:GoUInt64 = ((0 : GoUInt64));
        var _x384:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x384 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x385:GoUInt64 = ((0 : GoUInt64));
        var _x386:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x386 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x387:GoUInt64 = ((0 : GoUInt64));
        var _x388:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x388 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x389:GoUInt64 = ((0 : GoUInt64));
        var _x390:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x388, _x385, ((((0 : GoUInt64)) : GoUInt64)));
            _x389 = __tmp__._0;
            _x390 = __tmp__._1;
        };
        var _x391:GoUInt64 = ((0 : GoUInt64));
        var _x392:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x386, _x383, ((((_x390 : T_p384Uint1)) : GoUInt64)));
            _x391 = __tmp__._0;
            _x392 = __tmp__._1;
        };
        var _x393:GoUInt64 = ((0 : GoUInt64));
        var _x394:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x384, _x381, ((((_x392 : T_p384Uint1)) : GoUInt64)));
            _x393 = __tmp__._0;
            _x394 = __tmp__._1;
        };
        var _x395:GoUInt64 = ((0 : GoUInt64));
        var _x396:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x382, _x379, ((((_x394 : T_p384Uint1)) : GoUInt64)));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:GoUInt64 = ((0 : GoUInt64));
        var _x398:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x380, _x377, ((((_x396 : T_p384Uint1)) : GoUInt64)));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:GoUInt64 = (((((_x398 : T_p384Uint1)) : GoUInt64)) + _x378);
        var _x400:GoUInt64 = ((0 : GoUInt64));
        var _x401:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x364, _x387, ((((0 : GoUInt64)) : GoUInt64)));
            _x400 = __tmp__._0;
            _x401 = __tmp__._1;
        };
        var _x402:GoUInt64 = ((0 : GoUInt64));
        var _x403:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x366, _x389, ((((_x401 : T_p384Uint1)) : GoUInt64)));
            _x402 = __tmp__._0;
            _x403 = __tmp__._1;
        };
        var _x404:GoUInt64 = ((0 : GoUInt64));
        var _x405:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x368, _x391, ((((_x403 : T_p384Uint1)) : GoUInt64)));
            _x404 = __tmp__._0;
            _x405 = __tmp__._1;
        };
        var _x406:GoUInt64 = ((0 : GoUInt64));
        var _x407:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x370, _x393, ((((_x405 : T_p384Uint1)) : GoUInt64)));
            _x406 = __tmp__._0;
            _x407 = __tmp__._1;
        };
        var _x408:GoUInt64 = ((0 : GoUInt64));
        var _x409:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x372, _x395, ((((_x407 : T_p384Uint1)) : GoUInt64)));
            _x408 = __tmp__._0;
            _x409 = __tmp__._1;
        };
        var _x410:GoUInt64 = ((0 : GoUInt64));
        var _x411:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x374, _x397, ((((_x409 : T_p384Uint1)) : GoUInt64)));
            _x410 = __tmp__._0;
            _x411 = __tmp__._1;
        };
        var _x412:GoUInt64 = ((0 : GoUInt64));
        var _x413:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x376, _x399, ((((_x411 : T_p384Uint1)) : GoUInt64)));
            _x412 = __tmp__._0;
            _x413 = __tmp__._1;
        };
        var _x414:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x400, (("4294967297" : GoUInt64)));
            _x414 = __tmp__._1;
        };
        var _x416:GoUInt64 = ((0 : GoUInt64));
        var _x417:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551615" : GoUInt64)));
            _x417 = __tmp__._0;
            _x416 = __tmp__._1;
        };
        var _x418:GoUInt64 = ((0 : GoUInt64));
        var _x419:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551615" : GoUInt64)));
            _x419 = __tmp__._0;
            _x418 = __tmp__._1;
        };
        var _x420:GoUInt64 = ((0 : GoUInt64));
        var _x421:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551615" : GoUInt64)));
            _x421 = __tmp__._0;
            _x420 = __tmp__._1;
        };
        var _x422:GoUInt64 = ((0 : GoUInt64));
        var _x423:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744073709551614" : GoUInt64)));
            _x423 = __tmp__._0;
            _x422 = __tmp__._1;
        };
        var _x424:GoUInt64 = ((0 : GoUInt64));
        var _x425:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("18446744069414584320" : GoUInt64)));
            _x425 = __tmp__._0;
            _x424 = __tmp__._1;
        };
        var _x426:GoUInt64 = ((0 : GoUInt64));
        var _x427:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x414, (("4294967295" : GoUInt64)));
            _x427 = __tmp__._0;
            _x426 = __tmp__._1;
        };
        var _x428:GoUInt64 = ((0 : GoUInt64));
        var _x429:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x427, _x424, ((((0 : GoUInt64)) : GoUInt64)));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:GoUInt64 = ((0 : GoUInt64));
        var _x431:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x425, _x422, ((((_x429 : T_p384Uint1)) : GoUInt64)));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432:GoUInt64 = ((0 : GoUInt64));
        var _x433:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x423, _x420, ((((_x431 : T_p384Uint1)) : GoUInt64)));
            _x432 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x434:GoUInt64 = ((0 : GoUInt64));
        var _x435:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x421, _x418, ((((_x433 : T_p384Uint1)) : GoUInt64)));
            _x434 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x436:GoUInt64 = ((0 : GoUInt64));
        var _x437:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x419, _x416, ((((_x435 : T_p384Uint1)) : GoUInt64)));
            _x436 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x438:GoUInt64 = (((((_x437 : T_p384Uint1)) : GoUInt64)) + _x417);
        var _x440:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x400, _x426, ((((0 : GoUInt64)) : GoUInt64)));
            _x440 = __tmp__._1;
        };
        var _x441:GoUInt64 = ((0 : GoUInt64));
        var _x442:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x402, _x428, ((((_x440 : T_p384Uint1)) : GoUInt64)));
            _x441 = __tmp__._0;
            _x442 = __tmp__._1;
        };
        var _x443:GoUInt64 = ((0 : GoUInt64));
        var _x444:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x404, _x430, ((((_x442 : T_p384Uint1)) : GoUInt64)));
            _x443 = __tmp__._0;
            _x444 = __tmp__._1;
        };
        var _x445:GoUInt64 = ((0 : GoUInt64));
        var _x446:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x406, _x432, ((((_x444 : T_p384Uint1)) : GoUInt64)));
            _x445 = __tmp__._0;
            _x446 = __tmp__._1;
        };
        var _x447:GoUInt64 = ((0 : GoUInt64));
        var _x448:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x408, _x434, ((((_x446 : T_p384Uint1)) : GoUInt64)));
            _x447 = __tmp__._0;
            _x448 = __tmp__._1;
        };
        var _x449:GoUInt64 = ((0 : GoUInt64));
        var _x450:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x410, _x436, ((((_x448 : T_p384Uint1)) : GoUInt64)));
            _x449 = __tmp__._0;
            _x450 = __tmp__._1;
        };
        var _x451:GoUInt64 = ((0 : GoUInt64));
        var _x452:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x412, _x438, ((((_x450 : T_p384Uint1)) : GoUInt64)));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:GoUInt64 = (((((_x452 : T_p384Uint1)) : GoUInt64)) + ((((_x413 : T_p384Uint1)) : GoUInt64)));
        var _x454:GoUInt64 = ((0 : GoUInt64));
        var _x455:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x441, (("4294967295" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x454 = __tmp__._0;
            _x455 = __tmp__._1;
        };
        var _x456:GoUInt64 = ((0 : GoUInt64));
        var _x457:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x443, (("18446744069414584320" : GoUInt64)), ((((_x455 : T_p384Uint1)) : GoUInt64)));
            _x456 = __tmp__._0;
            _x457 = __tmp__._1;
        };
        var _x458:GoUInt64 = ((0 : GoUInt64));
        var _x459:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x445, (("18446744073709551614" : GoUInt64)), ((((_x457 : T_p384Uint1)) : GoUInt64)));
            _x458 = __tmp__._0;
            _x459 = __tmp__._1;
        };
        var _x460:GoUInt64 = ((0 : GoUInt64));
        var _x461:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x447, (("18446744073709551615" : GoUInt64)), ((((_x459 : T_p384Uint1)) : GoUInt64)));
            _x460 = __tmp__._0;
            _x461 = __tmp__._1;
        };
        var _x462:GoUInt64 = ((0 : GoUInt64));
        var _x463:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x449, (("18446744073709551615" : GoUInt64)), ((((_x461 : T_p384Uint1)) : GoUInt64)));
            _x462 = __tmp__._0;
            _x463 = __tmp__._1;
        };
        var _x464:GoUInt64 = ((0 : GoUInt64));
        var _x465:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x451, (("18446744073709551615" : GoUInt64)), ((((_x463 : T_p384Uint1)) : GoUInt64)));
            _x464 = __tmp__._0;
            _x465 = __tmp__._1;
        };
        var _x467:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x453, ((((0 : GoUInt64)) : GoUInt64)), ((((_x465 : T_p384Uint1)) : GoUInt64)));
            _x467 = __tmp__._1;
        };
        var _x468:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x468), ((_x467 : T_p384Uint1)), _x454, _x441);
        var _x469:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x469), ((_x467 : T_p384Uint1)), _x456, _x443);
        var _x470:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x470), ((_x467 : T_p384Uint1)), _x458, _x445);
        var _x471:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x471), ((_x467 : T_p384Uint1)), _x460, _x447);
        var _x472:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x472), ((_x467 : T_p384Uint1)), _x462, _x449);
        var _x473:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x473), ((_x467 : T_p384Uint1)), _x464, _x451);
        if (_out1 != null) _out1[((0 : GoInt))] = _x468;
        if (_out1 != null) _out1[((1 : GoInt))] = _x469;
        if (_out1 != null) _out1[((2 : GoInt))] = _x470;
        if (_out1 != null) _out1[((3 : GoInt))] = _x471;
        if (_out1 != null) _out1[((4 : GoInt))] = _x472;
        if (_out1 != null) _out1[((5 : GoInt))] = _x473;
    }
/**
    // p384Add adds two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) + eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384Add(_out1:T_p384MontgomeryDomainFieldElement, _arg1:T_p384MontgomeryDomainFieldElement, _arg2:T_p384MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), ((((_x2 : T_p384Uint1)) : GoUInt64)));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), ((((_x4 : T_p384Uint1)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), ((((_x6 : T_p384Uint1)) : GoUInt64)));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))), ((((_x8 : T_p384Uint1)) : GoUInt64)));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))), ((((_x10 : T_p384Uint1)) : GoUInt64)));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x1, (("4294967295" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x3, (("18446744069414584320" : GoUInt64)), ((((_x14 : T_p384Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x5, (("18446744073709551614" : GoUInt64)), ((((_x16 : T_p384Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x7, (("18446744073709551615" : GoUInt64)), ((((_x18 : T_p384Uint1)) : GoUInt64)));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x9, (("18446744073709551615" : GoUInt64)), ((((_x20 : T_p384Uint1)) : GoUInt64)));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x11, (("18446744073709551615" : GoUInt64)), ((((_x22 : T_p384Uint1)) : GoUInt64)));
            _x23 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((_x12 : T_p384Uint1)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x24 : T_p384Uint1)) : GoUInt64)));
            _x26 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x27), ((_x26 : T_p384Uint1)), _x13, _x1);
        var _x28:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x28), ((_x26 : T_p384Uint1)), _x15, _x3);
        var _x29:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x29), ((_x26 : T_p384Uint1)), _x17, _x5);
        var _x30:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x30), ((_x26 : T_p384Uint1)), _x19, _x7);
        var _x31:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x31), ((_x26 : T_p384Uint1)), _x21, _x9);
        var _x32:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x32), ((_x26 : T_p384Uint1)), _x23, _x11);
        if (_out1 != null) _out1[((0 : GoInt))] = _x27;
        if (_out1 != null) _out1[((1 : GoInt))] = _x28;
        if (_out1 != null) _out1[((2 : GoInt))] = _x29;
        if (_out1 != null) _out1[((3 : GoInt))] = _x30;
        if (_out1 != null) _out1[((4 : GoInt))] = _x31;
        if (_out1 != null) _out1[((5 : GoInt))] = _x32;
    }
/**
    // p384Sub subtracts two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) - eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384Sub(_out1:T_p384MontgomeryDomainFieldElement, _arg1:T_p384MontgomeryDomainFieldElement, _arg2:T_p384MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), ((((_x2 : T_p384Uint1)) : GoUInt64)));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), ((((_x4 : T_p384Uint1)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), ((((_x6 : T_p384Uint1)) : GoUInt64)));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))), ((((_x8 : T_p384Uint1)) : GoUInt64)));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))), ((((_x10 : T_p384Uint1)) : GoUInt64)));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x13), ((_x12 : T_p384Uint1)), ((((0 : GoUInt64)) : GoUInt64)), (("18446744073709551615" : GoUInt64)));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, (_x13 & (("4294967295" : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x14 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        var _x17:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x3, (_x13 & (("18446744069414584320" : GoUInt64))), ((((_x15 : T_p384Uint1)) : GoUInt64)));
            _x16 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x5, (_x13 & (("18446744073709551614" : GoUInt64))), ((((_x17 : T_p384Uint1)) : GoUInt64)));
            _x18 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x7, _x13, ((((_x19 : T_p384Uint1)) : GoUInt64)));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x9, _x13, ((((_x21 : T_p384Uint1)) : GoUInt64)));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x13, ((((_x23 : T_p384Uint1)) : GoUInt64)));
            _x24 = __tmp__._0;
        };
        if (_out1 != null) _out1[((0 : GoInt))] = _x14;
        if (_out1 != null) _out1[((1 : GoInt))] = _x16;
        if (_out1 != null) _out1[((2 : GoInt))] = _x18;
        if (_out1 != null) _out1[((3 : GoInt))] = _x20;
        if (_out1 != null) _out1[((4 : GoInt))] = _x22;
        if (_out1 != null) _out1[((5 : GoInt))] = _x24;
    }
/**
    // p384SetOne returns the field element one in the Montgomery domain.
    //
    // Postconditions:
    //   eval (from_montgomery out1) mod m = 1 mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384SetOne(_out1:T_p384MontgomeryDomainFieldElement):Void {
        if (_out1 != null) _out1[((0 : GoInt))] = (("18446744069414584321" : GoUInt64));
        if (_out1 != null) _out1[((1 : GoInt))] = (("4294967295" : GoUInt64));
        if (_out1 != null) _out1[((2 : GoInt))] = ((((1 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((3 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((4 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((5 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
    }
/**
    // p384FromMontgomery translates a field element out of the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval out1 mod m = (eval arg1 * ((2^64)⁻¹ mod m)^6) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384FromMontgomery(_out1:T_p384NonMontgomeryDomainFieldElement, _arg1:T_p384MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("4294967297" : GoUInt64)));
            _x2 = __tmp__._1;
        };
        var _x4:GoUInt64 = ((0 : GoUInt64));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744073709551615" : GoUInt64)));
            _x5 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x6:GoUInt64 = ((0 : GoUInt64));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744073709551615" : GoUInt64)));
            _x7 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x8:GoUInt64 = ((0 : GoUInt64));
        var _x9:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744073709551615" : GoUInt64)));
            _x9 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x10:GoUInt64 = ((0 : GoUInt64));
        var _x11:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744073709551614" : GoUInt64)));
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:GoUInt64 = ((0 : GoUInt64));
        var _x13:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744069414584320" : GoUInt64)));
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:GoUInt64 = ((0 : GoUInt64));
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("4294967295" : GoUInt64)));
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        var _x17:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x12, ((((0 : GoUInt64)) : GoUInt64)));
            _x16 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x10, ((((_x17 : T_p384Uint1)) : GoUInt64)));
            _x18 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x8, ((((_x19 : T_p384Uint1)) : GoUInt64)));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x9, _x6, ((((_x21 : T_p384Uint1)) : GoUInt64)));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x7, _x4, ((((_x23 : T_p384Uint1)) : GoUInt64)));
            _x24 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, _x14, ((((0 : GoUInt64)) : GoUInt64)));
            _x27 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x16, ((((_x27 : T_p384Uint1)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x18, ((((_x29 : T_p384Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x20, ((((_x31 : T_p384Uint1)) : GoUInt64)));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x22, ((((_x33 : T_p384Uint1)) : GoUInt64)));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x24, ((((_x35 : T_p384Uint1)) : GoUInt64)));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), (((((_x25 : T_p384Uint1)) : GoUInt64)) + _x5), ((((_x37 : T_p384Uint1)) : GoUInt64)));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:GoUInt64 = ((0 : GoUInt64));
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x28, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x30, ((((0 : GoUInt64)) : GoUInt64)), ((((_x41 : T_p384Uint1)) : GoUInt64)));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:GoUInt64 = ((0 : GoUInt64));
        var _x45:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x32, ((((0 : GoUInt64)) : GoUInt64)), ((((_x43 : T_p384Uint1)) : GoUInt64)));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:GoUInt64 = ((0 : GoUInt64));
        var _x47:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x34, ((((0 : GoUInt64)) : GoUInt64)), ((((_x45 : T_p384Uint1)) : GoUInt64)));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:GoUInt64 = ((0 : GoUInt64));
        var _x49:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x36, ((((0 : GoUInt64)) : GoUInt64)), ((((_x47 : T_p384Uint1)) : GoUInt64)));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:GoUInt64 = ((0 : GoUInt64));
        var _x51:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x38, ((((0 : GoUInt64)) : GoUInt64)), ((((_x49 : T_p384Uint1)) : GoUInt64)));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x40, (("4294967297" : GoUInt64)));
            _x52 = __tmp__._1;
        };
        var _x54:GoUInt64 = ((0 : GoUInt64));
        var _x55:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x52, (("18446744073709551615" : GoUInt64)));
            _x55 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x56:GoUInt64 = ((0 : GoUInt64));
        var _x57:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x52, (("18446744073709551615" : GoUInt64)));
            _x57 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x58:GoUInt64 = ((0 : GoUInt64));
        var _x59:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x52, (("18446744073709551615" : GoUInt64)));
            _x59 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x60:GoUInt64 = ((0 : GoUInt64));
        var _x61:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x52, (("18446744073709551614" : GoUInt64)));
            _x61 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x62:GoUInt64 = ((0 : GoUInt64));
        var _x63:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x52, (("18446744069414584320" : GoUInt64)));
            _x63 = __tmp__._0;
            _x62 = __tmp__._1;
        };
        var _x64:GoUInt64 = ((0 : GoUInt64));
        var _x65:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x52, (("4294967295" : GoUInt64)));
            _x65 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x66:GoUInt64 = ((0 : GoUInt64));
        var _x67:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x65, _x62, ((((0 : GoUInt64)) : GoUInt64)));
            _x66 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x68:GoUInt64 = ((0 : GoUInt64));
        var _x69:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x63, _x60, ((((_x67 : T_p384Uint1)) : GoUInt64)));
            _x68 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x70:GoUInt64 = ((0 : GoUInt64));
        var _x71:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x61, _x58, ((((_x69 : T_p384Uint1)) : GoUInt64)));
            _x70 = __tmp__._0;
            _x71 = __tmp__._1;
        };
        var _x72:GoUInt64 = ((0 : GoUInt64));
        var _x73:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x59, _x56, ((((_x71 : T_p384Uint1)) : GoUInt64)));
            _x72 = __tmp__._0;
            _x73 = __tmp__._1;
        };
        var _x74:GoUInt64 = ((0 : GoUInt64));
        var _x75:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x57, _x54, ((((_x73 : T_p384Uint1)) : GoUInt64)));
            _x74 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x40, _x64, ((((0 : GoUInt64)) : GoUInt64)));
            _x77 = __tmp__._1;
        };
        var _x78:GoUInt64 = ((0 : GoUInt64));
        var _x79:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x42, _x66, ((((_x77 : T_p384Uint1)) : GoUInt64)));
            _x78 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x80:GoUInt64 = ((0 : GoUInt64));
        var _x81:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x44, _x68, ((((_x79 : T_p384Uint1)) : GoUInt64)));
            _x80 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x82:GoUInt64 = ((0 : GoUInt64));
        var _x83:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x46, _x70, ((((_x81 : T_p384Uint1)) : GoUInt64)));
            _x82 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x84:GoUInt64 = ((0 : GoUInt64));
        var _x85:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, _x72, ((((_x83 : T_p384Uint1)) : GoUInt64)));
            _x84 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x86:GoUInt64 = ((0 : GoUInt64));
        var _x87:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, _x74, ((((_x85 : T_p384Uint1)) : GoUInt64)));
            _x86 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x88:GoUInt64 = ((0 : GoUInt64));
        var _x89:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x51 : T_p384Uint1)) : GoUInt64)) + ((((_x39 : T_p384Uint1)) : GoUInt64))), (((((_x75 : T_p384Uint1)) : GoUInt64)) + _x55), ((((_x87 : T_p384Uint1)) : GoUInt64)));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:GoUInt64 = ((0 : GoUInt64));
        var _x91:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x78, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x80, ((((0 : GoUInt64)) : GoUInt64)), ((((_x91 : T_p384Uint1)) : GoUInt64)));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x82, ((((0 : GoUInt64)) : GoUInt64)), ((((_x93 : T_p384Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x84, ((((0 : GoUInt64)) : GoUInt64)), ((((_x95 : T_p384Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x86, ((((0 : GoUInt64)) : GoUInt64)), ((((_x97 : T_p384Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x88, ((((0 : GoUInt64)) : GoUInt64)), ((((_x99 : T_p384Uint1)) : GoUInt64)));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x90, (("4294967297" : GoUInt64)));
            _x102 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x102, (("18446744073709551615" : GoUInt64)));
            _x105 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x106:GoUInt64 = ((0 : GoUInt64));
        var _x107:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x102, (("18446744073709551615" : GoUInt64)));
            _x107 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x108:GoUInt64 = ((0 : GoUInt64));
        var _x109:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x102, (("18446744073709551615" : GoUInt64)));
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        var _x111:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x102, (("18446744073709551614" : GoUInt64)));
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:GoUInt64 = ((0 : GoUInt64));
        var _x113:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x102, (("18446744069414584320" : GoUInt64)));
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        var _x115:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x102, (("4294967295" : GoUInt64)));
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x112, ((((0 : GoUInt64)) : GoUInt64)));
            _x116 = __tmp__._0;
            _x117 = __tmp__._1;
        };
        var _x118:GoUInt64 = ((0 : GoUInt64));
        var _x119:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x110, ((((_x117 : T_p384Uint1)) : GoUInt64)));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:GoUInt64 = ((0 : GoUInt64));
        var _x121:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x108, ((((_x119 : T_p384Uint1)) : GoUInt64)));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:GoUInt64 = ((0 : GoUInt64));
        var _x123:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x109, _x106, ((((_x121 : T_p384Uint1)) : GoUInt64)));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:GoUInt64 = ((0 : GoUInt64));
        var _x125:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x107, _x104, ((((_x123 : T_p384Uint1)) : GoUInt64)));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x127:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x90, _x114, ((((0 : GoUInt64)) : GoUInt64)));
            _x127 = __tmp__._1;
        };
        var _x128:GoUInt64 = ((0 : GoUInt64));
        var _x129:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x92, _x116, ((((_x127 : T_p384Uint1)) : GoUInt64)));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:GoUInt64 = ((0 : GoUInt64));
        var _x131:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x94, _x118, ((((_x129 : T_p384Uint1)) : GoUInt64)));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:GoUInt64 = ((0 : GoUInt64));
        var _x133:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x96, _x120, ((((_x131 : T_p384Uint1)) : GoUInt64)));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:GoUInt64 = ((0 : GoUInt64));
        var _x135:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x98, _x122, ((((_x133 : T_p384Uint1)) : GoUInt64)));
            _x134 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x136:GoUInt64 = ((0 : GoUInt64));
        var _x137:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x100, _x124, ((((_x135 : T_p384Uint1)) : GoUInt64)));
            _x136 = __tmp__._0;
            _x137 = __tmp__._1;
        };
        var _x138:GoUInt64 = ((0 : GoUInt64));
        var _x139:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x101 : T_p384Uint1)) : GoUInt64)) + ((((_x89 : T_p384Uint1)) : GoUInt64))), (((((_x125 : T_p384Uint1)) : GoUInt64)) + _x105), ((((_x137 : T_p384Uint1)) : GoUInt64)));
            _x138 = __tmp__._0;
            _x139 = __tmp__._1;
        };
        var _x140:GoUInt64 = ((0 : GoUInt64));
        var _x141:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x128, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x140 = __tmp__._0;
            _x141 = __tmp__._1;
        };
        var _x142:GoUInt64 = ((0 : GoUInt64));
        var _x143:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x130, ((((0 : GoUInt64)) : GoUInt64)), ((((_x141 : T_p384Uint1)) : GoUInt64)));
            _x142 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x144:GoUInt64 = ((0 : GoUInt64));
        var _x145:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x132, ((((0 : GoUInt64)) : GoUInt64)), ((((_x143 : T_p384Uint1)) : GoUInt64)));
            _x144 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x146:GoUInt64 = ((0 : GoUInt64));
        var _x147:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x134, ((((0 : GoUInt64)) : GoUInt64)), ((((_x145 : T_p384Uint1)) : GoUInt64)));
            _x146 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x148:GoUInt64 = ((0 : GoUInt64));
        var _x149:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x136, ((((0 : GoUInt64)) : GoUInt64)), ((((_x147 : T_p384Uint1)) : GoUInt64)));
            _x148 = __tmp__._0;
            _x149 = __tmp__._1;
        };
        var _x150:GoUInt64 = ((0 : GoUInt64));
        var _x151:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x138, ((((0 : GoUInt64)) : GoUInt64)), ((((_x149 : T_p384Uint1)) : GoUInt64)));
            _x150 = __tmp__._0;
            _x151 = __tmp__._1;
        };
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x140, (("4294967297" : GoUInt64)));
            _x152 = __tmp__._1;
        };
        var _x154:GoUInt64 = ((0 : GoUInt64));
        var _x155:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x152, (("18446744073709551615" : GoUInt64)));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:GoUInt64 = ((0 : GoUInt64));
        var _x157:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x152, (("18446744073709551615" : GoUInt64)));
            _x157 = __tmp__._0;
            _x156 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        var _x159:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x152, (("18446744073709551615" : GoUInt64)));
            _x159 = __tmp__._0;
            _x158 = __tmp__._1;
        };
        var _x160:GoUInt64 = ((0 : GoUInt64));
        var _x161:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x152, (("18446744073709551614" : GoUInt64)));
            _x161 = __tmp__._0;
            _x160 = __tmp__._1;
        };
        var _x162:GoUInt64 = ((0 : GoUInt64));
        var _x163:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x152, (("18446744069414584320" : GoUInt64)));
            _x163 = __tmp__._0;
            _x162 = __tmp__._1;
        };
        var _x164:GoUInt64 = ((0 : GoUInt64));
        var _x165:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x152, (("4294967295" : GoUInt64)));
            _x165 = __tmp__._0;
            _x164 = __tmp__._1;
        };
        var _x166:GoUInt64 = ((0 : GoUInt64));
        var _x167:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x165, _x162, ((((0 : GoUInt64)) : GoUInt64)));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:GoUInt64 = ((0 : GoUInt64));
        var _x169:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x163, _x160, ((((_x167 : T_p384Uint1)) : GoUInt64)));
            _x168 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x170:GoUInt64 = ((0 : GoUInt64));
        var _x171:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x161, _x158, ((((_x169 : T_p384Uint1)) : GoUInt64)));
            _x170 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x172:GoUInt64 = ((0 : GoUInt64));
        var _x173:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x159, _x156, ((((_x171 : T_p384Uint1)) : GoUInt64)));
            _x172 = __tmp__._0;
            _x173 = __tmp__._1;
        };
        var _x174:GoUInt64 = ((0 : GoUInt64));
        var _x175:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x157, _x154, ((((_x173 : T_p384Uint1)) : GoUInt64)));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x177:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x140, _x164, ((((0 : GoUInt64)) : GoUInt64)));
            _x177 = __tmp__._1;
        };
        var _x178:GoUInt64 = ((0 : GoUInt64));
        var _x179:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x142, _x166, ((((_x177 : T_p384Uint1)) : GoUInt64)));
            _x178 = __tmp__._0;
            _x179 = __tmp__._1;
        };
        var _x180:GoUInt64 = ((0 : GoUInt64));
        var _x181:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x144, _x168, ((((_x179 : T_p384Uint1)) : GoUInt64)));
            _x180 = __tmp__._0;
            _x181 = __tmp__._1;
        };
        var _x182:GoUInt64 = ((0 : GoUInt64));
        var _x183:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x146, _x170, ((((_x181 : T_p384Uint1)) : GoUInt64)));
            _x182 = __tmp__._0;
            _x183 = __tmp__._1;
        };
        var _x184:GoUInt64 = ((0 : GoUInt64));
        var _x185:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x148, _x172, ((((_x183 : T_p384Uint1)) : GoUInt64)));
            _x184 = __tmp__._0;
            _x185 = __tmp__._1;
        };
        var _x186:GoUInt64 = ((0 : GoUInt64));
        var _x187:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x150, _x174, ((((_x185 : T_p384Uint1)) : GoUInt64)));
            _x186 = __tmp__._0;
            _x187 = __tmp__._1;
        };
        var _x188:GoUInt64 = ((0 : GoUInt64));
        var _x189:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x151 : T_p384Uint1)) : GoUInt64)) + ((((_x139 : T_p384Uint1)) : GoUInt64))), (((((_x175 : T_p384Uint1)) : GoUInt64)) + _x155), ((((_x187 : T_p384Uint1)) : GoUInt64)));
            _x188 = __tmp__._0;
            _x189 = __tmp__._1;
        };
        var _x190:GoUInt64 = ((0 : GoUInt64));
        var _x191:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x178, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x190 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x192:GoUInt64 = ((0 : GoUInt64));
        var _x193:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x180, ((((0 : GoUInt64)) : GoUInt64)), ((((_x191 : T_p384Uint1)) : GoUInt64)));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:GoUInt64 = ((0 : GoUInt64));
        var _x195:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x182, ((((0 : GoUInt64)) : GoUInt64)), ((((_x193 : T_p384Uint1)) : GoUInt64)));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:GoUInt64 = ((0 : GoUInt64));
        var _x197:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x184, ((((0 : GoUInt64)) : GoUInt64)), ((((_x195 : T_p384Uint1)) : GoUInt64)));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:GoUInt64 = ((0 : GoUInt64));
        var _x199:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x186, ((((0 : GoUInt64)) : GoUInt64)), ((((_x197 : T_p384Uint1)) : GoUInt64)));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:GoUInt64 = ((0 : GoUInt64));
        var _x201:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x188, ((((0 : GoUInt64)) : GoUInt64)), ((((_x199 : T_p384Uint1)) : GoUInt64)));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("4294967297" : GoUInt64)));
            _x202 = __tmp__._1;
        };
        var _x204:GoUInt64 = ((0 : GoUInt64));
        var _x205:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x202, (("18446744073709551615" : GoUInt64)));
            _x205 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x206:GoUInt64 = ((0 : GoUInt64));
        var _x207:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x202, (("18446744073709551615" : GoUInt64)));
            _x207 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x208:GoUInt64 = ((0 : GoUInt64));
        var _x209:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x202, (("18446744073709551615" : GoUInt64)));
            _x209 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x210:GoUInt64 = ((0 : GoUInt64));
        var _x211:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x202, (("18446744073709551614" : GoUInt64)));
            _x211 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x212:GoUInt64 = ((0 : GoUInt64));
        var _x213:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x202, (("18446744069414584320" : GoUInt64)));
            _x213 = __tmp__._0;
            _x212 = __tmp__._1;
        };
        var _x214:GoUInt64 = ((0 : GoUInt64));
        var _x215:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x202, (("4294967295" : GoUInt64)));
            _x215 = __tmp__._0;
            _x214 = __tmp__._1;
        };
        var _x216:GoUInt64 = ((0 : GoUInt64));
        var _x217:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x215, _x212, ((((0 : GoUInt64)) : GoUInt64)));
            _x216 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x218:GoUInt64 = ((0 : GoUInt64));
        var _x219:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x213, _x210, ((((_x217 : T_p384Uint1)) : GoUInt64)));
            _x218 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x220:GoUInt64 = ((0 : GoUInt64));
        var _x221:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x211, _x208, ((((_x219 : T_p384Uint1)) : GoUInt64)));
            _x220 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x222:GoUInt64 = ((0 : GoUInt64));
        var _x223:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x209, _x206, ((((_x221 : T_p384Uint1)) : GoUInt64)));
            _x222 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x224:GoUInt64 = ((0 : GoUInt64));
        var _x225:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x207, _x204, ((((_x223 : T_p384Uint1)) : GoUInt64)));
            _x224 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x190, _x214, ((((0 : GoUInt64)) : GoUInt64)));
            _x227 = __tmp__._1;
        };
        var _x228:GoUInt64 = ((0 : GoUInt64));
        var _x229:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x192, _x216, ((((_x227 : T_p384Uint1)) : GoUInt64)));
            _x228 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x230:GoUInt64 = ((0 : GoUInt64));
        var _x231:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x218, ((((_x229 : T_p384Uint1)) : GoUInt64)));
            _x230 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x232:GoUInt64 = ((0 : GoUInt64));
        var _x233:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x220, ((((_x231 : T_p384Uint1)) : GoUInt64)));
            _x232 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x234:GoUInt64 = ((0 : GoUInt64));
        var _x235:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x198, _x222, ((((_x233 : T_p384Uint1)) : GoUInt64)));
            _x234 = __tmp__._0;
            _x235 = __tmp__._1;
        };
        var _x236:GoUInt64 = ((0 : GoUInt64));
        var _x237:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x200, _x224, ((((_x235 : T_p384Uint1)) : GoUInt64)));
            _x236 = __tmp__._0;
            _x237 = __tmp__._1;
        };
        var _x238:GoUInt64 = ((0 : GoUInt64));
        var _x239:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x201 : T_p384Uint1)) : GoUInt64)) + ((((_x189 : T_p384Uint1)) : GoUInt64))), (((((_x225 : T_p384Uint1)) : GoUInt64)) + _x205), ((((_x237 : T_p384Uint1)) : GoUInt64)));
            _x238 = __tmp__._0;
            _x239 = __tmp__._1;
        };
        var _x240:GoUInt64 = ((0 : GoUInt64));
        var _x241:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x240 = __tmp__._0;
            _x241 = __tmp__._1;
        };
        var _x242:GoUInt64 = ((0 : GoUInt64));
        var _x243:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x230, ((((0 : GoUInt64)) : GoUInt64)), ((((_x241 : T_p384Uint1)) : GoUInt64)));
            _x242 = __tmp__._0;
            _x243 = __tmp__._1;
        };
        var _x244:GoUInt64 = ((0 : GoUInt64));
        var _x245:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x232, ((((0 : GoUInt64)) : GoUInt64)), ((((_x243 : T_p384Uint1)) : GoUInt64)));
            _x244 = __tmp__._0;
            _x245 = __tmp__._1;
        };
        var _x246:GoUInt64 = ((0 : GoUInt64));
        var _x247:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x234, ((((0 : GoUInt64)) : GoUInt64)), ((((_x245 : T_p384Uint1)) : GoUInt64)));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:GoUInt64 = ((0 : GoUInt64));
        var _x249:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x236, ((((0 : GoUInt64)) : GoUInt64)), ((((_x247 : T_p384Uint1)) : GoUInt64)));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:GoUInt64 = ((0 : GoUInt64));
        var _x251:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x238, ((((0 : GoUInt64)) : GoUInt64)), ((((_x249 : T_p384Uint1)) : GoUInt64)));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x240, (("4294967297" : GoUInt64)));
            _x252 = __tmp__._1;
        };
        var _x254:GoUInt64 = ((0 : GoUInt64));
        var _x255:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x252, (("18446744073709551615" : GoUInt64)));
            _x255 = __tmp__._0;
            _x254 = __tmp__._1;
        };
        var _x256:GoUInt64 = ((0 : GoUInt64));
        var _x257:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x252, (("18446744073709551615" : GoUInt64)));
            _x257 = __tmp__._0;
            _x256 = __tmp__._1;
        };
        var _x258:GoUInt64 = ((0 : GoUInt64));
        var _x259:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x252, (("18446744073709551615" : GoUInt64)));
            _x259 = __tmp__._0;
            _x258 = __tmp__._1;
        };
        var _x260:GoUInt64 = ((0 : GoUInt64));
        var _x261:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x252, (("18446744073709551614" : GoUInt64)));
            _x261 = __tmp__._0;
            _x260 = __tmp__._1;
        };
        var _x262:GoUInt64 = ((0 : GoUInt64));
        var _x263:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x252, (("18446744069414584320" : GoUInt64)));
            _x263 = __tmp__._0;
            _x262 = __tmp__._1;
        };
        var _x264:GoUInt64 = ((0 : GoUInt64));
        var _x265:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x252, (("4294967295" : GoUInt64)));
            _x265 = __tmp__._0;
            _x264 = __tmp__._1;
        };
        var _x266:GoUInt64 = ((0 : GoUInt64));
        var _x267:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x265, _x262, ((((0 : GoUInt64)) : GoUInt64)));
            _x266 = __tmp__._0;
            _x267 = __tmp__._1;
        };
        var _x268:GoUInt64 = ((0 : GoUInt64));
        var _x269:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x263, _x260, ((((_x267 : T_p384Uint1)) : GoUInt64)));
            _x268 = __tmp__._0;
            _x269 = __tmp__._1;
        };
        var _x270:GoUInt64 = ((0 : GoUInt64));
        var _x271:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x261, _x258, ((((_x269 : T_p384Uint1)) : GoUInt64)));
            _x270 = __tmp__._0;
            _x271 = __tmp__._1;
        };
        var _x272:GoUInt64 = ((0 : GoUInt64));
        var _x273:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x259, _x256, ((((_x271 : T_p384Uint1)) : GoUInt64)));
            _x272 = __tmp__._0;
            _x273 = __tmp__._1;
        };
        var _x274:GoUInt64 = ((0 : GoUInt64));
        var _x275:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x257, _x254, ((((_x273 : T_p384Uint1)) : GoUInt64)));
            _x274 = __tmp__._0;
            _x275 = __tmp__._1;
        };
        var _x277:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x240, _x264, ((((0 : GoUInt64)) : GoUInt64)));
            _x277 = __tmp__._1;
        };
        var _x278:GoUInt64 = ((0 : GoUInt64));
        var _x279:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x242, _x266, ((((_x277 : T_p384Uint1)) : GoUInt64)));
            _x278 = __tmp__._0;
            _x279 = __tmp__._1;
        };
        var _x280:GoUInt64 = ((0 : GoUInt64));
        var _x281:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x244, _x268, ((((_x279 : T_p384Uint1)) : GoUInt64)));
            _x280 = __tmp__._0;
            _x281 = __tmp__._1;
        };
        var _x282:GoUInt64 = ((0 : GoUInt64));
        var _x283:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x246, _x270, ((((_x281 : T_p384Uint1)) : GoUInt64)));
            _x282 = __tmp__._0;
            _x283 = __tmp__._1;
        };
        var _x284:GoUInt64 = ((0 : GoUInt64));
        var _x285:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x248, _x272, ((((_x283 : T_p384Uint1)) : GoUInt64)));
            _x284 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x286:GoUInt64 = ((0 : GoUInt64));
        var _x287:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x250, _x274, ((((_x285 : T_p384Uint1)) : GoUInt64)));
            _x286 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x288:GoUInt64 = ((0 : GoUInt64));
        var _x289:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x251 : T_p384Uint1)) : GoUInt64)) + ((((_x239 : T_p384Uint1)) : GoUInt64))), (((((_x275 : T_p384Uint1)) : GoUInt64)) + _x255), ((((_x287 : T_p384Uint1)) : GoUInt64)));
            _x288 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x290:GoUInt64 = ((0 : GoUInt64));
        var _x291:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x278, (("4294967295" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x290 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x292:GoUInt64 = ((0 : GoUInt64));
        var _x293:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x280, (("18446744069414584320" : GoUInt64)), ((((_x291 : T_p384Uint1)) : GoUInt64)));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:GoUInt64 = ((0 : GoUInt64));
        var _x295:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x282, (("18446744073709551614" : GoUInt64)), ((((_x293 : T_p384Uint1)) : GoUInt64)));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:GoUInt64 = ((0 : GoUInt64));
        var _x297:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x284, (("18446744073709551615" : GoUInt64)), ((((_x295 : T_p384Uint1)) : GoUInt64)));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:GoUInt64 = ((0 : GoUInt64));
        var _x299:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x286, (("18446744073709551615" : GoUInt64)), ((((_x297 : T_p384Uint1)) : GoUInt64)));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300:GoUInt64 = ((0 : GoUInt64));
        var _x301:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x288, (("18446744073709551615" : GoUInt64)), ((((_x299 : T_p384Uint1)) : GoUInt64)));
            _x300 = __tmp__._0;
            _x301 = __tmp__._1;
        };
        var _x303:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((_x289 : T_p384Uint1)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x301 : T_p384Uint1)) : GoUInt64)));
            _x303 = __tmp__._1;
        };
        var _x304:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x304), ((_x303 : T_p384Uint1)), _x290, _x278);
        var _x305:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x305), ((_x303 : T_p384Uint1)), _x292, _x280);
        var _x306:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x306), ((_x303 : T_p384Uint1)), _x294, _x282);
        var _x307:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x307), ((_x303 : T_p384Uint1)), _x296, _x284);
        var _x308:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x308), ((_x303 : T_p384Uint1)), _x298, _x286);
        var _x309:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x309), ((_x303 : T_p384Uint1)), _x300, _x288);
        if (_out1 != null) _out1[((0 : GoInt))] = _x304;
        if (_out1 != null) _out1[((1 : GoInt))] = _x305;
        if (_out1 != null) _out1[((2 : GoInt))] = _x306;
        if (_out1 != null) _out1[((3 : GoInt))] = _x307;
        if (_out1 != null) _out1[((4 : GoInt))] = _x308;
        if (_out1 != null) _out1[((5 : GoInt))] = _x309;
    }
/**
    // p384ToMontgomery translates a field element into the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = eval arg1 mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p384ToMontgomery(_out1:T_p384MontgomeryDomainFieldElement, _arg1:T_p384NonMontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (("8589934592" : GoUInt64)));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (("18446744065119617024" : GoUInt64)));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (("8589934592" : GoUInt64)));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (("18446744065119617025" : GoUInt64)));
            _x14 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x14, _x11, ((((0 : GoUInt64)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((_x16 : T_p384Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x18 : T_p384Uint1)) : GoUInt64)));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x8, _x6, ((((_x20 : T_p384Uint1)) : GoUInt64)));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x13, (("4294967297" : GoUInt64)));
            _x23 = __tmp__._1;
        };
        var _x25:GoUInt64 = ((0 : GoUInt64));
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x23, (("18446744073709551615" : GoUInt64)));
            _x26 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x23, (("18446744073709551615" : GoUInt64)));
            _x28 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x29:GoUInt64 = ((0 : GoUInt64));
        var _x30:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x23, (("18446744073709551615" : GoUInt64)));
            _x30 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x31:GoUInt64 = ((0 : GoUInt64));
        var _x32:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x23, (("18446744073709551614" : GoUInt64)));
            _x32 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x33:GoUInt64 = ((0 : GoUInt64));
        var _x34:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x23, (("18446744069414584320" : GoUInt64)));
            _x34 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x35:GoUInt64 = ((0 : GoUInt64));
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x23, (("4294967295" : GoUInt64)));
            _x36 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x37:GoUInt64 = ((0 : GoUInt64));
        var _x38:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x36, _x33, ((((0 : GoUInt64)) : GoUInt64)));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:GoUInt64 = ((0 : GoUInt64));
        var _x40:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x34, _x31, ((((_x38 : T_p384Uint1)) : GoUInt64)));
            _x39 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x41:GoUInt64 = ((0 : GoUInt64));
        var _x42:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x32, _x29, ((((_x40 : T_p384Uint1)) : GoUInt64)));
            _x41 = __tmp__._0;
            _x42 = __tmp__._1;
        };
        var _x43:GoUInt64 = ((0 : GoUInt64));
        var _x44:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x30, _x27, ((((_x42 : T_p384Uint1)) : GoUInt64)));
            _x43 = __tmp__._0;
            _x44 = __tmp__._1;
        };
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x28, _x25, ((((_x44 : T_p384Uint1)) : GoUInt64)));
            _x45 = __tmp__._0;
            _x46 = __tmp__._1;
        };
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x35, ((((0 : GoUInt64)) : GoUInt64)));
            _x48 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x37, ((((_x48 : T_p384Uint1)) : GoUInt64)));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x39, ((((_x50 : T_p384Uint1)) : GoUInt64)));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x41, ((((_x52 : T_p384Uint1)) : GoUInt64)));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x21, _x43, ((((_x54 : T_p384Uint1)) : GoUInt64)));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x22 : T_p384Uint1)) : GoUInt64)), _x45, ((((_x56 : T_p384Uint1)) : GoUInt64)));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), (((((_x46 : T_p384Uint1)) : GoUInt64)) + _x26), ((((_x58 : T_p384Uint1)) : GoUInt64)));
            _x59 = __tmp__._0;
            _x60 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        var _x62:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("8589934592" : GoUInt64)));
            _x62 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744065119617024" : GoUInt64)));
            _x64 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("8589934592" : GoUInt64)));
            _x66 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744065119617025" : GoUInt64)));
            _x68 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x68, _x65, ((((0 : GoUInt64)) : GoUInt64)));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x66, _x63, ((((_x70 : T_p384Uint1)) : GoUInt64)));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:GoUInt64 = ((0 : GoUInt64));
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x64, _x61, ((((_x72 : T_p384Uint1)) : GoUInt64)));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x62, _x1, ((((_x74 : T_p384Uint1)) : GoUInt64)));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x49, _x67, ((((0 : GoUInt64)) : GoUInt64)));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79:GoUInt64 = ((0 : GoUInt64));
        var _x80:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x51, _x69, ((((_x78 : T_p384Uint1)) : GoUInt64)));
            _x79 = __tmp__._0;
            _x80 = __tmp__._1;
        };
        var _x81:GoUInt64 = ((0 : GoUInt64));
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x53, _x71, ((((_x80 : T_p384Uint1)) : GoUInt64)));
            _x81 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x55, _x73, ((((_x82 : T_p384Uint1)) : GoUInt64)));
            _x83 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x57, _x75, ((((_x84 : T_p384Uint1)) : GoUInt64)));
            _x85 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x59, ((((_x76 : T_p384Uint1)) : GoUInt64)), ((((_x86 : T_p384Uint1)) : GoUInt64)));
            _x87 = __tmp__._0;
            _x88 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x77, (("4294967297" : GoUInt64)));
            _x89 = __tmp__._1;
        };
        var _x91:GoUInt64 = ((0 : GoUInt64));
        var _x92:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x89, (("18446744073709551615" : GoUInt64)));
            _x92 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x93:GoUInt64 = ((0 : GoUInt64));
        var _x94:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x89, (("18446744073709551615" : GoUInt64)));
            _x94 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x95:GoUInt64 = ((0 : GoUInt64));
        var _x96:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x89, (("18446744073709551615" : GoUInt64)));
            _x96 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x97:GoUInt64 = ((0 : GoUInt64));
        var _x98:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x89, (("18446744073709551614" : GoUInt64)));
            _x98 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x99:GoUInt64 = ((0 : GoUInt64));
        var _x100:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x89, (("18446744069414584320" : GoUInt64)));
            _x100 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x101:GoUInt64 = ((0 : GoUInt64));
        var _x102:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x89, (("4294967295" : GoUInt64)));
            _x102 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x103:GoUInt64 = ((0 : GoUInt64));
        var _x104:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x102, _x99, ((((0 : GoUInt64)) : GoUInt64)));
            _x103 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x105:GoUInt64 = ((0 : GoUInt64));
        var _x106:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x100, _x97, ((((_x104 : T_p384Uint1)) : GoUInt64)));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x107:GoUInt64 = ((0 : GoUInt64));
        var _x108:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x98, _x95, ((((_x106 : T_p384Uint1)) : GoUInt64)));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x109:GoUInt64 = ((0 : GoUInt64));
        var _x110:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x96, _x93, ((((_x108 : T_p384Uint1)) : GoUInt64)));
            _x109 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x111:GoUInt64 = ((0 : GoUInt64));
        var _x112:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x94, _x91, ((((_x110 : T_p384Uint1)) : GoUInt64)));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x77, _x101, ((((0 : GoUInt64)) : GoUInt64)));
            _x114 = __tmp__._1;
        };
        var _x115:GoUInt64 = ((0 : GoUInt64));
        var _x116:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x79, _x103, ((((_x114 : T_p384Uint1)) : GoUInt64)));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:GoUInt64 = ((0 : GoUInt64));
        var _x118:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x81, _x105, ((((_x116 : T_p384Uint1)) : GoUInt64)));
            _x117 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x119:GoUInt64 = ((0 : GoUInt64));
        var _x120:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x83, _x107, ((((_x118 : T_p384Uint1)) : GoUInt64)));
            _x119 = __tmp__._0;
            _x120 = __tmp__._1;
        };
        var _x121:GoUInt64 = ((0 : GoUInt64));
        var _x122:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x85, _x109, ((((_x120 : T_p384Uint1)) : GoUInt64)));
            _x121 = __tmp__._0;
            _x122 = __tmp__._1;
        };
        var _x123:GoUInt64 = ((0 : GoUInt64));
        var _x124:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x87, _x111, ((((_x122 : T_p384Uint1)) : GoUInt64)));
            _x123 = __tmp__._0;
            _x124 = __tmp__._1;
        };
        var _x125:GoUInt64 = ((0 : GoUInt64));
        var _x126:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x88 : T_p384Uint1)) : GoUInt64)) + ((((_x60 : T_p384Uint1)) : GoUInt64))), (((((_x112 : T_p384Uint1)) : GoUInt64)) + _x92), ((((_x124 : T_p384Uint1)) : GoUInt64)));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:GoUInt64 = ((0 : GoUInt64));
        var _x128:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("8589934592" : GoUInt64)));
            _x128 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x129:GoUInt64 = ((0 : GoUInt64));
        var _x130:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744065119617024" : GoUInt64)));
            _x130 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x131:GoUInt64 = ((0 : GoUInt64));
        var _x132:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("8589934592" : GoUInt64)));
            _x132 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x133:GoUInt64 = ((0 : GoUInt64));
        var _x134:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (("18446744065119617025" : GoUInt64)));
            _x134 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x134, _x131, ((((0 : GoUInt64)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x132, _x129, ((((_x136 : T_p384Uint1)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x130, _x127, ((((_x138 : T_p384Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x128, _x2, ((((_x140 : T_p384Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x133, ((((0 : GoUInt64)) : GoUInt64)));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, _x135, ((((_x144 : T_p384Uint1)) : GoUInt64)));
            _x145 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x119, _x137, ((((_x146 : T_p384Uint1)) : GoUInt64)));
            _x147 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x121, _x139, ((((_x148 : T_p384Uint1)) : GoUInt64)));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x123, _x141, ((((_x150 : T_p384Uint1)) : GoUInt64)));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x125, ((((_x142 : T_p384Uint1)) : GoUInt64)), ((((_x152 : T_p384Uint1)) : GoUInt64)));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x143, (("4294967297" : GoUInt64)));
            _x155 = __tmp__._1;
        };
        var _x157:GoUInt64 = ((0 : GoUInt64));
        var _x158:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x155, (("18446744073709551615" : GoUInt64)));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:GoUInt64 = ((0 : GoUInt64));
        var _x160:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x155, (("18446744073709551615" : GoUInt64)));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:GoUInt64 = ((0 : GoUInt64));
        var _x162:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x155, (("18446744073709551615" : GoUInt64)));
            _x162 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x163:GoUInt64 = ((0 : GoUInt64));
        var _x164:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x155, (("18446744073709551614" : GoUInt64)));
            _x164 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x165:GoUInt64 = ((0 : GoUInt64));
        var _x166:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x155, (("18446744069414584320" : GoUInt64)));
            _x166 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x167:GoUInt64 = ((0 : GoUInt64));
        var _x168:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x155, (("4294967295" : GoUInt64)));
            _x168 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x169:GoUInt64 = ((0 : GoUInt64));
        var _x170:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x168, _x165, ((((0 : GoUInt64)) : GoUInt64)));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:GoUInt64 = ((0 : GoUInt64));
        var _x172:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x166, _x163, ((((_x170 : T_p384Uint1)) : GoUInt64)));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        var _x174:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x164, _x161, ((((_x172 : T_p384Uint1)) : GoUInt64)));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        var _x176:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x162, _x159, ((((_x174 : T_p384Uint1)) : GoUInt64)));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:GoUInt64 = ((0 : GoUInt64));
        var _x178:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x160, _x157, ((((_x176 : T_p384Uint1)) : GoUInt64)));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x167, ((((0 : GoUInt64)) : GoUInt64)));
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x145, _x169, ((((_x180 : T_p384Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        var _x184:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x147, _x171, ((((_x182 : T_p384Uint1)) : GoUInt64)));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x149, _x173, ((((_x184 : T_p384Uint1)) : GoUInt64)));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x151, _x175, ((((_x186 : T_p384Uint1)) : GoUInt64)));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:GoUInt64 = ((0 : GoUInt64));
        var _x190:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x153, _x177, ((((_x188 : T_p384Uint1)) : GoUInt64)));
            _x189 = __tmp__._0;
            _x190 = __tmp__._1;
        };
        var _x191:GoUInt64 = ((0 : GoUInt64));
        var _x192:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x154 : T_p384Uint1)) : GoUInt64)) + ((((_x126 : T_p384Uint1)) : GoUInt64))), (((((_x178 : T_p384Uint1)) : GoUInt64)) + _x158), ((((_x190 : T_p384Uint1)) : GoUInt64)));
            _x191 = __tmp__._0;
            _x192 = __tmp__._1;
        };
        var _x193:GoUInt64 = ((0 : GoUInt64));
        var _x194:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("8589934592" : GoUInt64)));
            _x194 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x195:GoUInt64 = ((0 : GoUInt64));
        var _x196:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("18446744065119617024" : GoUInt64)));
            _x196 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x197:GoUInt64 = ((0 : GoUInt64));
        var _x198:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("8589934592" : GoUInt64)));
            _x198 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x199:GoUInt64 = ((0 : GoUInt64));
        var _x200:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (("18446744065119617025" : GoUInt64)));
            _x200 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x201:GoUInt64 = ((0 : GoUInt64));
        var _x202:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x200, _x197, ((((0 : GoUInt64)) : GoUInt64)));
            _x201 = __tmp__._0;
            _x202 = __tmp__._1;
        };
        var _x203:GoUInt64 = ((0 : GoUInt64));
        var _x204:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x198, _x195, ((((_x202 : T_p384Uint1)) : GoUInt64)));
            _x203 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x205:GoUInt64 = ((0 : GoUInt64));
        var _x206:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x193, ((((_x204 : T_p384Uint1)) : GoUInt64)));
            _x205 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x207:GoUInt64 = ((0 : GoUInt64));
        var _x208:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x3, ((((_x206 : T_p384Uint1)) : GoUInt64)));
            _x207 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x209:GoUInt64 = ((0 : GoUInt64));
        var _x210:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x181, _x199, ((((0 : GoUInt64)) : GoUInt64)));
            _x209 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x211:GoUInt64 = ((0 : GoUInt64));
        var _x212:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x183, _x201, ((((_x210 : T_p384Uint1)) : GoUInt64)));
            _x211 = __tmp__._0;
            _x212 = __tmp__._1;
        };
        var _x213:GoUInt64 = ((0 : GoUInt64));
        var _x214:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x185, _x203, ((((_x212 : T_p384Uint1)) : GoUInt64)));
            _x213 = __tmp__._0;
            _x214 = __tmp__._1;
        };
        var _x215:GoUInt64 = ((0 : GoUInt64));
        var _x216:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x187, _x205, ((((_x214 : T_p384Uint1)) : GoUInt64)));
            _x215 = __tmp__._0;
            _x216 = __tmp__._1;
        };
        var _x217:GoUInt64 = ((0 : GoUInt64));
        var _x218:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x189, _x207, ((((_x216 : T_p384Uint1)) : GoUInt64)));
            _x217 = __tmp__._0;
            _x218 = __tmp__._1;
        };
        var _x219:GoUInt64 = ((0 : GoUInt64));
        var _x220:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x191, ((((_x208 : T_p384Uint1)) : GoUInt64)), ((((_x218 : T_p384Uint1)) : GoUInt64)));
            _x219 = __tmp__._0;
            _x220 = __tmp__._1;
        };
        var _x221:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x209, (("4294967297" : GoUInt64)));
            _x221 = __tmp__._1;
        };
        var _x223:GoUInt64 = ((0 : GoUInt64));
        var _x224:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x221, (("18446744073709551615" : GoUInt64)));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:GoUInt64 = ((0 : GoUInt64));
        var _x226:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x221, (("18446744073709551615" : GoUInt64)));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        var _x228:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x221, (("18446744073709551615" : GoUInt64)));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:GoUInt64 = ((0 : GoUInt64));
        var _x230:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x221, (("18446744073709551614" : GoUInt64)));
            _x230 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x231:GoUInt64 = ((0 : GoUInt64));
        var _x232:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x221, (("18446744069414584320" : GoUInt64)));
            _x232 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x233:GoUInt64 = ((0 : GoUInt64));
        var _x234:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x221, (("4294967295" : GoUInt64)));
            _x234 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x235:GoUInt64 = ((0 : GoUInt64));
        var _x236:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x234, _x231, ((((0 : GoUInt64)) : GoUInt64)));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:GoUInt64 = ((0 : GoUInt64));
        var _x238:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x232, _x229, ((((_x236 : T_p384Uint1)) : GoUInt64)));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:GoUInt64 = ((0 : GoUInt64));
        var _x240:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x230, _x227, ((((_x238 : T_p384Uint1)) : GoUInt64)));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        var _x242:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, _x225, ((((_x240 : T_p384Uint1)) : GoUInt64)));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:GoUInt64 = ((0 : GoUInt64));
        var _x244:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x226, _x223, ((((_x242 : T_p384Uint1)) : GoUInt64)));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x246:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x209, _x233, ((((0 : GoUInt64)) : GoUInt64)));
            _x246 = __tmp__._1;
        };
        var _x247:GoUInt64 = ((0 : GoUInt64));
        var _x248:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x211, _x235, ((((_x246 : T_p384Uint1)) : GoUInt64)));
            _x247 = __tmp__._0;
            _x248 = __tmp__._1;
        };
        var _x249:GoUInt64 = ((0 : GoUInt64));
        var _x250:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x213, _x237, ((((_x248 : T_p384Uint1)) : GoUInt64)));
            _x249 = __tmp__._0;
            _x250 = __tmp__._1;
        };
        var _x251:GoUInt64 = ((0 : GoUInt64));
        var _x252:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x215, _x239, ((((_x250 : T_p384Uint1)) : GoUInt64)));
            _x251 = __tmp__._0;
            _x252 = __tmp__._1;
        };
        var _x253:GoUInt64 = ((0 : GoUInt64));
        var _x254:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x217, _x241, ((((_x252 : T_p384Uint1)) : GoUInt64)));
            _x253 = __tmp__._0;
            _x254 = __tmp__._1;
        };
        var _x255:GoUInt64 = ((0 : GoUInt64));
        var _x256:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x219, _x243, ((((_x254 : T_p384Uint1)) : GoUInt64)));
            _x255 = __tmp__._0;
            _x256 = __tmp__._1;
        };
        var _x257:GoUInt64 = ((0 : GoUInt64));
        var _x258:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x220 : T_p384Uint1)) : GoUInt64)) + ((((_x192 : T_p384Uint1)) : GoUInt64))), (((((_x244 : T_p384Uint1)) : GoUInt64)) + _x224), ((((_x256 : T_p384Uint1)) : GoUInt64)));
            _x257 = __tmp__._0;
            _x258 = __tmp__._1;
        };
        var _x259:GoUInt64 = ((0 : GoUInt64));
        var _x260:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("8589934592" : GoUInt64)));
            _x260 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x261:GoUInt64 = ((0 : GoUInt64));
        var _x262:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("18446744065119617024" : GoUInt64)));
            _x262 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x263:GoUInt64 = ((0 : GoUInt64));
        var _x264:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("8589934592" : GoUInt64)));
            _x264 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x265:GoUInt64 = ((0 : GoUInt64));
        var _x266:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (("18446744065119617025" : GoUInt64)));
            _x266 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x267:GoUInt64 = ((0 : GoUInt64));
        var _x268:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x266, _x263, ((((0 : GoUInt64)) : GoUInt64)));
            _x267 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x269:GoUInt64 = ((0 : GoUInt64));
        var _x270:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x264, _x261, ((((_x268 : T_p384Uint1)) : GoUInt64)));
            _x269 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x271:GoUInt64 = ((0 : GoUInt64));
        var _x272:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x262, _x259, ((((_x270 : T_p384Uint1)) : GoUInt64)));
            _x271 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x273:GoUInt64 = ((0 : GoUInt64));
        var _x274:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x260, _x4, ((((_x272 : T_p384Uint1)) : GoUInt64)));
            _x273 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x275:GoUInt64 = ((0 : GoUInt64));
        var _x276:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x247, _x265, ((((0 : GoUInt64)) : GoUInt64)));
            _x275 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x277:GoUInt64 = ((0 : GoUInt64));
        var _x278:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x249, _x267, ((((_x276 : T_p384Uint1)) : GoUInt64)));
            _x277 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x279:GoUInt64 = ((0 : GoUInt64));
        var _x280:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x251, _x269, ((((_x278 : T_p384Uint1)) : GoUInt64)));
            _x279 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x281:GoUInt64 = ((0 : GoUInt64));
        var _x282:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x253, _x271, ((((_x280 : T_p384Uint1)) : GoUInt64)));
            _x281 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x283:GoUInt64 = ((0 : GoUInt64));
        var _x284:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x255, _x273, ((((_x282 : T_p384Uint1)) : GoUInt64)));
            _x283 = __tmp__._0;
            _x284 = __tmp__._1;
        };
        var _x285:GoUInt64 = ((0 : GoUInt64));
        var _x286:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x257, ((((_x274 : T_p384Uint1)) : GoUInt64)), ((((_x284 : T_p384Uint1)) : GoUInt64)));
            _x285 = __tmp__._0;
            _x286 = __tmp__._1;
        };
        var _x287:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x275, (("4294967297" : GoUInt64)));
            _x287 = __tmp__._1;
        };
        var _x289:GoUInt64 = ((0 : GoUInt64));
        var _x290:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x287, (("18446744073709551615" : GoUInt64)));
            _x290 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x291:GoUInt64 = ((0 : GoUInt64));
        var _x292:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x287, (("18446744073709551615" : GoUInt64)));
            _x292 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x293:GoUInt64 = ((0 : GoUInt64));
        var _x294:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x287, (("18446744073709551615" : GoUInt64)));
            _x294 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x295:GoUInt64 = ((0 : GoUInt64));
        var _x296:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x287, (("18446744073709551614" : GoUInt64)));
            _x296 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x297:GoUInt64 = ((0 : GoUInt64));
        var _x298:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x287, (("18446744069414584320" : GoUInt64)));
            _x298 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x299:GoUInt64 = ((0 : GoUInt64));
        var _x300:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x287, (("4294967295" : GoUInt64)));
            _x300 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x301:GoUInt64 = ((0 : GoUInt64));
        var _x302:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x300, _x297, ((((0 : GoUInt64)) : GoUInt64)));
            _x301 = __tmp__._0;
            _x302 = __tmp__._1;
        };
        var _x303:GoUInt64 = ((0 : GoUInt64));
        var _x304:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x298, _x295, ((((_x302 : T_p384Uint1)) : GoUInt64)));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:GoUInt64 = ((0 : GoUInt64));
        var _x306:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x296, _x293, ((((_x304 : T_p384Uint1)) : GoUInt64)));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:GoUInt64 = ((0 : GoUInt64));
        var _x308:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x294, _x291, ((((_x306 : T_p384Uint1)) : GoUInt64)));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:GoUInt64 = ((0 : GoUInt64));
        var _x310:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x292, _x289, ((((_x308 : T_p384Uint1)) : GoUInt64)));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x312:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x275, _x299, ((((0 : GoUInt64)) : GoUInt64)));
            _x312 = __tmp__._1;
        };
        var _x313:GoUInt64 = ((0 : GoUInt64));
        var _x314:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x277, _x301, ((((_x312 : T_p384Uint1)) : GoUInt64)));
            _x313 = __tmp__._0;
            _x314 = __tmp__._1;
        };
        var _x315:GoUInt64 = ((0 : GoUInt64));
        var _x316:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x279, _x303, ((((_x314 : T_p384Uint1)) : GoUInt64)));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:GoUInt64 = ((0 : GoUInt64));
        var _x318:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x281, _x305, ((((_x316 : T_p384Uint1)) : GoUInt64)));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:GoUInt64 = ((0 : GoUInt64));
        var _x320:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x283, _x307, ((((_x318 : T_p384Uint1)) : GoUInt64)));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321:GoUInt64 = ((0 : GoUInt64));
        var _x322:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x285, _x309, ((((_x320 : T_p384Uint1)) : GoUInt64)));
            _x321 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x323:GoUInt64 = ((0 : GoUInt64));
        var _x324:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x286 : T_p384Uint1)) : GoUInt64)) + ((((_x258 : T_p384Uint1)) : GoUInt64))), (((((_x310 : T_p384Uint1)) : GoUInt64)) + _x290), ((((_x322 : T_p384Uint1)) : GoUInt64)));
            _x323 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x325:GoUInt64 = ((0 : GoUInt64));
        var _x326:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (("8589934592" : GoUInt64)));
            _x326 = __tmp__._0;
            _x325 = __tmp__._1;
        };
        var _x327:GoUInt64 = ((0 : GoUInt64));
        var _x328:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (("18446744065119617024" : GoUInt64)));
            _x328 = __tmp__._0;
            _x327 = __tmp__._1;
        };
        var _x329:GoUInt64 = ((0 : GoUInt64));
        var _x330:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (("8589934592" : GoUInt64)));
            _x330 = __tmp__._0;
            _x329 = __tmp__._1;
        };
        var _x331:GoUInt64 = ((0 : GoUInt64));
        var _x332:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (("18446744065119617025" : GoUInt64)));
            _x332 = __tmp__._0;
            _x331 = __tmp__._1;
        };
        var _x333:GoUInt64 = ((0 : GoUInt64));
        var _x334:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x332, _x329, ((((0 : GoUInt64)) : GoUInt64)));
            _x333 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x335:GoUInt64 = ((0 : GoUInt64));
        var _x336:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x330, _x327, ((((_x334 : T_p384Uint1)) : GoUInt64)));
            _x335 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x337:GoUInt64 = ((0 : GoUInt64));
        var _x338:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x328, _x325, ((((_x336 : T_p384Uint1)) : GoUInt64)));
            _x337 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x339:GoUInt64 = ((0 : GoUInt64));
        var _x340:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x326, _x5, ((((_x338 : T_p384Uint1)) : GoUInt64)));
            _x339 = __tmp__._0;
            _x340 = __tmp__._1;
        };
        var _x341:GoUInt64 = ((0 : GoUInt64));
        var _x342:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x313, _x331, ((((0 : GoUInt64)) : GoUInt64)));
            _x341 = __tmp__._0;
            _x342 = __tmp__._1;
        };
        var _x343:GoUInt64 = ((0 : GoUInt64));
        var _x344:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x315, _x333, ((((_x342 : T_p384Uint1)) : GoUInt64)));
            _x343 = __tmp__._0;
            _x344 = __tmp__._1;
        };
        var _x345:GoUInt64 = ((0 : GoUInt64));
        var _x346:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x317, _x335, ((((_x344 : T_p384Uint1)) : GoUInt64)));
            _x345 = __tmp__._0;
            _x346 = __tmp__._1;
        };
        var _x347:GoUInt64 = ((0 : GoUInt64));
        var _x348:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x319, _x337, ((((_x346 : T_p384Uint1)) : GoUInt64)));
            _x347 = __tmp__._0;
            _x348 = __tmp__._1;
        };
        var _x349:GoUInt64 = ((0 : GoUInt64));
        var _x350:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x321, _x339, ((((_x348 : T_p384Uint1)) : GoUInt64)));
            _x349 = __tmp__._0;
            _x350 = __tmp__._1;
        };
        var _x351:GoUInt64 = ((0 : GoUInt64));
        var _x352:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x323, ((((_x340 : T_p384Uint1)) : GoUInt64)), ((((_x350 : T_p384Uint1)) : GoUInt64)));
            _x351 = __tmp__._0;
            _x352 = __tmp__._1;
        };
        var _x353:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x341, (("4294967297" : GoUInt64)));
            _x353 = __tmp__._1;
        };
        var _x355:GoUInt64 = ((0 : GoUInt64));
        var _x356:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x353, (("18446744073709551615" : GoUInt64)));
            _x356 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x357:GoUInt64 = ((0 : GoUInt64));
        var _x358:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x353, (("18446744073709551615" : GoUInt64)));
            _x358 = __tmp__._0;
            _x357 = __tmp__._1;
        };
        var _x359:GoUInt64 = ((0 : GoUInt64));
        var _x360:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x353, (("18446744073709551615" : GoUInt64)));
            _x360 = __tmp__._0;
            _x359 = __tmp__._1;
        };
        var _x361:GoUInt64 = ((0 : GoUInt64));
        var _x362:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x353, (("18446744073709551614" : GoUInt64)));
            _x362 = __tmp__._0;
            _x361 = __tmp__._1;
        };
        var _x363:GoUInt64 = ((0 : GoUInt64));
        var _x364:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x353, (("18446744069414584320" : GoUInt64)));
            _x364 = __tmp__._0;
            _x363 = __tmp__._1;
        };
        var _x365:GoUInt64 = ((0 : GoUInt64));
        var _x366:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x353, (("4294967295" : GoUInt64)));
            _x366 = __tmp__._0;
            _x365 = __tmp__._1;
        };
        var _x367:GoUInt64 = ((0 : GoUInt64));
        var _x368:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x366, _x363, ((((0 : GoUInt64)) : GoUInt64)));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:GoUInt64 = ((0 : GoUInt64));
        var _x370:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x364, _x361, ((((_x368 : T_p384Uint1)) : GoUInt64)));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:GoUInt64 = ((0 : GoUInt64));
        var _x372:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x362, _x359, ((((_x370 : T_p384Uint1)) : GoUInt64)));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:GoUInt64 = ((0 : GoUInt64));
        var _x374:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x360, _x357, ((((_x372 : T_p384Uint1)) : GoUInt64)));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:GoUInt64 = ((0 : GoUInt64));
        var _x376:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x358, _x355, ((((_x374 : T_p384Uint1)) : GoUInt64)));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x378:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x341, _x365, ((((0 : GoUInt64)) : GoUInt64)));
            _x378 = __tmp__._1;
        };
        var _x379:GoUInt64 = ((0 : GoUInt64));
        var _x380:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x343, _x367, ((((_x378 : T_p384Uint1)) : GoUInt64)));
            _x379 = __tmp__._0;
            _x380 = __tmp__._1;
        };
        var _x381:GoUInt64 = ((0 : GoUInt64));
        var _x382:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x345, _x369, ((((_x380 : T_p384Uint1)) : GoUInt64)));
            _x381 = __tmp__._0;
            _x382 = __tmp__._1;
        };
        var _x383:GoUInt64 = ((0 : GoUInt64));
        var _x384:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x347, _x371, ((((_x382 : T_p384Uint1)) : GoUInt64)));
            _x383 = __tmp__._0;
            _x384 = __tmp__._1;
        };
        var _x385:GoUInt64 = ((0 : GoUInt64));
        var _x386:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x349, _x373, ((((_x384 : T_p384Uint1)) : GoUInt64)));
            _x385 = __tmp__._0;
            _x386 = __tmp__._1;
        };
        var _x387:GoUInt64 = ((0 : GoUInt64));
        var _x388:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x351, _x375, ((((_x386 : T_p384Uint1)) : GoUInt64)));
            _x387 = __tmp__._0;
            _x388 = __tmp__._1;
        };
        var _x389:GoUInt64 = ((0 : GoUInt64));
        var _x390:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x352 : T_p384Uint1)) : GoUInt64)) + ((((_x324 : T_p384Uint1)) : GoUInt64))), (((((_x376 : T_p384Uint1)) : GoUInt64)) + _x356), ((((_x388 : T_p384Uint1)) : GoUInt64)));
            _x389 = __tmp__._0;
            _x390 = __tmp__._1;
        };
        var _x391:GoUInt64 = ((0 : GoUInt64));
        var _x392:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x379, (("4294967295" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x391 = __tmp__._0;
            _x392 = __tmp__._1;
        };
        var _x393:GoUInt64 = ((0 : GoUInt64));
        var _x394:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x381, (("18446744069414584320" : GoUInt64)), ((((_x392 : T_p384Uint1)) : GoUInt64)));
            _x393 = __tmp__._0;
            _x394 = __tmp__._1;
        };
        var _x395:GoUInt64 = ((0 : GoUInt64));
        var _x396:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x383, (("18446744073709551614" : GoUInt64)), ((((_x394 : T_p384Uint1)) : GoUInt64)));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:GoUInt64 = ((0 : GoUInt64));
        var _x398:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x385, (("18446744073709551615" : GoUInt64)), ((((_x396 : T_p384Uint1)) : GoUInt64)));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:GoUInt64 = ((0 : GoUInt64));
        var _x400:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x387, (("18446744073709551615" : GoUInt64)), ((((_x398 : T_p384Uint1)) : GoUInt64)));
            _x399 = __tmp__._0;
            _x400 = __tmp__._1;
        };
        var _x401:GoUInt64 = ((0 : GoUInt64));
        var _x402:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x389, (("18446744073709551615" : GoUInt64)), ((((_x400 : T_p384Uint1)) : GoUInt64)));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x404:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((_x390 : T_p384Uint1)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x402 : T_p384Uint1)) : GoUInt64)));
            _x404 = __tmp__._1;
        };
        var _x405:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x405), ((_x404 : T_p384Uint1)), _x391, _x379);
        var _x406:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x406), ((_x404 : T_p384Uint1)), _x393, _x381);
        var _x407:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x407), ((_x404 : T_p384Uint1)), _x395, _x383);
        var _x408:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x408), ((_x404 : T_p384Uint1)), _x397, _x385);
        var _x409:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x409), ((_x404 : T_p384Uint1)), _x399, _x387);
        var _x410:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x410), ((_x404 : T_p384Uint1)), _x401, _x389);
        if (_out1 != null) _out1[((0 : GoInt))] = _x405;
        if (_out1 != null) _out1[((1 : GoInt))] = _x406;
        if (_out1 != null) _out1[((2 : GoInt))] = _x407;
        if (_out1 != null) _out1[((3 : GoInt))] = _x408;
        if (_out1 != null) _out1[((4 : GoInt))] = _x409;
        if (_out1 != null) _out1[((5 : GoInt))] = _x410;
    }
/**
    // p384Selectznz is a multi-limb conditional select.
    //
    // Postconditions:
    //   eval out1 = (if arg1 = 0 then eval arg2 else eval arg3)
    //
    // Input Bounds:
    //   arg1: [0x0 ~> 0x1]
    //   arg2: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    //   arg3: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
**/
function _p384Selectznz(_out1:GoArray<GoUInt64>, _arg1:T_p384Uint1, _arg2:GoArray<GoUInt64>, _arg3:GoArray<GoUInt64>):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x1), _arg1, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((0 : GoInt))] : ((0 : GoUInt64))));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x2), _arg1, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((1 : GoInt))] : ((0 : GoUInt64))));
        var _x3:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x3), _arg1, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((2 : GoInt))] : ((0 : GoUInt64))));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x4), _arg1, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((3 : GoInt))] : ((0 : GoUInt64))));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x5), _arg1, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((4 : GoInt))] : ((0 : GoUInt64))));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        _p384CmovznzU64(Go.pointer(_x6), _arg1, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((5 : GoInt))] : ((0 : GoUInt64))));
        if (_out1 != null) _out1[((0 : GoInt))] = _x1;
        if (_out1 != null) _out1[((1 : GoInt))] = _x2;
        if (_out1 != null) _out1[((2 : GoInt))] = _x3;
        if (_out1 != null) _out1[((3 : GoInt))] = _x4;
        if (_out1 != null) _out1[((4 : GoInt))] = _x5;
        if (_out1 != null) _out1[((5 : GoInt))] = _x6;
    }
/**
    // p384ToBytes serializes a field element NOT in the Montgomery domain to bytes in little-endian order.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   out1 = map (λ x, ⌊((eval arg1 mod m) mod 2^(8 * (x + 1))) / 2^(8 * x)⌋) [0..47]
    //
    // Input Bounds:
    //   arg1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff]]
**/
function _p384ToBytes(_out1:GoArray<GoUInt8>, _arg1:GoArray<GoUInt64>):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt8 = (((_x6 : GoUInt8)) & ((255 : GoUInt8)));
        var _x8:GoUInt64 = (_x6 >> ((8 : GoUnTypedInt)));
        var _x9:GoUInt8 = (((_x8 : GoUInt8)) & ((255 : GoUInt8)));
        var _x10:GoUInt64 = (_x8 >> ((8 : GoUnTypedInt)));
        var _x11:GoUInt8 = (((_x10 : GoUInt8)) & ((255 : GoUInt8)));
        var _x12:GoUInt64 = (_x10 >> ((8 : GoUnTypedInt)));
        var _x13:GoUInt8 = (((_x12 : GoUInt8)) & ((255 : GoUInt8)));
        var _x14:GoUInt64 = (_x12 >> ((8 : GoUnTypedInt)));
        var _x15:GoUInt8 = (((_x14 : GoUInt8)) & ((255 : GoUInt8)));
        var _x16:GoUInt64 = (_x14 >> ((8 : GoUnTypedInt)));
        var _x17:GoUInt8 = (((_x16 : GoUInt8)) & ((255 : GoUInt8)));
        var _x18:GoUInt64 = (_x16 >> ((8 : GoUnTypedInt)));
        var _x19:GoUInt8 = (((_x18 : GoUInt8)) & ((255 : GoUInt8)));
        var _x20:GoUInt8 = (((_x18 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x21:GoUInt8 = (((_x5 : GoUInt8)) & ((255 : GoUInt8)));
        var _x22:GoUInt64 = (_x5 >> ((8 : GoUnTypedInt)));
        var _x23:GoUInt8 = (((_x22 : GoUInt8)) & ((255 : GoUInt8)));
        var _x24:GoUInt64 = (_x22 >> ((8 : GoUnTypedInt)));
        var _x25:GoUInt8 = (((_x24 : GoUInt8)) & ((255 : GoUInt8)));
        var _x26:GoUInt64 = (_x24 >> ((8 : GoUnTypedInt)));
        var _x27:GoUInt8 = (((_x26 : GoUInt8)) & ((255 : GoUInt8)));
        var _x28:GoUInt64 = (_x26 >> ((8 : GoUnTypedInt)));
        var _x29:GoUInt8 = (((_x28 : GoUInt8)) & ((255 : GoUInt8)));
        var _x30:GoUInt64 = (_x28 >> ((8 : GoUnTypedInt)));
        var _x31:GoUInt8 = (((_x30 : GoUInt8)) & ((255 : GoUInt8)));
        var _x32:GoUInt64 = (_x30 >> ((8 : GoUnTypedInt)));
        var _x33:GoUInt8 = (((_x32 : GoUInt8)) & ((255 : GoUInt8)));
        var _x34:GoUInt8 = (((_x32 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x35:GoUInt8 = (((_x4 : GoUInt8)) & ((255 : GoUInt8)));
        var _x36:GoUInt64 = (_x4 >> ((8 : GoUnTypedInt)));
        var _x37:GoUInt8 = (((_x36 : GoUInt8)) & ((255 : GoUInt8)));
        var _x38:GoUInt64 = (_x36 >> ((8 : GoUnTypedInt)));
        var _x39:GoUInt8 = (((_x38 : GoUInt8)) & ((255 : GoUInt8)));
        var _x40:GoUInt64 = (_x38 >> ((8 : GoUnTypedInt)));
        var _x41:GoUInt8 = (((_x40 : GoUInt8)) & ((255 : GoUInt8)));
        var _x42:GoUInt64 = (_x40 >> ((8 : GoUnTypedInt)));
        var _x43:GoUInt8 = (((_x42 : GoUInt8)) & ((255 : GoUInt8)));
        var _x44:GoUInt64 = (_x42 >> ((8 : GoUnTypedInt)));
        var _x45:GoUInt8 = (((_x44 : GoUInt8)) & ((255 : GoUInt8)));
        var _x46:GoUInt64 = (_x44 >> ((8 : GoUnTypedInt)));
        var _x47:GoUInt8 = (((_x46 : GoUInt8)) & ((255 : GoUInt8)));
        var _x48:GoUInt8 = (((_x46 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x49:GoUInt8 = (((_x3 : GoUInt8)) & ((255 : GoUInt8)));
        var _x50:GoUInt64 = (_x3 >> ((8 : GoUnTypedInt)));
        var _x51:GoUInt8 = (((_x50 : GoUInt8)) & ((255 : GoUInt8)));
        var _x52:GoUInt64 = (_x50 >> ((8 : GoUnTypedInt)));
        var _x53:GoUInt8 = (((_x52 : GoUInt8)) & ((255 : GoUInt8)));
        var _x54:GoUInt64 = (_x52 >> ((8 : GoUnTypedInt)));
        var _x55:GoUInt8 = (((_x54 : GoUInt8)) & ((255 : GoUInt8)));
        var _x56:GoUInt64 = (_x54 >> ((8 : GoUnTypedInt)));
        var _x57:GoUInt8 = (((_x56 : GoUInt8)) & ((255 : GoUInt8)));
        var _x58:GoUInt64 = (_x56 >> ((8 : GoUnTypedInt)));
        var _x59:GoUInt8 = (((_x58 : GoUInt8)) & ((255 : GoUInt8)));
        var _x60:GoUInt64 = (_x58 >> ((8 : GoUnTypedInt)));
        var _x61:GoUInt8 = (((_x60 : GoUInt8)) & ((255 : GoUInt8)));
        var _x62:GoUInt8 = (((_x60 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x63:GoUInt8 = (((_x2 : GoUInt8)) & ((255 : GoUInt8)));
        var _x64:GoUInt64 = (_x2 >> ((8 : GoUnTypedInt)));
        var _x65:GoUInt8 = (((_x64 : GoUInt8)) & ((255 : GoUInt8)));
        var _x66:GoUInt64 = (_x64 >> ((8 : GoUnTypedInt)));
        var _x67:GoUInt8 = (((_x66 : GoUInt8)) & ((255 : GoUInt8)));
        var _x68:GoUInt64 = (_x66 >> ((8 : GoUnTypedInt)));
        var _x69:GoUInt8 = (((_x68 : GoUInt8)) & ((255 : GoUInt8)));
        var _x70:GoUInt64 = (_x68 >> ((8 : GoUnTypedInt)));
        var _x71:GoUInt8 = (((_x70 : GoUInt8)) & ((255 : GoUInt8)));
        var _x72:GoUInt64 = (_x70 >> ((8 : GoUnTypedInt)));
        var _x73:GoUInt8 = (((_x72 : GoUInt8)) & ((255 : GoUInt8)));
        var _x74:GoUInt64 = (_x72 >> ((8 : GoUnTypedInt)));
        var _x75:GoUInt8 = (((_x74 : GoUInt8)) & ((255 : GoUInt8)));
        var _x76:GoUInt8 = (((_x74 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x77:GoUInt8 = (((_x1 : GoUInt8)) & ((255 : GoUInt8)));
        var _x78:GoUInt64 = (_x1 >> ((8 : GoUnTypedInt)));
        var _x79:GoUInt8 = (((_x78 : GoUInt8)) & ((255 : GoUInt8)));
        var _x80:GoUInt64 = (_x78 >> ((8 : GoUnTypedInt)));
        var _x81:GoUInt8 = (((_x80 : GoUInt8)) & ((255 : GoUInt8)));
        var _x82:GoUInt64 = (_x80 >> ((8 : GoUnTypedInt)));
        var _x83:GoUInt8 = (((_x82 : GoUInt8)) & ((255 : GoUInt8)));
        var _x84:GoUInt64 = (_x82 >> ((8 : GoUnTypedInt)));
        var _x85:GoUInt8 = (((_x84 : GoUInt8)) & ((255 : GoUInt8)));
        var _x86:GoUInt64 = (_x84 >> ((8 : GoUnTypedInt)));
        var _x87:GoUInt8 = (((_x86 : GoUInt8)) & ((255 : GoUInt8)));
        var _x88:GoUInt64 = (_x86 >> ((8 : GoUnTypedInt)));
        var _x89:GoUInt8 = (((_x88 : GoUInt8)) & ((255 : GoUInt8)));
        var _x90:GoUInt8 = (((_x88 >> ((8 : GoUnTypedInt))) : GoUInt8));
        if (_out1 != null) _out1[((0 : GoInt))] = _x7;
        if (_out1 != null) _out1[((1 : GoInt))] = _x9;
        if (_out1 != null) _out1[((2 : GoInt))] = _x11;
        if (_out1 != null) _out1[((3 : GoInt))] = _x13;
        if (_out1 != null) _out1[((4 : GoInt))] = _x15;
        if (_out1 != null) _out1[((5 : GoInt))] = _x17;
        if (_out1 != null) _out1[((6 : GoInt))] = _x19;
        if (_out1 != null) _out1[((7 : GoInt))] = _x20;
        if (_out1 != null) _out1[((8 : GoInt))] = _x21;
        if (_out1 != null) _out1[((9 : GoInt))] = _x23;
        if (_out1 != null) _out1[((10 : GoInt))] = _x25;
        if (_out1 != null) _out1[((11 : GoInt))] = _x27;
        if (_out1 != null) _out1[((12 : GoInt))] = _x29;
        if (_out1 != null) _out1[((13 : GoInt))] = _x31;
        if (_out1 != null) _out1[((14 : GoInt))] = _x33;
        if (_out1 != null) _out1[((15 : GoInt))] = _x34;
        if (_out1 != null) _out1[((16 : GoInt))] = _x35;
        if (_out1 != null) _out1[((17 : GoInt))] = _x37;
        if (_out1 != null) _out1[((18 : GoInt))] = _x39;
        if (_out1 != null) _out1[((19 : GoInt))] = _x41;
        if (_out1 != null) _out1[((20 : GoInt))] = _x43;
        if (_out1 != null) _out1[((21 : GoInt))] = _x45;
        if (_out1 != null) _out1[((22 : GoInt))] = _x47;
        if (_out1 != null) _out1[((23 : GoInt))] = _x48;
        if (_out1 != null) _out1[((24 : GoInt))] = _x49;
        if (_out1 != null) _out1[((25 : GoInt))] = _x51;
        if (_out1 != null) _out1[((26 : GoInt))] = _x53;
        if (_out1 != null) _out1[((27 : GoInt))] = _x55;
        if (_out1 != null) _out1[((28 : GoInt))] = _x57;
        if (_out1 != null) _out1[((29 : GoInt))] = _x59;
        if (_out1 != null) _out1[((30 : GoInt))] = _x61;
        if (_out1 != null) _out1[((31 : GoInt))] = _x62;
        if (_out1 != null) _out1[((32 : GoInt))] = _x63;
        if (_out1 != null) _out1[((33 : GoInt))] = _x65;
        if (_out1 != null) _out1[((34 : GoInt))] = _x67;
        if (_out1 != null) _out1[((35 : GoInt))] = _x69;
        if (_out1 != null) _out1[((36 : GoInt))] = _x71;
        if (_out1 != null) _out1[((37 : GoInt))] = _x73;
        if (_out1 != null) _out1[((38 : GoInt))] = _x75;
        if (_out1 != null) _out1[((39 : GoInt))] = _x76;
        if (_out1 != null) _out1[((40 : GoInt))] = _x77;
        if (_out1 != null) _out1[((41 : GoInt))] = _x79;
        if (_out1 != null) _out1[((42 : GoInt))] = _x81;
        if (_out1 != null) _out1[((43 : GoInt))] = _x83;
        if (_out1 != null) _out1[((44 : GoInt))] = _x85;
        if (_out1 != null) _out1[((45 : GoInt))] = _x87;
        if (_out1 != null) _out1[((46 : GoInt))] = _x89;
        if (_out1 != null) _out1[((47 : GoInt))] = _x90;
    }
/**
    // p384FromBytes deserializes a field element NOT in the Montgomery domain from bytes in little-endian order.
    //
    // Preconditions:
    //   0 ≤ bytes_eval arg1 < m
    // Postconditions:
    //   eval out1 mod m = bytes_eval arg1 mod m
    //   0 ≤ eval out1 < m
    //
    // Input Bounds:
    //   arg1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
**/
function _p384FromBytes(_out1:GoArray<GoUInt64>, _arg1:GoArray<GoUInt8>):Void {
        var _x1:GoUInt64 = ((((_arg1 != null ? _arg1[((47 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x2:GoUInt64 = ((((_arg1 != null ? _arg1[((46 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x3:GoUInt64 = ((((_arg1 != null ? _arg1[((45 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x4:GoUInt64 = ((((_arg1 != null ? _arg1[((44 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x5:GoUInt64 = ((((_arg1 != null ? _arg1[((43 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x6:GoUInt64 = ((((_arg1 != null ? _arg1[((42 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x7:GoUInt64 = ((((_arg1 != null ? _arg1[((41 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x8:GoUInt8 = (_arg1 != null ? _arg1[((40 : GoInt))] : ((0 : GoUInt8)));
        var _x9:GoUInt64 = ((((_arg1 != null ? _arg1[((39 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x10:GoUInt64 = ((((_arg1 != null ? _arg1[((38 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x11:GoUInt64 = ((((_arg1 != null ? _arg1[((37 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x12:GoUInt64 = ((((_arg1 != null ? _arg1[((36 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x13:GoUInt64 = ((((_arg1 != null ? _arg1[((35 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x14:GoUInt64 = ((((_arg1 != null ? _arg1[((34 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x15:GoUInt64 = ((((_arg1 != null ? _arg1[((33 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x16:GoUInt8 = (_arg1 != null ? _arg1[((32 : GoInt))] : ((0 : GoUInt8)));
        var _x17:GoUInt64 = ((((_arg1 != null ? _arg1[((31 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x18:GoUInt64 = ((((_arg1 != null ? _arg1[((30 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x19:GoUInt64 = ((((_arg1 != null ? _arg1[((29 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x20:GoUInt64 = ((((_arg1 != null ? _arg1[((28 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x21:GoUInt64 = ((((_arg1 != null ? _arg1[((27 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x22:GoUInt64 = ((((_arg1 != null ? _arg1[((26 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x23:GoUInt64 = ((((_arg1 != null ? _arg1[((25 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x24:GoUInt8 = (_arg1 != null ? _arg1[((24 : GoInt))] : ((0 : GoUInt8)));
        var _x25:GoUInt64 = ((((_arg1 != null ? _arg1[((23 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x26:GoUInt64 = ((((_arg1 != null ? _arg1[((22 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x27:GoUInt64 = ((((_arg1 != null ? _arg1[((21 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x28:GoUInt64 = ((((_arg1 != null ? _arg1[((20 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x29:GoUInt64 = ((((_arg1 != null ? _arg1[((19 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x30:GoUInt64 = ((((_arg1 != null ? _arg1[((18 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x31:GoUInt64 = ((((_arg1 != null ? _arg1[((17 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x32:GoUInt8 = (_arg1 != null ? _arg1[((16 : GoInt))] : ((0 : GoUInt8)));
        var _x33:GoUInt64 = ((((_arg1 != null ? _arg1[((15 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x34:GoUInt64 = ((((_arg1 != null ? _arg1[((14 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x35:GoUInt64 = ((((_arg1 != null ? _arg1[((13 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x36:GoUInt64 = ((((_arg1 != null ? _arg1[((12 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x37:GoUInt64 = ((((_arg1 != null ? _arg1[((11 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x38:GoUInt64 = ((((_arg1 != null ? _arg1[((10 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x39:GoUInt64 = ((((_arg1 != null ? _arg1[((9 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x40:GoUInt8 = (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt8)));
        var _x41:GoUInt64 = ((((_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x42:GoUInt64 = ((((_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x43:GoUInt64 = ((((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x44:GoUInt64 = ((((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x45:GoUInt64 = ((((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x46:GoUInt64 = ((((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x47:GoUInt64 = ((((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x48:GoUInt8 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt8)));
        var _x49:GoUInt64 = (_x47 + ((_x48 : GoUInt64)));
        var _x50:GoUInt64 = (_x46 + _x49);
        var _x51:GoUInt64 = (_x45 + _x50);
        var _x52:GoUInt64 = (_x44 + _x51);
        var _x53:GoUInt64 = (_x43 + _x52);
        var _x54:GoUInt64 = (_x42 + _x53);
        var _x55:GoUInt64 = (_x41 + _x54);
        var _x56:GoUInt64 = (_x39 + ((_x40 : GoUInt64)));
        var _x57:GoUInt64 = (_x38 + _x56);
        var _x58:GoUInt64 = (_x37 + _x57);
        var _x59:GoUInt64 = (_x36 + _x58);
        var _x60:GoUInt64 = (_x35 + _x59);
        var _x61:GoUInt64 = (_x34 + _x60);
        var _x62:GoUInt64 = (_x33 + _x61);
        var _x63:GoUInt64 = (_x31 + ((_x32 : GoUInt64)));
        var _x64:GoUInt64 = (_x30 + _x63);
        var _x65:GoUInt64 = (_x29 + _x64);
        var _x66:GoUInt64 = (_x28 + _x65);
        var _x67:GoUInt64 = (_x27 + _x66);
        var _x68:GoUInt64 = (_x26 + _x67);
        var _x69:GoUInt64 = (_x25 + _x68);
        var _x70:GoUInt64 = (_x23 + ((_x24 : GoUInt64)));
        var _x71:GoUInt64 = (_x22 + _x70);
        var _x72:GoUInt64 = (_x21 + _x71);
        var _x73:GoUInt64 = (_x20 + _x72);
        var _x74:GoUInt64 = (_x19 + _x73);
        var _x75:GoUInt64 = (_x18 + _x74);
        var _x76:GoUInt64 = (_x17 + _x75);
        var _x77:GoUInt64 = (_x15 + ((_x16 : GoUInt64)));
        var _x78:GoUInt64 = (_x14 + _x77);
        var _x79:GoUInt64 = (_x13 + _x78);
        var _x80:GoUInt64 = (_x12 + _x79);
        var _x81:GoUInt64 = (_x11 + _x80);
        var _x82:GoUInt64 = (_x10 + _x81);
        var _x83:GoUInt64 = (_x9 + _x82);
        var _x84:GoUInt64 = (_x7 + ((_x8 : GoUInt64)));
        var _x85:GoUInt64 = (_x6 + _x84);
        var _x86:GoUInt64 = (_x5 + _x85);
        var _x87:GoUInt64 = (_x4 + _x86);
        var _x88:GoUInt64 = (_x3 + _x87);
        var _x89:GoUInt64 = (_x2 + _x88);
        var _x90:GoUInt64 = (_x1 + _x89);
        if (_out1 != null) _out1[((0 : GoInt))] = _x55;
        if (_out1 != null) _out1[((1 : GoInt))] = _x62;
        if (_out1 != null) _out1[((2 : GoInt))] = _x69;
        if (_out1 != null) _out1[((3 : GoInt))] = _x76;
        if (_out1 != null) _out1[((4 : GoInt))] = _x83;
        if (_out1 != null) _out1[((5 : GoInt))] = _x90;
    }
function _p521InvertEndianness(_v:Slice<GoByte>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((_v != null ? _v.length : ((0 : GoInt))) / ((2 : GoInt))), _i++, {
                {
                    final __tmp__0 = (_v != null ? _v[((_v != null ? _v.length : ((0 : GoInt))) - ((1 : GoInt))) - _i] : ((0 : GoUInt8)));
                    final __tmp__1 = (_v != null ? _v[_i] : ((0 : GoUInt8)));
                    if (_v != null) _v[_i] = __tmp__0;
                    if (_v != null) _v[((_v != null ? _v.length : ((0 : GoInt))) - ((1 : GoInt))) - _i] = __tmp__1;
                };
            });
        };
    }
/**
    // p521CmovznzU64 is a single-word conditional move.
    //
    // Postconditions:
    //   out1 = (if arg1 = 0 then arg2 else arg3)
    //
    // Input Bounds:
    //   arg1: [0x0 ~> 0x1]
    //   arg2: [0x0 ~> 0xffffffffffffffff]
    //   arg3: [0x0 ~> 0xffffffffffffffff]
    // Output Bounds:
    //   out1: [0x0 ~> 0xffffffffffffffff]
**/
function _p521CmovznzU64(_out1:Pointer<GoUInt64>, _arg1:T_p521Uint1, _arg2:GoUInt64, _arg3:GoUInt64):Void {
        var _x1:GoUInt64 = (((_arg1 : GoUInt64)) * (("18446744073709551615" : GoUInt64)));
        var _x2:GoUInt64 = ((_x1 & _arg3) | (((-1 ^ _x1)) & _arg2));
        _out1.value = _x2;
    }
/**
    // p521Mul multiplies two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) * eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521Mul(_out1:T_p521MontgomeryDomainFieldElement, _arg1:T_p521MontgomeryDomainFieldElement, _arg2:T_p521MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt64 = (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64)));
        var _x8:GoUInt64 = (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64)));
        var _x9:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        var _x11:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:GoUInt64 = ((0 : GoUInt64));
        var _x13:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:GoUInt64 = ((0 : GoUInt64));
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        var _x17:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x17 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x19 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x21 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x25 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x27 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x27, _x24, ((((0 : GoUInt64)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x25, _x22, ((((_x29 : T_p521Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x23, _x20, ((((_x31 : T_p521Uint1)) : GoUInt64)));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x21, _x18, ((((_x33 : T_p521Uint1)) : GoUInt64)));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x16, ((((_x35 : T_p521Uint1)) : GoUInt64)));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x14, ((((_x37 : T_p521Uint1)) : GoUInt64)));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:GoUInt64 = ((0 : GoUInt64));
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x12, ((((_x39 : T_p521Uint1)) : GoUInt64)));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x10, ((((_x41 : T_p521Uint1)) : GoUInt64)));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:GoUInt64 = (((((_x43 : T_p521Uint1)) : GoUInt64)) + _x11);
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, ((511 : GoUInt64)));
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:GoUInt64 = ((0 : GoUInt64));
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x48 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x50 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x52 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x54 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x56 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x58 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x60 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        var _x62:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x62 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x62, _x59, ((((0 : GoUInt64)) : GoUInt64)));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x60, _x57, ((((_x64 : T_p521Uint1)) : GoUInt64)));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x58, _x55, ((((_x66 : T_p521Uint1)) : GoUInt64)));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x56, _x53, ((((_x68 : T_p521Uint1)) : GoUInt64)));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x54, _x51, ((((_x70 : T_p521Uint1)) : GoUInt64)));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:GoUInt64 = ((0 : GoUInt64));
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x52, _x49, ((((_x72 : T_p521Uint1)) : GoUInt64)));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, _x47, ((((_x74 : T_p521Uint1)) : GoUInt64)));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, _x45, ((((_x76 : T_p521Uint1)) : GoUInt64)));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79:GoUInt64 = (((((_x78 : T_p521Uint1)) : GoUInt64)) + _x46);
        var _x81:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x26, _x61, ((((0 : GoUInt64)) : GoUInt64)));
            _x81 = __tmp__._1;
        };
        var _x82:GoUInt64 = ((0 : GoUInt64));
        var _x83:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x28, _x63, ((((_x81 : T_p521Uint1)) : GoUInt64)));
            _x82 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x84:GoUInt64 = ((0 : GoUInt64));
        var _x85:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x30, _x65, ((((_x83 : T_p521Uint1)) : GoUInt64)));
            _x84 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x86:GoUInt64 = ((0 : GoUInt64));
        var _x87:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x32, _x67, ((((_x85 : T_p521Uint1)) : GoUInt64)));
            _x86 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x88:GoUInt64 = ((0 : GoUInt64));
        var _x89:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x34, _x69, ((((_x87 : T_p521Uint1)) : GoUInt64)));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:GoUInt64 = ((0 : GoUInt64));
        var _x91:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x36, _x71, ((((_x89 : T_p521Uint1)) : GoUInt64)));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x38, _x73, ((((_x91 : T_p521Uint1)) : GoUInt64)));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x40, _x75, ((((_x93 : T_p521Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x42, _x77, ((((_x95 : T_p521Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x44, _x79, ((((_x97 : T_p521Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x101 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x103 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x105 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x106:GoUInt64 = ((0 : GoUInt64));
        var _x107:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x107 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x108:GoUInt64 = ((0 : GoUInt64));
        var _x109:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        var _x111:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:GoUInt64 = ((0 : GoUInt64));
        var _x113:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        var _x115:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x117 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x118:GoUInt64 = ((0 : GoUInt64));
        var _x119:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, _x114, ((((0 : GoUInt64)) : GoUInt64)));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:GoUInt64 = ((0 : GoUInt64));
        var _x121:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x112, ((((_x119 : T_p521Uint1)) : GoUInt64)));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:GoUInt64 = ((0 : GoUInt64));
        var _x123:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x110, ((((_x121 : T_p521Uint1)) : GoUInt64)));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:GoUInt64 = ((0 : GoUInt64));
        var _x125:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x108, ((((_x123 : T_p521Uint1)) : GoUInt64)));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:GoUInt64 = ((0 : GoUInt64));
        var _x127:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x109, _x106, ((((_x125 : T_p521Uint1)) : GoUInt64)));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:GoUInt64 = ((0 : GoUInt64));
        var _x129:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x107, _x104, ((((_x127 : T_p521Uint1)) : GoUInt64)));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:GoUInt64 = ((0 : GoUInt64));
        var _x131:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x105, _x102, ((((_x129 : T_p521Uint1)) : GoUInt64)));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:GoUInt64 = ((0 : GoUInt64));
        var _x133:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x103, _x100, ((((_x131 : T_p521Uint1)) : GoUInt64)));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:GoUInt64 = (((((_x133 : T_p521Uint1)) : GoUInt64)) + _x101);
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x82, _x116, ((((0 : GoUInt64)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x84, _x118, ((((_x136 : T_p521Uint1)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x86, _x120, ((((_x138 : T_p521Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x88, _x122, ((((_x140 : T_p521Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x90, _x124, ((((_x142 : T_p521Uint1)) : GoUInt64)));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x92, _x126, ((((_x144 : T_p521Uint1)) : GoUInt64)));
            _x145 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x94, _x128, ((((_x146 : T_p521Uint1)) : GoUInt64)));
            _x147 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x96, _x130, ((((_x148 : T_p521Uint1)) : GoUInt64)));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x98, _x132, ((((_x150 : T_p521Uint1)) : GoUInt64)));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x99 : T_p521Uint1)) : GoUInt64)), _x134, ((((_x152 : T_p521Uint1)) : GoUInt64)));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:GoUInt64 = ((0 : GoUInt64));
        var _x156:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, ((511 : GoUInt64)));
            _x156 = __tmp__._0;
            _x155 = __tmp__._1;
        };
        var _x157:GoUInt64 = ((0 : GoUInt64));
        var _x158:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:GoUInt64 = ((0 : GoUInt64));
        var _x160:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:GoUInt64 = ((0 : GoUInt64));
        var _x162:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x162 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x163:GoUInt64 = ((0 : GoUInt64));
        var _x164:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x164 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x165:GoUInt64 = ((0 : GoUInt64));
        var _x166:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x166 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x167:GoUInt64 = ((0 : GoUInt64));
        var _x168:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x168 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x169:GoUInt64 = ((0 : GoUInt64));
        var _x170:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x170 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x171:GoUInt64 = ((0 : GoUInt64));
        var _x172:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x172 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        var _x174:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x172, _x169, ((((0 : GoUInt64)) : GoUInt64)));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        var _x176:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x170, _x167, ((((_x174 : T_p521Uint1)) : GoUInt64)));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:GoUInt64 = ((0 : GoUInt64));
        var _x178:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x168, _x165, ((((_x176 : T_p521Uint1)) : GoUInt64)));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x179:GoUInt64 = ((0 : GoUInt64));
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x166, _x163, ((((_x178 : T_p521Uint1)) : GoUInt64)));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x164, _x161, ((((_x180 : T_p521Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        var _x184:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x162, _x159, ((((_x182 : T_p521Uint1)) : GoUInt64)));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x160, _x157, ((((_x184 : T_p521Uint1)) : GoUInt64)));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x158, _x155, ((((_x186 : T_p521Uint1)) : GoUInt64)));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:GoUInt64 = (((((_x188 : T_p521Uint1)) : GoUInt64)) + _x156);
        var _x191:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x135, _x171, ((((0 : GoUInt64)) : GoUInt64)));
            _x191 = __tmp__._1;
        };
        var _x192:GoUInt64 = ((0 : GoUInt64));
        var _x193:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x137, _x173, ((((_x191 : T_p521Uint1)) : GoUInt64)));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:GoUInt64 = ((0 : GoUInt64));
        var _x195:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x139, _x175, ((((_x193 : T_p521Uint1)) : GoUInt64)));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:GoUInt64 = ((0 : GoUInt64));
        var _x197:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x177, ((((_x195 : T_p521Uint1)) : GoUInt64)));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:GoUInt64 = ((0 : GoUInt64));
        var _x199:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x179, ((((_x197 : T_p521Uint1)) : GoUInt64)));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:GoUInt64 = ((0 : GoUInt64));
        var _x201:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x145, _x181, ((((_x199 : T_p521Uint1)) : GoUInt64)));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:GoUInt64 = ((0 : GoUInt64));
        var _x203:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x147, _x183, ((((_x201 : T_p521Uint1)) : GoUInt64)));
            _x202 = __tmp__._0;
            _x203 = __tmp__._1;
        };
        var _x204:GoUInt64 = ((0 : GoUInt64));
        var _x205:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x149, _x185, ((((_x203 : T_p521Uint1)) : GoUInt64)));
            _x204 = __tmp__._0;
            _x205 = __tmp__._1;
        };
        var _x206:GoUInt64 = ((0 : GoUInt64));
        var _x207:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x151, _x187, ((((_x205 : T_p521Uint1)) : GoUInt64)));
            _x206 = __tmp__._0;
            _x207 = __tmp__._1;
        };
        var _x208:GoUInt64 = ((0 : GoUInt64));
        var _x209:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x153, _x189, ((((_x207 : T_p521Uint1)) : GoUInt64)));
            _x208 = __tmp__._0;
            _x209 = __tmp__._1;
        };
        var _x210:GoUInt64 = (((((_x209 : T_p521Uint1)) : GoUInt64)) + ((((_x154 : T_p521Uint1)) : GoUInt64)));
        var _x211:GoUInt64 = ((0 : GoUInt64));
        var _x212:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x212 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x213:GoUInt64 = ((0 : GoUInt64));
        var _x214:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x214 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x215:GoUInt64 = ((0 : GoUInt64));
        var _x216:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x216 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x217:GoUInt64 = ((0 : GoUInt64));
        var _x218:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x218 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x219:GoUInt64 = ((0 : GoUInt64));
        var _x220:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x220 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x221:GoUInt64 = ((0 : GoUInt64));
        var _x222:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x222 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x223:GoUInt64 = ((0 : GoUInt64));
        var _x224:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:GoUInt64 = ((0 : GoUInt64));
        var _x226:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        var _x228:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:GoUInt64 = ((0 : GoUInt64));
        var _x230:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, _x225, ((((0 : GoUInt64)) : GoUInt64)));
            _x229 = __tmp__._0;
            _x230 = __tmp__._1;
        };
        var _x231:GoUInt64 = ((0 : GoUInt64));
        var _x232:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x226, _x223, ((((_x230 : T_p521Uint1)) : GoUInt64)));
            _x231 = __tmp__._0;
            _x232 = __tmp__._1;
        };
        var _x233:GoUInt64 = ((0 : GoUInt64));
        var _x234:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x224, _x221, ((((_x232 : T_p521Uint1)) : GoUInt64)));
            _x233 = __tmp__._0;
            _x234 = __tmp__._1;
        };
        var _x235:GoUInt64 = ((0 : GoUInt64));
        var _x236:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x222, _x219, ((((_x234 : T_p521Uint1)) : GoUInt64)));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:GoUInt64 = ((0 : GoUInt64));
        var _x238:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x220, _x217, ((((_x236 : T_p521Uint1)) : GoUInt64)));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:GoUInt64 = ((0 : GoUInt64));
        var _x240:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x218, _x215, ((((_x238 : T_p521Uint1)) : GoUInt64)));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        var _x242:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x216, _x213, ((((_x240 : T_p521Uint1)) : GoUInt64)));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:GoUInt64 = ((0 : GoUInt64));
        var _x244:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x214, _x211, ((((_x242 : T_p521Uint1)) : GoUInt64)));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x245:GoUInt64 = (((((_x244 : T_p521Uint1)) : GoUInt64)) + _x212);
        var _x246:GoUInt64 = ((0 : GoUInt64));
        var _x247:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x192, _x227, ((((0 : GoUInt64)) : GoUInt64)));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:GoUInt64 = ((0 : GoUInt64));
        var _x249:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x229, ((((_x247 : T_p521Uint1)) : GoUInt64)));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:GoUInt64 = ((0 : GoUInt64));
        var _x251:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x231, ((((_x249 : T_p521Uint1)) : GoUInt64)));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:GoUInt64 = ((0 : GoUInt64));
        var _x253:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x198, _x233, ((((_x251 : T_p521Uint1)) : GoUInt64)));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:GoUInt64 = ((0 : GoUInt64));
        var _x255:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x200, _x235, ((((_x253 : T_p521Uint1)) : GoUInt64)));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:GoUInt64 = ((0 : GoUInt64));
        var _x257:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x202, _x237, ((((_x255 : T_p521Uint1)) : GoUInt64)));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:GoUInt64 = ((0 : GoUInt64));
        var _x259:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x204, _x239, ((((_x257 : T_p521Uint1)) : GoUInt64)));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:GoUInt64 = ((0 : GoUInt64));
        var _x261:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x206, _x241, ((((_x259 : T_p521Uint1)) : GoUInt64)));
            _x260 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x262:GoUInt64 = ((0 : GoUInt64));
        var _x263:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x208, _x243, ((((_x261 : T_p521Uint1)) : GoUInt64)));
            _x262 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x264:GoUInt64 = ((0 : GoUInt64));
        var _x265:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x210, _x245, ((((_x263 : T_p521Uint1)) : GoUInt64)));
            _x264 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x266:GoUInt64 = ((0 : GoUInt64));
        var _x267:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, ((511 : GoUInt64)));
            _x267 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x268:GoUInt64 = ((0 : GoUInt64));
        var _x269:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x269 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x270:GoUInt64 = ((0 : GoUInt64));
        var _x271:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x271 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x272:GoUInt64 = ((0 : GoUInt64));
        var _x273:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x273 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x274:GoUInt64 = ((0 : GoUInt64));
        var _x275:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x275 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x276:GoUInt64 = ((0 : GoUInt64));
        var _x277:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x277 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x278:GoUInt64 = ((0 : GoUInt64));
        var _x279:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x279 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x280:GoUInt64 = ((0 : GoUInt64));
        var _x281:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x281 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x282:GoUInt64 = ((0 : GoUInt64));
        var _x283:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x283 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x284:GoUInt64 = ((0 : GoUInt64));
        var _x285:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x283, _x280, ((((0 : GoUInt64)) : GoUInt64)));
            _x284 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x286:GoUInt64 = ((0 : GoUInt64));
        var _x287:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x281, _x278, ((((_x285 : T_p521Uint1)) : GoUInt64)));
            _x286 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x288:GoUInt64 = ((0 : GoUInt64));
        var _x289:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x279, _x276, ((((_x287 : T_p521Uint1)) : GoUInt64)));
            _x288 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x290:GoUInt64 = ((0 : GoUInt64));
        var _x291:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x277, _x274, ((((_x289 : T_p521Uint1)) : GoUInt64)));
            _x290 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x292:GoUInt64 = ((0 : GoUInt64));
        var _x293:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x275, _x272, ((((_x291 : T_p521Uint1)) : GoUInt64)));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:GoUInt64 = ((0 : GoUInt64));
        var _x295:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x273, _x270, ((((_x293 : T_p521Uint1)) : GoUInt64)));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:GoUInt64 = ((0 : GoUInt64));
        var _x297:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x271, _x268, ((((_x295 : T_p521Uint1)) : GoUInt64)));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:GoUInt64 = ((0 : GoUInt64));
        var _x299:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x269, _x266, ((((_x297 : T_p521Uint1)) : GoUInt64)));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300:GoUInt64 = (((((_x299 : T_p521Uint1)) : GoUInt64)) + _x267);
        var _x302:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x246, _x282, ((((0 : GoUInt64)) : GoUInt64)));
            _x302 = __tmp__._1;
        };
        var _x303:GoUInt64 = ((0 : GoUInt64));
        var _x304:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x248, _x284, ((((_x302 : T_p521Uint1)) : GoUInt64)));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:GoUInt64 = ((0 : GoUInt64));
        var _x306:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x250, _x286, ((((_x304 : T_p521Uint1)) : GoUInt64)));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:GoUInt64 = ((0 : GoUInt64));
        var _x308:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x252, _x288, ((((_x306 : T_p521Uint1)) : GoUInt64)));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:GoUInt64 = ((0 : GoUInt64));
        var _x310:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x254, _x290, ((((_x308 : T_p521Uint1)) : GoUInt64)));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x311:GoUInt64 = ((0 : GoUInt64));
        var _x312:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x256, _x292, ((((_x310 : T_p521Uint1)) : GoUInt64)));
            _x311 = __tmp__._0;
            _x312 = __tmp__._1;
        };
        var _x313:GoUInt64 = ((0 : GoUInt64));
        var _x314:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x258, _x294, ((((_x312 : T_p521Uint1)) : GoUInt64)));
            _x313 = __tmp__._0;
            _x314 = __tmp__._1;
        };
        var _x315:GoUInt64 = ((0 : GoUInt64));
        var _x316:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x260, _x296, ((((_x314 : T_p521Uint1)) : GoUInt64)));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:GoUInt64 = ((0 : GoUInt64));
        var _x318:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x262, _x298, ((((_x316 : T_p521Uint1)) : GoUInt64)));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:GoUInt64 = ((0 : GoUInt64));
        var _x320:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x264, _x300, ((((_x318 : T_p521Uint1)) : GoUInt64)));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321:GoUInt64 = (((((_x320 : T_p521Uint1)) : GoUInt64)) + ((((_x265 : T_p521Uint1)) : GoUInt64)));
        var _x322:GoUInt64 = ((0 : GoUInt64));
        var _x323:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x323 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x324:GoUInt64 = ((0 : GoUInt64));
        var _x325:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x325 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x326:GoUInt64 = ((0 : GoUInt64));
        var _x327:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x327 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x328:GoUInt64 = ((0 : GoUInt64));
        var _x329:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x329 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x330:GoUInt64 = ((0 : GoUInt64));
        var _x331:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x331 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x332:GoUInt64 = ((0 : GoUInt64));
        var _x333:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x333 = __tmp__._0;
            _x332 = __tmp__._1;
        };
        var _x334:GoUInt64 = ((0 : GoUInt64));
        var _x335:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x335 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x336:GoUInt64 = ((0 : GoUInt64));
        var _x337:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x337 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x338:GoUInt64 = ((0 : GoUInt64));
        var _x339:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x339 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x340:GoUInt64 = ((0 : GoUInt64));
        var _x341:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x339, _x336, ((((0 : GoUInt64)) : GoUInt64)));
            _x340 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x342:GoUInt64 = ((0 : GoUInt64));
        var _x343:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x337, _x334, ((((_x341 : T_p521Uint1)) : GoUInt64)));
            _x342 = __tmp__._0;
            _x343 = __tmp__._1;
        };
        var _x344:GoUInt64 = ((0 : GoUInt64));
        var _x345:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x335, _x332, ((((_x343 : T_p521Uint1)) : GoUInt64)));
            _x344 = __tmp__._0;
            _x345 = __tmp__._1;
        };
        var _x346:GoUInt64 = ((0 : GoUInt64));
        var _x347:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x333, _x330, ((((_x345 : T_p521Uint1)) : GoUInt64)));
            _x346 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x348:GoUInt64 = ((0 : GoUInt64));
        var _x349:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x331, _x328, ((((_x347 : T_p521Uint1)) : GoUInt64)));
            _x348 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x350:GoUInt64 = ((0 : GoUInt64));
        var _x351:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x329, _x326, ((((_x349 : T_p521Uint1)) : GoUInt64)));
            _x350 = __tmp__._0;
            _x351 = __tmp__._1;
        };
        var _x352:GoUInt64 = ((0 : GoUInt64));
        var _x353:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x327, _x324, ((((_x351 : T_p521Uint1)) : GoUInt64)));
            _x352 = __tmp__._0;
            _x353 = __tmp__._1;
        };
        var _x354:GoUInt64 = ((0 : GoUInt64));
        var _x355:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x325, _x322, ((((_x353 : T_p521Uint1)) : GoUInt64)));
            _x354 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x356:GoUInt64 = (((((_x355 : T_p521Uint1)) : GoUInt64)) + _x323);
        var _x357:GoUInt64 = ((0 : GoUInt64));
        var _x358:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x303, _x338, ((((0 : GoUInt64)) : GoUInt64)));
            _x357 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x359:GoUInt64 = ((0 : GoUInt64));
        var _x360:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x305, _x340, ((((_x358 : T_p521Uint1)) : GoUInt64)));
            _x359 = __tmp__._0;
            _x360 = __tmp__._1;
        };
        var _x361:GoUInt64 = ((0 : GoUInt64));
        var _x362:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x307, _x342, ((((_x360 : T_p521Uint1)) : GoUInt64)));
            _x361 = __tmp__._0;
            _x362 = __tmp__._1;
        };
        var _x363:GoUInt64 = ((0 : GoUInt64));
        var _x364:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x309, _x344, ((((_x362 : T_p521Uint1)) : GoUInt64)));
            _x363 = __tmp__._0;
            _x364 = __tmp__._1;
        };
        var _x365:GoUInt64 = ((0 : GoUInt64));
        var _x366:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x311, _x346, ((((_x364 : T_p521Uint1)) : GoUInt64)));
            _x365 = __tmp__._0;
            _x366 = __tmp__._1;
        };
        var _x367:GoUInt64 = ((0 : GoUInt64));
        var _x368:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x313, _x348, ((((_x366 : T_p521Uint1)) : GoUInt64)));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:GoUInt64 = ((0 : GoUInt64));
        var _x370:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x315, _x350, ((((_x368 : T_p521Uint1)) : GoUInt64)));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:GoUInt64 = ((0 : GoUInt64));
        var _x372:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x317, _x352, ((((_x370 : T_p521Uint1)) : GoUInt64)));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:GoUInt64 = ((0 : GoUInt64));
        var _x374:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x319, _x354, ((((_x372 : T_p521Uint1)) : GoUInt64)));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:GoUInt64 = ((0 : GoUInt64));
        var _x376:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x321, _x356, ((((_x374 : T_p521Uint1)) : GoUInt64)));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x377:GoUInt64 = ((0 : GoUInt64));
        var _x378:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, ((511 : GoUInt64)));
            _x378 = __tmp__._0;
            _x377 = __tmp__._1;
        };
        var _x379:GoUInt64 = ((0 : GoUInt64));
        var _x380:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x380 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x381:GoUInt64 = ((0 : GoUInt64));
        var _x382:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x382 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x383:GoUInt64 = ((0 : GoUInt64));
        var _x384:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x384 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x385:GoUInt64 = ((0 : GoUInt64));
        var _x386:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x386 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x387:GoUInt64 = ((0 : GoUInt64));
        var _x388:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x388 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x389:GoUInt64 = ((0 : GoUInt64));
        var _x390:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x390 = __tmp__._0;
            _x389 = __tmp__._1;
        };
        var _x391:GoUInt64 = ((0 : GoUInt64));
        var _x392:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x392 = __tmp__._0;
            _x391 = __tmp__._1;
        };
        var _x393:GoUInt64 = ((0 : GoUInt64));
        var _x394:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x394 = __tmp__._0;
            _x393 = __tmp__._1;
        };
        var _x395:GoUInt64 = ((0 : GoUInt64));
        var _x396:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x394, _x391, ((((0 : GoUInt64)) : GoUInt64)));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:GoUInt64 = ((0 : GoUInt64));
        var _x398:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x392, _x389, ((((_x396 : T_p521Uint1)) : GoUInt64)));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:GoUInt64 = ((0 : GoUInt64));
        var _x400:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x390, _x387, ((((_x398 : T_p521Uint1)) : GoUInt64)));
            _x399 = __tmp__._0;
            _x400 = __tmp__._1;
        };
        var _x401:GoUInt64 = ((0 : GoUInt64));
        var _x402:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x388, _x385, ((((_x400 : T_p521Uint1)) : GoUInt64)));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x403:GoUInt64 = ((0 : GoUInt64));
        var _x404:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x386, _x383, ((((_x402 : T_p521Uint1)) : GoUInt64)));
            _x403 = __tmp__._0;
            _x404 = __tmp__._1;
        };
        var _x405:GoUInt64 = ((0 : GoUInt64));
        var _x406:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x384, _x381, ((((_x404 : T_p521Uint1)) : GoUInt64)));
            _x405 = __tmp__._0;
            _x406 = __tmp__._1;
        };
        var _x407:GoUInt64 = ((0 : GoUInt64));
        var _x408:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x382, _x379, ((((_x406 : T_p521Uint1)) : GoUInt64)));
            _x407 = __tmp__._0;
            _x408 = __tmp__._1;
        };
        var _x409:GoUInt64 = ((0 : GoUInt64));
        var _x410:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x380, _x377, ((((_x408 : T_p521Uint1)) : GoUInt64)));
            _x409 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x411:GoUInt64 = (((((_x410 : T_p521Uint1)) : GoUInt64)) + _x378);
        var _x413:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x357, _x393, ((((0 : GoUInt64)) : GoUInt64)));
            _x413 = __tmp__._1;
        };
        var _x414:GoUInt64 = ((0 : GoUInt64));
        var _x415:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x359, _x395, ((((_x413 : T_p521Uint1)) : GoUInt64)));
            _x414 = __tmp__._0;
            _x415 = __tmp__._1;
        };
        var _x416:GoUInt64 = ((0 : GoUInt64));
        var _x417:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x361, _x397, ((((_x415 : T_p521Uint1)) : GoUInt64)));
            _x416 = __tmp__._0;
            _x417 = __tmp__._1;
        };
        var _x418:GoUInt64 = ((0 : GoUInt64));
        var _x419:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x363, _x399, ((((_x417 : T_p521Uint1)) : GoUInt64)));
            _x418 = __tmp__._0;
            _x419 = __tmp__._1;
        };
        var _x420:GoUInt64 = ((0 : GoUInt64));
        var _x421:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x365, _x401, ((((_x419 : T_p521Uint1)) : GoUInt64)));
            _x420 = __tmp__._0;
            _x421 = __tmp__._1;
        };
        var _x422:GoUInt64 = ((0 : GoUInt64));
        var _x423:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x367, _x403, ((((_x421 : T_p521Uint1)) : GoUInt64)));
            _x422 = __tmp__._0;
            _x423 = __tmp__._1;
        };
        var _x424:GoUInt64 = ((0 : GoUInt64));
        var _x425:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x369, _x405, ((((_x423 : T_p521Uint1)) : GoUInt64)));
            _x424 = __tmp__._0;
            _x425 = __tmp__._1;
        };
        var _x426:GoUInt64 = ((0 : GoUInt64));
        var _x427:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x371, _x407, ((((_x425 : T_p521Uint1)) : GoUInt64)));
            _x426 = __tmp__._0;
            _x427 = __tmp__._1;
        };
        var _x428:GoUInt64 = ((0 : GoUInt64));
        var _x429:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x373, _x409, ((((_x427 : T_p521Uint1)) : GoUInt64)));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:GoUInt64 = ((0 : GoUInt64));
        var _x431:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x375, _x411, ((((_x429 : T_p521Uint1)) : GoUInt64)));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432:GoUInt64 = (((((_x431 : T_p521Uint1)) : GoUInt64)) + ((((_x376 : T_p521Uint1)) : GoUInt64)));
        var _x433:GoUInt64 = ((0 : GoUInt64));
        var _x434:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x434 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x435:GoUInt64 = ((0 : GoUInt64));
        var _x436:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x436 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x437:GoUInt64 = ((0 : GoUInt64));
        var _x438:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x438 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x439:GoUInt64 = ((0 : GoUInt64));
        var _x440:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x440 = __tmp__._0;
            _x439 = __tmp__._1;
        };
        var _x441:GoUInt64 = ((0 : GoUInt64));
        var _x442:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x442 = __tmp__._0;
            _x441 = __tmp__._1;
        };
        var _x443:GoUInt64 = ((0 : GoUInt64));
        var _x444:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x444 = __tmp__._0;
            _x443 = __tmp__._1;
        };
        var _x445:GoUInt64 = ((0 : GoUInt64));
        var _x446:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x446 = __tmp__._0;
            _x445 = __tmp__._1;
        };
        var _x447:GoUInt64 = ((0 : GoUInt64));
        var _x448:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x448 = __tmp__._0;
            _x447 = __tmp__._1;
        };
        var _x449:GoUInt64 = ((0 : GoUInt64));
        var _x450:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x450 = __tmp__._0;
            _x449 = __tmp__._1;
        };
        var _x451:GoUInt64 = ((0 : GoUInt64));
        var _x452:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x450, _x447, ((((0 : GoUInt64)) : GoUInt64)));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:GoUInt64 = ((0 : GoUInt64));
        var _x454:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x448, _x445, ((((_x452 : T_p521Uint1)) : GoUInt64)));
            _x453 = __tmp__._0;
            _x454 = __tmp__._1;
        };
        var _x455:GoUInt64 = ((0 : GoUInt64));
        var _x456:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x446, _x443, ((((_x454 : T_p521Uint1)) : GoUInt64)));
            _x455 = __tmp__._0;
            _x456 = __tmp__._1;
        };
        var _x457:GoUInt64 = ((0 : GoUInt64));
        var _x458:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x444, _x441, ((((_x456 : T_p521Uint1)) : GoUInt64)));
            _x457 = __tmp__._0;
            _x458 = __tmp__._1;
        };
        var _x459:GoUInt64 = ((0 : GoUInt64));
        var _x460:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x442, _x439, ((((_x458 : T_p521Uint1)) : GoUInt64)));
            _x459 = __tmp__._0;
            _x460 = __tmp__._1;
        };
        var _x461:GoUInt64 = ((0 : GoUInt64));
        var _x462:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x440, _x437, ((((_x460 : T_p521Uint1)) : GoUInt64)));
            _x461 = __tmp__._0;
            _x462 = __tmp__._1;
        };
        var _x463:GoUInt64 = ((0 : GoUInt64));
        var _x464:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x438, _x435, ((((_x462 : T_p521Uint1)) : GoUInt64)));
            _x463 = __tmp__._0;
            _x464 = __tmp__._1;
        };
        var _x465:GoUInt64 = ((0 : GoUInt64));
        var _x466:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x436, _x433, ((((_x464 : T_p521Uint1)) : GoUInt64)));
            _x465 = __tmp__._0;
            _x466 = __tmp__._1;
        };
        var _x467:GoUInt64 = (((((_x466 : T_p521Uint1)) : GoUInt64)) + _x434);
        var _x468:GoUInt64 = ((0 : GoUInt64));
        var _x469:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x414, _x449, ((((0 : GoUInt64)) : GoUInt64)));
            _x468 = __tmp__._0;
            _x469 = __tmp__._1;
        };
        var _x470:GoUInt64 = ((0 : GoUInt64));
        var _x471:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x416, _x451, ((((_x469 : T_p521Uint1)) : GoUInt64)));
            _x470 = __tmp__._0;
            _x471 = __tmp__._1;
        };
        var _x472:GoUInt64 = ((0 : GoUInt64));
        var _x473:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x418, _x453, ((((_x471 : T_p521Uint1)) : GoUInt64)));
            _x472 = __tmp__._0;
            _x473 = __tmp__._1;
        };
        var _x474:GoUInt64 = ((0 : GoUInt64));
        var _x475:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x420, _x455, ((((_x473 : T_p521Uint1)) : GoUInt64)));
            _x474 = __tmp__._0;
            _x475 = __tmp__._1;
        };
        var _x476:GoUInt64 = ((0 : GoUInt64));
        var _x477:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x422, _x457, ((((_x475 : T_p521Uint1)) : GoUInt64)));
            _x476 = __tmp__._0;
            _x477 = __tmp__._1;
        };
        var _x478:GoUInt64 = ((0 : GoUInt64));
        var _x479:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x424, _x459, ((((_x477 : T_p521Uint1)) : GoUInt64)));
            _x478 = __tmp__._0;
            _x479 = __tmp__._1;
        };
        var _x480:GoUInt64 = ((0 : GoUInt64));
        var _x481:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x426, _x461, ((((_x479 : T_p521Uint1)) : GoUInt64)));
            _x480 = __tmp__._0;
            _x481 = __tmp__._1;
        };
        var _x482:GoUInt64 = ((0 : GoUInt64));
        var _x483:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x428, _x463, ((((_x481 : T_p521Uint1)) : GoUInt64)));
            _x482 = __tmp__._0;
            _x483 = __tmp__._1;
        };
        var _x484:GoUInt64 = ((0 : GoUInt64));
        var _x485:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x430, _x465, ((((_x483 : T_p521Uint1)) : GoUInt64)));
            _x484 = __tmp__._0;
            _x485 = __tmp__._1;
        };
        var _x486:GoUInt64 = ((0 : GoUInt64));
        var _x487:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x432, _x467, ((((_x485 : T_p521Uint1)) : GoUInt64)));
            _x486 = __tmp__._0;
            _x487 = __tmp__._1;
        };
        var _x488:GoUInt64 = ((0 : GoUInt64));
        var _x489:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, ((511 : GoUInt64)));
            _x489 = __tmp__._0;
            _x488 = __tmp__._1;
        };
        var _x490:GoUInt64 = ((0 : GoUInt64));
        var _x491:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x491 = __tmp__._0;
            _x490 = __tmp__._1;
        };
        var _x492:GoUInt64 = ((0 : GoUInt64));
        var _x493:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x493 = __tmp__._0;
            _x492 = __tmp__._1;
        };
        var _x494:GoUInt64 = ((0 : GoUInt64));
        var _x495:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x495 = __tmp__._0;
            _x494 = __tmp__._1;
        };
        var _x496:GoUInt64 = ((0 : GoUInt64));
        var _x497:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x497 = __tmp__._0;
            _x496 = __tmp__._1;
        };
        var _x498:GoUInt64 = ((0 : GoUInt64));
        var _x499:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x499 = __tmp__._0;
            _x498 = __tmp__._1;
        };
        var _x500:GoUInt64 = ((0 : GoUInt64));
        var _x501:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x501 = __tmp__._0;
            _x500 = __tmp__._1;
        };
        var _x502:GoUInt64 = ((0 : GoUInt64));
        var _x503:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x503 = __tmp__._0;
            _x502 = __tmp__._1;
        };
        var _x504:GoUInt64 = ((0 : GoUInt64));
        var _x505:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x505 = __tmp__._0;
            _x504 = __tmp__._1;
        };
        var _x506:GoUInt64 = ((0 : GoUInt64));
        var _x507:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x505, _x502, ((((0 : GoUInt64)) : GoUInt64)));
            _x506 = __tmp__._0;
            _x507 = __tmp__._1;
        };
        var _x508:GoUInt64 = ((0 : GoUInt64));
        var _x509:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x503, _x500, ((((_x507 : T_p521Uint1)) : GoUInt64)));
            _x508 = __tmp__._0;
            _x509 = __tmp__._1;
        };
        var _x510:GoUInt64 = ((0 : GoUInt64));
        var _x511:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x501, _x498, ((((_x509 : T_p521Uint1)) : GoUInt64)));
            _x510 = __tmp__._0;
            _x511 = __tmp__._1;
        };
        var _x512:GoUInt64 = ((0 : GoUInt64));
        var _x513:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x499, _x496, ((((_x511 : T_p521Uint1)) : GoUInt64)));
            _x512 = __tmp__._0;
            _x513 = __tmp__._1;
        };
        var _x514:GoUInt64 = ((0 : GoUInt64));
        var _x515:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x497, _x494, ((((_x513 : T_p521Uint1)) : GoUInt64)));
            _x514 = __tmp__._0;
            _x515 = __tmp__._1;
        };
        var _x516:GoUInt64 = ((0 : GoUInt64));
        var _x517:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x495, _x492, ((((_x515 : T_p521Uint1)) : GoUInt64)));
            _x516 = __tmp__._0;
            _x517 = __tmp__._1;
        };
        var _x518:GoUInt64 = ((0 : GoUInt64));
        var _x519:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x493, _x490, ((((_x517 : T_p521Uint1)) : GoUInt64)));
            _x518 = __tmp__._0;
            _x519 = __tmp__._1;
        };
        var _x520:GoUInt64 = ((0 : GoUInt64));
        var _x521:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x491, _x488, ((((_x519 : T_p521Uint1)) : GoUInt64)));
            _x520 = __tmp__._0;
            _x521 = __tmp__._1;
        };
        var _x522:GoUInt64 = (((((_x521 : T_p521Uint1)) : GoUInt64)) + _x489);
        var _x524:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x468, _x504, ((((0 : GoUInt64)) : GoUInt64)));
            _x524 = __tmp__._1;
        };
        var _x525:GoUInt64 = ((0 : GoUInt64));
        var _x526:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x470, _x506, ((((_x524 : T_p521Uint1)) : GoUInt64)));
            _x525 = __tmp__._0;
            _x526 = __tmp__._1;
        };
        var _x527:GoUInt64 = ((0 : GoUInt64));
        var _x528:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x472, _x508, ((((_x526 : T_p521Uint1)) : GoUInt64)));
            _x527 = __tmp__._0;
            _x528 = __tmp__._1;
        };
        var _x529:GoUInt64 = ((0 : GoUInt64));
        var _x530:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x474, _x510, ((((_x528 : T_p521Uint1)) : GoUInt64)));
            _x529 = __tmp__._0;
            _x530 = __tmp__._1;
        };
        var _x531:GoUInt64 = ((0 : GoUInt64));
        var _x532:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x476, _x512, ((((_x530 : T_p521Uint1)) : GoUInt64)));
            _x531 = __tmp__._0;
            _x532 = __tmp__._1;
        };
        var _x533:GoUInt64 = ((0 : GoUInt64));
        var _x534:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x478, _x514, ((((_x532 : T_p521Uint1)) : GoUInt64)));
            _x533 = __tmp__._0;
            _x534 = __tmp__._1;
        };
        var _x535:GoUInt64 = ((0 : GoUInt64));
        var _x536:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x480, _x516, ((((_x534 : T_p521Uint1)) : GoUInt64)));
            _x535 = __tmp__._0;
            _x536 = __tmp__._1;
        };
        var _x537:GoUInt64 = ((0 : GoUInt64));
        var _x538:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x482, _x518, ((((_x536 : T_p521Uint1)) : GoUInt64)));
            _x537 = __tmp__._0;
            _x538 = __tmp__._1;
        };
        var _x539:GoUInt64 = ((0 : GoUInt64));
        var _x540:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x484, _x520, ((((_x538 : T_p521Uint1)) : GoUInt64)));
            _x539 = __tmp__._0;
            _x540 = __tmp__._1;
        };
        var _x541:GoUInt64 = ((0 : GoUInt64));
        var _x542:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x486, _x522, ((((_x540 : T_p521Uint1)) : GoUInt64)));
            _x541 = __tmp__._0;
            _x542 = __tmp__._1;
        };
        var _x543:GoUInt64 = (((((_x542 : T_p521Uint1)) : GoUInt64)) + ((((_x487 : T_p521Uint1)) : GoUInt64)));
        var _x544:GoUInt64 = ((0 : GoUInt64));
        var _x545:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x545 = __tmp__._0;
            _x544 = __tmp__._1;
        };
        var _x546:GoUInt64 = ((0 : GoUInt64));
        var _x547:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x547 = __tmp__._0;
            _x546 = __tmp__._1;
        };
        var _x548:GoUInt64 = ((0 : GoUInt64));
        var _x549:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x549 = __tmp__._0;
            _x548 = __tmp__._1;
        };
        var _x550:GoUInt64 = ((0 : GoUInt64));
        var _x551:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x551 = __tmp__._0;
            _x550 = __tmp__._1;
        };
        var _x552:GoUInt64 = ((0 : GoUInt64));
        var _x553:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x553 = __tmp__._0;
            _x552 = __tmp__._1;
        };
        var _x554:GoUInt64 = ((0 : GoUInt64));
        var _x555:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x555 = __tmp__._0;
            _x554 = __tmp__._1;
        };
        var _x556:GoUInt64 = ((0 : GoUInt64));
        var _x557:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x557 = __tmp__._0;
            _x556 = __tmp__._1;
        };
        var _x558:GoUInt64 = ((0 : GoUInt64));
        var _x559:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x559 = __tmp__._0;
            _x558 = __tmp__._1;
        };
        var _x560:GoUInt64 = ((0 : GoUInt64));
        var _x561:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x561 = __tmp__._0;
            _x560 = __tmp__._1;
        };
        var _x562:GoUInt64 = ((0 : GoUInt64));
        var _x563:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x561, _x558, ((((0 : GoUInt64)) : GoUInt64)));
            _x562 = __tmp__._0;
            _x563 = __tmp__._1;
        };
        var _x564:GoUInt64 = ((0 : GoUInt64));
        var _x565:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x559, _x556, ((((_x563 : T_p521Uint1)) : GoUInt64)));
            _x564 = __tmp__._0;
            _x565 = __tmp__._1;
        };
        var _x566:GoUInt64 = ((0 : GoUInt64));
        var _x567:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x557, _x554, ((((_x565 : T_p521Uint1)) : GoUInt64)));
            _x566 = __tmp__._0;
            _x567 = __tmp__._1;
        };
        var _x568:GoUInt64 = ((0 : GoUInt64));
        var _x569:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x555, _x552, ((((_x567 : T_p521Uint1)) : GoUInt64)));
            _x568 = __tmp__._0;
            _x569 = __tmp__._1;
        };
        var _x570:GoUInt64 = ((0 : GoUInt64));
        var _x571:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x553, _x550, ((((_x569 : T_p521Uint1)) : GoUInt64)));
            _x570 = __tmp__._0;
            _x571 = __tmp__._1;
        };
        var _x572:GoUInt64 = ((0 : GoUInt64));
        var _x573:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x551, _x548, ((((_x571 : T_p521Uint1)) : GoUInt64)));
            _x572 = __tmp__._0;
            _x573 = __tmp__._1;
        };
        var _x574:GoUInt64 = ((0 : GoUInt64));
        var _x575:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x549, _x546, ((((_x573 : T_p521Uint1)) : GoUInt64)));
            _x574 = __tmp__._0;
            _x575 = __tmp__._1;
        };
        var _x576:GoUInt64 = ((0 : GoUInt64));
        var _x577:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x547, _x544, ((((_x575 : T_p521Uint1)) : GoUInt64)));
            _x576 = __tmp__._0;
            _x577 = __tmp__._1;
        };
        var _x578:GoUInt64 = (((((_x577 : T_p521Uint1)) : GoUInt64)) + _x545);
        var _x579:GoUInt64 = ((0 : GoUInt64));
        var _x580:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x525, _x560, ((((0 : GoUInt64)) : GoUInt64)));
            _x579 = __tmp__._0;
            _x580 = __tmp__._1;
        };
        var _x581:GoUInt64 = ((0 : GoUInt64));
        var _x582:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x527, _x562, ((((_x580 : T_p521Uint1)) : GoUInt64)));
            _x581 = __tmp__._0;
            _x582 = __tmp__._1;
        };
        var _x583:GoUInt64 = ((0 : GoUInt64));
        var _x584:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x529, _x564, ((((_x582 : T_p521Uint1)) : GoUInt64)));
            _x583 = __tmp__._0;
            _x584 = __tmp__._1;
        };
        var _x585:GoUInt64 = ((0 : GoUInt64));
        var _x586:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x531, _x566, ((((_x584 : T_p521Uint1)) : GoUInt64)));
            _x585 = __tmp__._0;
            _x586 = __tmp__._1;
        };
        var _x587:GoUInt64 = ((0 : GoUInt64));
        var _x588:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x533, _x568, ((((_x586 : T_p521Uint1)) : GoUInt64)));
            _x587 = __tmp__._0;
            _x588 = __tmp__._1;
        };
        var _x589:GoUInt64 = ((0 : GoUInt64));
        var _x590:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x535, _x570, ((((_x588 : T_p521Uint1)) : GoUInt64)));
            _x589 = __tmp__._0;
            _x590 = __tmp__._1;
        };
        var _x591:GoUInt64 = ((0 : GoUInt64));
        var _x592:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x537, _x572, ((((_x590 : T_p521Uint1)) : GoUInt64)));
            _x591 = __tmp__._0;
            _x592 = __tmp__._1;
        };
        var _x593:GoUInt64 = ((0 : GoUInt64));
        var _x594:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x539, _x574, ((((_x592 : T_p521Uint1)) : GoUInt64)));
            _x593 = __tmp__._0;
            _x594 = __tmp__._1;
        };
        var _x595:GoUInt64 = ((0 : GoUInt64));
        var _x596:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x541, _x576, ((((_x594 : T_p521Uint1)) : GoUInt64)));
            _x595 = __tmp__._0;
            _x596 = __tmp__._1;
        };
        var _x597:GoUInt64 = ((0 : GoUInt64));
        var _x598:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x543, _x578, ((((_x596 : T_p521Uint1)) : GoUInt64)));
            _x597 = __tmp__._0;
            _x598 = __tmp__._1;
        };
        var _x599:GoUInt64 = ((0 : GoUInt64));
        var _x600:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, ((511 : GoUInt64)));
            _x600 = __tmp__._0;
            _x599 = __tmp__._1;
        };
        var _x601:GoUInt64 = ((0 : GoUInt64));
        var _x602:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x602 = __tmp__._0;
            _x601 = __tmp__._1;
        };
        var _x603:GoUInt64 = ((0 : GoUInt64));
        var _x604:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x604 = __tmp__._0;
            _x603 = __tmp__._1;
        };
        var _x605:GoUInt64 = ((0 : GoUInt64));
        var _x606:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x606 = __tmp__._0;
            _x605 = __tmp__._1;
        };
        var _x607:GoUInt64 = ((0 : GoUInt64));
        var _x608:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x608 = __tmp__._0;
            _x607 = __tmp__._1;
        };
        var _x609:GoUInt64 = ((0 : GoUInt64));
        var _x610:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x610 = __tmp__._0;
            _x609 = __tmp__._1;
        };
        var _x611:GoUInt64 = ((0 : GoUInt64));
        var _x612:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x612 = __tmp__._0;
            _x611 = __tmp__._1;
        };
        var _x613:GoUInt64 = ((0 : GoUInt64));
        var _x614:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x614 = __tmp__._0;
            _x613 = __tmp__._1;
        };
        var _x615:GoUInt64 = ((0 : GoUInt64));
        var _x616:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x616 = __tmp__._0;
            _x615 = __tmp__._1;
        };
        var _x617:GoUInt64 = ((0 : GoUInt64));
        var _x618:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x616, _x613, ((((0 : GoUInt64)) : GoUInt64)));
            _x617 = __tmp__._0;
            _x618 = __tmp__._1;
        };
        var _x619:GoUInt64 = ((0 : GoUInt64));
        var _x620:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x614, _x611, ((((_x618 : T_p521Uint1)) : GoUInt64)));
            _x619 = __tmp__._0;
            _x620 = __tmp__._1;
        };
        var _x621:GoUInt64 = ((0 : GoUInt64));
        var _x622:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x612, _x609, ((((_x620 : T_p521Uint1)) : GoUInt64)));
            _x621 = __tmp__._0;
            _x622 = __tmp__._1;
        };
        var _x623:GoUInt64 = ((0 : GoUInt64));
        var _x624:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x610, _x607, ((((_x622 : T_p521Uint1)) : GoUInt64)));
            _x623 = __tmp__._0;
            _x624 = __tmp__._1;
        };
        var _x625:GoUInt64 = ((0 : GoUInt64));
        var _x626:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x608, _x605, ((((_x624 : T_p521Uint1)) : GoUInt64)));
            _x625 = __tmp__._0;
            _x626 = __tmp__._1;
        };
        var _x627:GoUInt64 = ((0 : GoUInt64));
        var _x628:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x606, _x603, ((((_x626 : T_p521Uint1)) : GoUInt64)));
            _x627 = __tmp__._0;
            _x628 = __tmp__._1;
        };
        var _x629:GoUInt64 = ((0 : GoUInt64));
        var _x630:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x604, _x601, ((((_x628 : T_p521Uint1)) : GoUInt64)));
            _x629 = __tmp__._0;
            _x630 = __tmp__._1;
        };
        var _x631:GoUInt64 = ((0 : GoUInt64));
        var _x632:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x602, _x599, ((((_x630 : T_p521Uint1)) : GoUInt64)));
            _x631 = __tmp__._0;
            _x632 = __tmp__._1;
        };
        var _x633:GoUInt64 = (((((_x632 : T_p521Uint1)) : GoUInt64)) + _x600);
        var _x635:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x579, _x615, ((((0 : GoUInt64)) : GoUInt64)));
            _x635 = __tmp__._1;
        };
        var _x636:GoUInt64 = ((0 : GoUInt64));
        var _x637:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x581, _x617, ((((_x635 : T_p521Uint1)) : GoUInt64)));
            _x636 = __tmp__._0;
            _x637 = __tmp__._1;
        };
        var _x638:GoUInt64 = ((0 : GoUInt64));
        var _x639:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x583, _x619, ((((_x637 : T_p521Uint1)) : GoUInt64)));
            _x638 = __tmp__._0;
            _x639 = __tmp__._1;
        };
        var _x640:GoUInt64 = ((0 : GoUInt64));
        var _x641:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x585, _x621, ((((_x639 : T_p521Uint1)) : GoUInt64)));
            _x640 = __tmp__._0;
            _x641 = __tmp__._1;
        };
        var _x642:GoUInt64 = ((0 : GoUInt64));
        var _x643:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x587, _x623, ((((_x641 : T_p521Uint1)) : GoUInt64)));
            _x642 = __tmp__._0;
            _x643 = __tmp__._1;
        };
        var _x644:GoUInt64 = ((0 : GoUInt64));
        var _x645:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x589, _x625, ((((_x643 : T_p521Uint1)) : GoUInt64)));
            _x644 = __tmp__._0;
            _x645 = __tmp__._1;
        };
        var _x646:GoUInt64 = ((0 : GoUInt64));
        var _x647:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x591, _x627, ((((_x645 : T_p521Uint1)) : GoUInt64)));
            _x646 = __tmp__._0;
            _x647 = __tmp__._1;
        };
        var _x648:GoUInt64 = ((0 : GoUInt64));
        var _x649:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x593, _x629, ((((_x647 : T_p521Uint1)) : GoUInt64)));
            _x648 = __tmp__._0;
            _x649 = __tmp__._1;
        };
        var _x650:GoUInt64 = ((0 : GoUInt64));
        var _x651:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x595, _x631, ((((_x649 : T_p521Uint1)) : GoUInt64)));
            _x650 = __tmp__._0;
            _x651 = __tmp__._1;
        };
        var _x652:GoUInt64 = ((0 : GoUInt64));
        var _x653:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x597, _x633, ((((_x651 : T_p521Uint1)) : GoUInt64)));
            _x652 = __tmp__._0;
            _x653 = __tmp__._1;
        };
        var _x654:GoUInt64 = (((((_x653 : T_p521Uint1)) : GoUInt64)) + ((((_x598 : T_p521Uint1)) : GoUInt64)));
        var _x655:GoUInt64 = ((0 : GoUInt64));
        var _x656:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x656 = __tmp__._0;
            _x655 = __tmp__._1;
        };
        var _x657:GoUInt64 = ((0 : GoUInt64));
        var _x658:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x658 = __tmp__._0;
            _x657 = __tmp__._1;
        };
        var _x659:GoUInt64 = ((0 : GoUInt64));
        var _x660:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x660 = __tmp__._0;
            _x659 = __tmp__._1;
        };
        var _x661:GoUInt64 = ((0 : GoUInt64));
        var _x662:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x662 = __tmp__._0;
            _x661 = __tmp__._1;
        };
        var _x663:GoUInt64 = ((0 : GoUInt64));
        var _x664:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x664 = __tmp__._0;
            _x663 = __tmp__._1;
        };
        var _x665:GoUInt64 = ((0 : GoUInt64));
        var _x666:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x666 = __tmp__._0;
            _x665 = __tmp__._1;
        };
        var _x667:GoUInt64 = ((0 : GoUInt64));
        var _x668:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x668 = __tmp__._0;
            _x667 = __tmp__._1;
        };
        var _x669:GoUInt64 = ((0 : GoUInt64));
        var _x670:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x670 = __tmp__._0;
            _x669 = __tmp__._1;
        };
        var _x671:GoUInt64 = ((0 : GoUInt64));
        var _x672:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x672 = __tmp__._0;
            _x671 = __tmp__._1;
        };
        var _x673:GoUInt64 = ((0 : GoUInt64));
        var _x674:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x672, _x669, ((((0 : GoUInt64)) : GoUInt64)));
            _x673 = __tmp__._0;
            _x674 = __tmp__._1;
        };
        var _x675:GoUInt64 = ((0 : GoUInt64));
        var _x676:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x670, _x667, ((((_x674 : T_p521Uint1)) : GoUInt64)));
            _x675 = __tmp__._0;
            _x676 = __tmp__._1;
        };
        var _x677:GoUInt64 = ((0 : GoUInt64));
        var _x678:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x668, _x665, ((((_x676 : T_p521Uint1)) : GoUInt64)));
            _x677 = __tmp__._0;
            _x678 = __tmp__._1;
        };
        var _x679:GoUInt64 = ((0 : GoUInt64));
        var _x680:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x666, _x663, ((((_x678 : T_p521Uint1)) : GoUInt64)));
            _x679 = __tmp__._0;
            _x680 = __tmp__._1;
        };
        var _x681:GoUInt64 = ((0 : GoUInt64));
        var _x682:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x664, _x661, ((((_x680 : T_p521Uint1)) : GoUInt64)));
            _x681 = __tmp__._0;
            _x682 = __tmp__._1;
        };
        var _x683:GoUInt64 = ((0 : GoUInt64));
        var _x684:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x662, _x659, ((((_x682 : T_p521Uint1)) : GoUInt64)));
            _x683 = __tmp__._0;
            _x684 = __tmp__._1;
        };
        var _x685:GoUInt64 = ((0 : GoUInt64));
        var _x686:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x660, _x657, ((((_x684 : T_p521Uint1)) : GoUInt64)));
            _x685 = __tmp__._0;
            _x686 = __tmp__._1;
        };
        var _x687:GoUInt64 = ((0 : GoUInt64));
        var _x688:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x658, _x655, ((((_x686 : T_p521Uint1)) : GoUInt64)));
            _x687 = __tmp__._0;
            _x688 = __tmp__._1;
        };
        var _x689:GoUInt64 = (((((_x688 : T_p521Uint1)) : GoUInt64)) + _x656);
        var _x690:GoUInt64 = ((0 : GoUInt64));
        var _x691:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x636, _x671, ((((0 : GoUInt64)) : GoUInt64)));
            _x690 = __tmp__._0;
            _x691 = __tmp__._1;
        };
        var _x692:GoUInt64 = ((0 : GoUInt64));
        var _x693:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x638, _x673, ((((_x691 : T_p521Uint1)) : GoUInt64)));
            _x692 = __tmp__._0;
            _x693 = __tmp__._1;
        };
        var _x694:GoUInt64 = ((0 : GoUInt64));
        var _x695:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x640, _x675, ((((_x693 : T_p521Uint1)) : GoUInt64)));
            _x694 = __tmp__._0;
            _x695 = __tmp__._1;
        };
        var _x696:GoUInt64 = ((0 : GoUInt64));
        var _x697:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x642, _x677, ((((_x695 : T_p521Uint1)) : GoUInt64)));
            _x696 = __tmp__._0;
            _x697 = __tmp__._1;
        };
        var _x698:GoUInt64 = ((0 : GoUInt64));
        var _x699:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x644, _x679, ((((_x697 : T_p521Uint1)) : GoUInt64)));
            _x698 = __tmp__._0;
            _x699 = __tmp__._1;
        };
        var _x700:GoUInt64 = ((0 : GoUInt64));
        var _x701:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x646, _x681, ((((_x699 : T_p521Uint1)) : GoUInt64)));
            _x700 = __tmp__._0;
            _x701 = __tmp__._1;
        };
        var _x702:GoUInt64 = ((0 : GoUInt64));
        var _x703:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x648, _x683, ((((_x701 : T_p521Uint1)) : GoUInt64)));
            _x702 = __tmp__._0;
            _x703 = __tmp__._1;
        };
        var _x704:GoUInt64 = ((0 : GoUInt64));
        var _x705:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x650, _x685, ((((_x703 : T_p521Uint1)) : GoUInt64)));
            _x704 = __tmp__._0;
            _x705 = __tmp__._1;
        };
        var _x706:GoUInt64 = ((0 : GoUInt64));
        var _x707:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x652, _x687, ((((_x705 : T_p521Uint1)) : GoUInt64)));
            _x706 = __tmp__._0;
            _x707 = __tmp__._1;
        };
        var _x708:GoUInt64 = ((0 : GoUInt64));
        var _x709:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x654, _x689, ((((_x707 : T_p521Uint1)) : GoUInt64)));
            _x708 = __tmp__._0;
            _x709 = __tmp__._1;
        };
        var _x710:GoUInt64 = ((0 : GoUInt64));
        var _x711:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, ((511 : GoUInt64)));
            _x711 = __tmp__._0;
            _x710 = __tmp__._1;
        };
        var _x712:GoUInt64 = ((0 : GoUInt64));
        var _x713:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x713 = __tmp__._0;
            _x712 = __tmp__._1;
        };
        var _x714:GoUInt64 = ((0 : GoUInt64));
        var _x715:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x715 = __tmp__._0;
            _x714 = __tmp__._1;
        };
        var _x716:GoUInt64 = ((0 : GoUInt64));
        var _x717:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x717 = __tmp__._0;
            _x716 = __tmp__._1;
        };
        var _x718:GoUInt64 = ((0 : GoUInt64));
        var _x719:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x719 = __tmp__._0;
            _x718 = __tmp__._1;
        };
        var _x720:GoUInt64 = ((0 : GoUInt64));
        var _x721:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x721 = __tmp__._0;
            _x720 = __tmp__._1;
        };
        var _x722:GoUInt64 = ((0 : GoUInt64));
        var _x723:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x723 = __tmp__._0;
            _x722 = __tmp__._1;
        };
        var _x724:GoUInt64 = ((0 : GoUInt64));
        var _x725:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x725 = __tmp__._0;
            _x724 = __tmp__._1;
        };
        var _x726:GoUInt64 = ((0 : GoUInt64));
        var _x727:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x727 = __tmp__._0;
            _x726 = __tmp__._1;
        };
        var _x728:GoUInt64 = ((0 : GoUInt64));
        var _x729:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x727, _x724, ((((0 : GoUInt64)) : GoUInt64)));
            _x728 = __tmp__._0;
            _x729 = __tmp__._1;
        };
        var _x730:GoUInt64 = ((0 : GoUInt64));
        var _x731:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x725, _x722, ((((_x729 : T_p521Uint1)) : GoUInt64)));
            _x730 = __tmp__._0;
            _x731 = __tmp__._1;
        };
        var _x732:GoUInt64 = ((0 : GoUInt64));
        var _x733:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x723, _x720, ((((_x731 : T_p521Uint1)) : GoUInt64)));
            _x732 = __tmp__._0;
            _x733 = __tmp__._1;
        };
        var _x734:GoUInt64 = ((0 : GoUInt64));
        var _x735:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x721, _x718, ((((_x733 : T_p521Uint1)) : GoUInt64)));
            _x734 = __tmp__._0;
            _x735 = __tmp__._1;
        };
        var _x736:GoUInt64 = ((0 : GoUInt64));
        var _x737:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x719, _x716, ((((_x735 : T_p521Uint1)) : GoUInt64)));
            _x736 = __tmp__._0;
            _x737 = __tmp__._1;
        };
        var _x738:GoUInt64 = ((0 : GoUInt64));
        var _x739:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x717, _x714, ((((_x737 : T_p521Uint1)) : GoUInt64)));
            _x738 = __tmp__._0;
            _x739 = __tmp__._1;
        };
        var _x740:GoUInt64 = ((0 : GoUInt64));
        var _x741:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x715, _x712, ((((_x739 : T_p521Uint1)) : GoUInt64)));
            _x740 = __tmp__._0;
            _x741 = __tmp__._1;
        };
        var _x742:GoUInt64 = ((0 : GoUInt64));
        var _x743:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x713, _x710, ((((_x741 : T_p521Uint1)) : GoUInt64)));
            _x742 = __tmp__._0;
            _x743 = __tmp__._1;
        };
        var _x744:GoUInt64 = (((((_x743 : T_p521Uint1)) : GoUInt64)) + _x711);
        var _x746:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x690, _x726, ((((0 : GoUInt64)) : GoUInt64)));
            _x746 = __tmp__._1;
        };
        var _x747:GoUInt64 = ((0 : GoUInt64));
        var _x748:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x692, _x728, ((((_x746 : T_p521Uint1)) : GoUInt64)));
            _x747 = __tmp__._0;
            _x748 = __tmp__._1;
        };
        var _x749:GoUInt64 = ((0 : GoUInt64));
        var _x750:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x694, _x730, ((((_x748 : T_p521Uint1)) : GoUInt64)));
            _x749 = __tmp__._0;
            _x750 = __tmp__._1;
        };
        var _x751:GoUInt64 = ((0 : GoUInt64));
        var _x752:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x696, _x732, ((((_x750 : T_p521Uint1)) : GoUInt64)));
            _x751 = __tmp__._0;
            _x752 = __tmp__._1;
        };
        var _x753:GoUInt64 = ((0 : GoUInt64));
        var _x754:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x698, _x734, ((((_x752 : T_p521Uint1)) : GoUInt64)));
            _x753 = __tmp__._0;
            _x754 = __tmp__._1;
        };
        var _x755:GoUInt64 = ((0 : GoUInt64));
        var _x756:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x700, _x736, ((((_x754 : T_p521Uint1)) : GoUInt64)));
            _x755 = __tmp__._0;
            _x756 = __tmp__._1;
        };
        var _x757:GoUInt64 = ((0 : GoUInt64));
        var _x758:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x702, _x738, ((((_x756 : T_p521Uint1)) : GoUInt64)));
            _x757 = __tmp__._0;
            _x758 = __tmp__._1;
        };
        var _x759:GoUInt64 = ((0 : GoUInt64));
        var _x760:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x704, _x740, ((((_x758 : T_p521Uint1)) : GoUInt64)));
            _x759 = __tmp__._0;
            _x760 = __tmp__._1;
        };
        var _x761:GoUInt64 = ((0 : GoUInt64));
        var _x762:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x706, _x742, ((((_x760 : T_p521Uint1)) : GoUInt64)));
            _x761 = __tmp__._0;
            _x762 = __tmp__._1;
        };
        var _x763:GoUInt64 = ((0 : GoUInt64));
        var _x764:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x708, _x744, ((((_x762 : T_p521Uint1)) : GoUInt64)));
            _x763 = __tmp__._0;
            _x764 = __tmp__._1;
        };
        var _x765:GoUInt64 = (((((_x764 : T_p521Uint1)) : GoUInt64)) + ((((_x709 : T_p521Uint1)) : GoUInt64)));
        var _x766:GoUInt64 = ((0 : GoUInt64));
        var _x767:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x767 = __tmp__._0;
            _x766 = __tmp__._1;
        };
        var _x768:GoUInt64 = ((0 : GoUInt64));
        var _x769:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x769 = __tmp__._0;
            _x768 = __tmp__._1;
        };
        var _x770:GoUInt64 = ((0 : GoUInt64));
        var _x771:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x771 = __tmp__._0;
            _x770 = __tmp__._1;
        };
        var _x772:GoUInt64 = ((0 : GoUInt64));
        var _x773:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x773 = __tmp__._0;
            _x772 = __tmp__._1;
        };
        var _x774:GoUInt64 = ((0 : GoUInt64));
        var _x775:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x775 = __tmp__._0;
            _x774 = __tmp__._1;
        };
        var _x776:GoUInt64 = ((0 : GoUInt64));
        var _x777:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x777 = __tmp__._0;
            _x776 = __tmp__._1;
        };
        var _x778:GoUInt64 = ((0 : GoUInt64));
        var _x779:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x779 = __tmp__._0;
            _x778 = __tmp__._1;
        };
        var _x780:GoUInt64 = ((0 : GoUInt64));
        var _x781:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x781 = __tmp__._0;
            _x780 = __tmp__._1;
        };
        var _x782:GoUInt64 = ((0 : GoUInt64));
        var _x783:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x783 = __tmp__._0;
            _x782 = __tmp__._1;
        };
        var _x784:GoUInt64 = ((0 : GoUInt64));
        var _x785:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x783, _x780, ((((0 : GoUInt64)) : GoUInt64)));
            _x784 = __tmp__._0;
            _x785 = __tmp__._1;
        };
        var _x786:GoUInt64 = ((0 : GoUInt64));
        var _x787:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x781, _x778, ((((_x785 : T_p521Uint1)) : GoUInt64)));
            _x786 = __tmp__._0;
            _x787 = __tmp__._1;
        };
        var _x788:GoUInt64 = ((0 : GoUInt64));
        var _x789:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x779, _x776, ((((_x787 : T_p521Uint1)) : GoUInt64)));
            _x788 = __tmp__._0;
            _x789 = __tmp__._1;
        };
        var _x790:GoUInt64 = ((0 : GoUInt64));
        var _x791:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x777, _x774, ((((_x789 : T_p521Uint1)) : GoUInt64)));
            _x790 = __tmp__._0;
            _x791 = __tmp__._1;
        };
        var _x792:GoUInt64 = ((0 : GoUInt64));
        var _x793:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x775, _x772, ((((_x791 : T_p521Uint1)) : GoUInt64)));
            _x792 = __tmp__._0;
            _x793 = __tmp__._1;
        };
        var _x794:GoUInt64 = ((0 : GoUInt64));
        var _x795:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x773, _x770, ((((_x793 : T_p521Uint1)) : GoUInt64)));
            _x794 = __tmp__._0;
            _x795 = __tmp__._1;
        };
        var _x796:GoUInt64 = ((0 : GoUInt64));
        var _x797:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x771, _x768, ((((_x795 : T_p521Uint1)) : GoUInt64)));
            _x796 = __tmp__._0;
            _x797 = __tmp__._1;
        };
        var _x798:GoUInt64 = ((0 : GoUInt64));
        var _x799:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x769, _x766, ((((_x797 : T_p521Uint1)) : GoUInt64)));
            _x798 = __tmp__._0;
            _x799 = __tmp__._1;
        };
        var _x800:GoUInt64 = (((((_x799 : T_p521Uint1)) : GoUInt64)) + _x767);
        var _x801:GoUInt64 = ((0 : GoUInt64));
        var _x802:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x747, _x782, ((((0 : GoUInt64)) : GoUInt64)));
            _x801 = __tmp__._0;
            _x802 = __tmp__._1;
        };
        var _x803:GoUInt64 = ((0 : GoUInt64));
        var _x804:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x749, _x784, ((((_x802 : T_p521Uint1)) : GoUInt64)));
            _x803 = __tmp__._0;
            _x804 = __tmp__._1;
        };
        var _x805:GoUInt64 = ((0 : GoUInt64));
        var _x806:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x751, _x786, ((((_x804 : T_p521Uint1)) : GoUInt64)));
            _x805 = __tmp__._0;
            _x806 = __tmp__._1;
        };
        var _x807:GoUInt64 = ((0 : GoUInt64));
        var _x808:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x753, _x788, ((((_x806 : T_p521Uint1)) : GoUInt64)));
            _x807 = __tmp__._0;
            _x808 = __tmp__._1;
        };
        var _x809:GoUInt64 = ((0 : GoUInt64));
        var _x810:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x755, _x790, ((((_x808 : T_p521Uint1)) : GoUInt64)));
            _x809 = __tmp__._0;
            _x810 = __tmp__._1;
        };
        var _x811:GoUInt64 = ((0 : GoUInt64));
        var _x812:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x757, _x792, ((((_x810 : T_p521Uint1)) : GoUInt64)));
            _x811 = __tmp__._0;
            _x812 = __tmp__._1;
        };
        var _x813:GoUInt64 = ((0 : GoUInt64));
        var _x814:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x759, _x794, ((((_x812 : T_p521Uint1)) : GoUInt64)));
            _x813 = __tmp__._0;
            _x814 = __tmp__._1;
        };
        var _x815:GoUInt64 = ((0 : GoUInt64));
        var _x816:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x761, _x796, ((((_x814 : T_p521Uint1)) : GoUInt64)));
            _x815 = __tmp__._0;
            _x816 = __tmp__._1;
        };
        var _x817:GoUInt64 = ((0 : GoUInt64));
        var _x818:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x763, _x798, ((((_x816 : T_p521Uint1)) : GoUInt64)));
            _x817 = __tmp__._0;
            _x818 = __tmp__._1;
        };
        var _x819:GoUInt64 = ((0 : GoUInt64));
        var _x820:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x765, _x800, ((((_x818 : T_p521Uint1)) : GoUInt64)));
            _x819 = __tmp__._0;
            _x820 = __tmp__._1;
        };
        var _x821:GoUInt64 = ((0 : GoUInt64));
        var _x822:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, ((511 : GoUInt64)));
            _x822 = __tmp__._0;
            _x821 = __tmp__._1;
        };
        var _x823:GoUInt64 = ((0 : GoUInt64));
        var _x824:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x824 = __tmp__._0;
            _x823 = __tmp__._1;
        };
        var _x825:GoUInt64 = ((0 : GoUInt64));
        var _x826:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x826 = __tmp__._0;
            _x825 = __tmp__._1;
        };
        var _x827:GoUInt64 = ((0 : GoUInt64));
        var _x828:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x828 = __tmp__._0;
            _x827 = __tmp__._1;
        };
        var _x829:GoUInt64 = ((0 : GoUInt64));
        var _x830:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x830 = __tmp__._0;
            _x829 = __tmp__._1;
        };
        var _x831:GoUInt64 = ((0 : GoUInt64));
        var _x832:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x832 = __tmp__._0;
            _x831 = __tmp__._1;
        };
        var _x833:GoUInt64 = ((0 : GoUInt64));
        var _x834:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x834 = __tmp__._0;
            _x833 = __tmp__._1;
        };
        var _x835:GoUInt64 = ((0 : GoUInt64));
        var _x836:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x836 = __tmp__._0;
            _x835 = __tmp__._1;
        };
        var _x837:GoUInt64 = ((0 : GoUInt64));
        var _x838:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x838 = __tmp__._0;
            _x837 = __tmp__._1;
        };
        var _x839:GoUInt64 = ((0 : GoUInt64));
        var _x840:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x838, _x835, ((((0 : GoUInt64)) : GoUInt64)));
            _x839 = __tmp__._0;
            _x840 = __tmp__._1;
        };
        var _x841:GoUInt64 = ((0 : GoUInt64));
        var _x842:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x836, _x833, ((((_x840 : T_p521Uint1)) : GoUInt64)));
            _x841 = __tmp__._0;
            _x842 = __tmp__._1;
        };
        var _x843:GoUInt64 = ((0 : GoUInt64));
        var _x844:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x834, _x831, ((((_x842 : T_p521Uint1)) : GoUInt64)));
            _x843 = __tmp__._0;
            _x844 = __tmp__._1;
        };
        var _x845:GoUInt64 = ((0 : GoUInt64));
        var _x846:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x832, _x829, ((((_x844 : T_p521Uint1)) : GoUInt64)));
            _x845 = __tmp__._0;
            _x846 = __tmp__._1;
        };
        var _x847:GoUInt64 = ((0 : GoUInt64));
        var _x848:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x830, _x827, ((((_x846 : T_p521Uint1)) : GoUInt64)));
            _x847 = __tmp__._0;
            _x848 = __tmp__._1;
        };
        var _x849:GoUInt64 = ((0 : GoUInt64));
        var _x850:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x828, _x825, ((((_x848 : T_p521Uint1)) : GoUInt64)));
            _x849 = __tmp__._0;
            _x850 = __tmp__._1;
        };
        var _x851:GoUInt64 = ((0 : GoUInt64));
        var _x852:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x826, _x823, ((((_x850 : T_p521Uint1)) : GoUInt64)));
            _x851 = __tmp__._0;
            _x852 = __tmp__._1;
        };
        var _x853:GoUInt64 = ((0 : GoUInt64));
        var _x854:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x824, _x821, ((((_x852 : T_p521Uint1)) : GoUInt64)));
            _x853 = __tmp__._0;
            _x854 = __tmp__._1;
        };
        var _x855:GoUInt64 = (((((_x854 : T_p521Uint1)) : GoUInt64)) + _x822);
        var _x857:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x801, _x837, ((((0 : GoUInt64)) : GoUInt64)));
            _x857 = __tmp__._1;
        };
        var _x858:GoUInt64 = ((0 : GoUInt64));
        var _x859:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x803, _x839, ((((_x857 : T_p521Uint1)) : GoUInt64)));
            _x858 = __tmp__._0;
            _x859 = __tmp__._1;
        };
        var _x860:GoUInt64 = ((0 : GoUInt64));
        var _x861:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x805, _x841, ((((_x859 : T_p521Uint1)) : GoUInt64)));
            _x860 = __tmp__._0;
            _x861 = __tmp__._1;
        };
        var _x862:GoUInt64 = ((0 : GoUInt64));
        var _x863:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x807, _x843, ((((_x861 : T_p521Uint1)) : GoUInt64)));
            _x862 = __tmp__._0;
            _x863 = __tmp__._1;
        };
        var _x864:GoUInt64 = ((0 : GoUInt64));
        var _x865:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x809, _x845, ((((_x863 : T_p521Uint1)) : GoUInt64)));
            _x864 = __tmp__._0;
            _x865 = __tmp__._1;
        };
        var _x866:GoUInt64 = ((0 : GoUInt64));
        var _x867:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x811, _x847, ((((_x865 : T_p521Uint1)) : GoUInt64)));
            _x866 = __tmp__._0;
            _x867 = __tmp__._1;
        };
        var _x868:GoUInt64 = ((0 : GoUInt64));
        var _x869:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x813, _x849, ((((_x867 : T_p521Uint1)) : GoUInt64)));
            _x868 = __tmp__._0;
            _x869 = __tmp__._1;
        };
        var _x870:GoUInt64 = ((0 : GoUInt64));
        var _x871:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x815, _x851, ((((_x869 : T_p521Uint1)) : GoUInt64)));
            _x870 = __tmp__._0;
            _x871 = __tmp__._1;
        };
        var _x872:GoUInt64 = ((0 : GoUInt64));
        var _x873:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x817, _x853, ((((_x871 : T_p521Uint1)) : GoUInt64)));
            _x872 = __tmp__._0;
            _x873 = __tmp__._1;
        };
        var _x874:GoUInt64 = ((0 : GoUInt64));
        var _x875:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x819, _x855, ((((_x873 : T_p521Uint1)) : GoUInt64)));
            _x874 = __tmp__._0;
            _x875 = __tmp__._1;
        };
        var _x876:GoUInt64 = (((((_x875 : T_p521Uint1)) : GoUInt64)) + ((((_x820 : T_p521Uint1)) : GoUInt64)));
        var _x877:GoUInt64 = ((0 : GoUInt64));
        var _x878:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))));
            _x878 = __tmp__._0;
            _x877 = __tmp__._1;
        };
        var _x879:GoUInt64 = ((0 : GoUInt64));
        var _x880:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))));
            _x880 = __tmp__._0;
            _x879 = __tmp__._1;
        };
        var _x881:GoUInt64 = ((0 : GoUInt64));
        var _x882:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))));
            _x882 = __tmp__._0;
            _x881 = __tmp__._1;
        };
        var _x883:GoUInt64 = ((0 : GoUInt64));
        var _x884:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))));
            _x884 = __tmp__._0;
            _x883 = __tmp__._1;
        };
        var _x885:GoUInt64 = ((0 : GoUInt64));
        var _x886:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))));
            _x886 = __tmp__._0;
            _x885 = __tmp__._1;
        };
        var _x887:GoUInt64 = ((0 : GoUInt64));
        var _x888:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))));
            _x888 = __tmp__._0;
            _x887 = __tmp__._1;
        };
        var _x889:GoUInt64 = ((0 : GoUInt64));
        var _x890:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))));
            _x890 = __tmp__._0;
            _x889 = __tmp__._1;
        };
        var _x891:GoUInt64 = ((0 : GoUInt64));
        var _x892:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))));
            _x892 = __tmp__._0;
            _x891 = __tmp__._1;
        };
        var _x893:GoUInt64 = ((0 : GoUInt64));
        var _x894:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))));
            _x894 = __tmp__._0;
            _x893 = __tmp__._1;
        };
        var _x895:GoUInt64 = ((0 : GoUInt64));
        var _x896:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x894, _x891, ((((0 : GoUInt64)) : GoUInt64)));
            _x895 = __tmp__._0;
            _x896 = __tmp__._1;
        };
        var _x897:GoUInt64 = ((0 : GoUInt64));
        var _x898:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x892, _x889, ((((_x896 : T_p521Uint1)) : GoUInt64)));
            _x897 = __tmp__._0;
            _x898 = __tmp__._1;
        };
        var _x899:GoUInt64 = ((0 : GoUInt64));
        var _x900:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x890, _x887, ((((_x898 : T_p521Uint1)) : GoUInt64)));
            _x899 = __tmp__._0;
            _x900 = __tmp__._1;
        };
        var _x901:GoUInt64 = ((0 : GoUInt64));
        var _x902:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x888, _x885, ((((_x900 : T_p521Uint1)) : GoUInt64)));
            _x901 = __tmp__._0;
            _x902 = __tmp__._1;
        };
        var _x903:GoUInt64 = ((0 : GoUInt64));
        var _x904:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x886, _x883, ((((_x902 : T_p521Uint1)) : GoUInt64)));
            _x903 = __tmp__._0;
            _x904 = __tmp__._1;
        };
        var _x905:GoUInt64 = ((0 : GoUInt64));
        var _x906:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x884, _x881, ((((_x904 : T_p521Uint1)) : GoUInt64)));
            _x905 = __tmp__._0;
            _x906 = __tmp__._1;
        };
        var _x907:GoUInt64 = ((0 : GoUInt64));
        var _x908:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x882, _x879, ((((_x906 : T_p521Uint1)) : GoUInt64)));
            _x907 = __tmp__._0;
            _x908 = __tmp__._1;
        };
        var _x909:GoUInt64 = ((0 : GoUInt64));
        var _x910:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x880, _x877, ((((_x908 : T_p521Uint1)) : GoUInt64)));
            _x909 = __tmp__._0;
            _x910 = __tmp__._1;
        };
        var _x911:GoUInt64 = (((((_x910 : T_p521Uint1)) : GoUInt64)) + _x878);
        var _x912:GoUInt64 = ((0 : GoUInt64));
        var _x913:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x858, _x893, ((((0 : GoUInt64)) : GoUInt64)));
            _x912 = __tmp__._0;
            _x913 = __tmp__._1;
        };
        var _x914:GoUInt64 = ((0 : GoUInt64));
        var _x915:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x860, _x895, ((((_x913 : T_p521Uint1)) : GoUInt64)));
            _x914 = __tmp__._0;
            _x915 = __tmp__._1;
        };
        var _x916:GoUInt64 = ((0 : GoUInt64));
        var _x917:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x862, _x897, ((((_x915 : T_p521Uint1)) : GoUInt64)));
            _x916 = __tmp__._0;
            _x917 = __tmp__._1;
        };
        var _x918:GoUInt64 = ((0 : GoUInt64));
        var _x919:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x864, _x899, ((((_x917 : T_p521Uint1)) : GoUInt64)));
            _x918 = __tmp__._0;
            _x919 = __tmp__._1;
        };
        var _x920:GoUInt64 = ((0 : GoUInt64));
        var _x921:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x866, _x901, ((((_x919 : T_p521Uint1)) : GoUInt64)));
            _x920 = __tmp__._0;
            _x921 = __tmp__._1;
        };
        var _x922:GoUInt64 = ((0 : GoUInt64));
        var _x923:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x868, _x903, ((((_x921 : T_p521Uint1)) : GoUInt64)));
            _x922 = __tmp__._0;
            _x923 = __tmp__._1;
        };
        var _x924:GoUInt64 = ((0 : GoUInt64));
        var _x925:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x870, _x905, ((((_x923 : T_p521Uint1)) : GoUInt64)));
            _x924 = __tmp__._0;
            _x925 = __tmp__._1;
        };
        var _x926:GoUInt64 = ((0 : GoUInt64));
        var _x927:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x872, _x907, ((((_x925 : T_p521Uint1)) : GoUInt64)));
            _x926 = __tmp__._0;
            _x927 = __tmp__._1;
        };
        var _x928:GoUInt64 = ((0 : GoUInt64));
        var _x929:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x874, _x909, ((((_x927 : T_p521Uint1)) : GoUInt64)));
            _x928 = __tmp__._0;
            _x929 = __tmp__._1;
        };
        var _x930:GoUInt64 = ((0 : GoUInt64));
        var _x931:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x876, _x911, ((((_x929 : T_p521Uint1)) : GoUInt64)));
            _x930 = __tmp__._0;
            _x931 = __tmp__._1;
        };
        var _x932:GoUInt64 = ((0 : GoUInt64));
        var _x933:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, ((511 : GoUInt64)));
            _x933 = __tmp__._0;
            _x932 = __tmp__._1;
        };
        var _x934:GoUInt64 = ((0 : GoUInt64));
        var _x935:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x935 = __tmp__._0;
            _x934 = __tmp__._1;
        };
        var _x936:GoUInt64 = ((0 : GoUInt64));
        var _x937:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x937 = __tmp__._0;
            _x936 = __tmp__._1;
        };
        var _x938:GoUInt64 = ((0 : GoUInt64));
        var _x939:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x939 = __tmp__._0;
            _x938 = __tmp__._1;
        };
        var _x940:GoUInt64 = ((0 : GoUInt64));
        var _x941:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x941 = __tmp__._0;
            _x940 = __tmp__._1;
        };
        var _x942:GoUInt64 = ((0 : GoUInt64));
        var _x943:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x943 = __tmp__._0;
            _x942 = __tmp__._1;
        };
        var _x944:GoUInt64 = ((0 : GoUInt64));
        var _x945:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x945 = __tmp__._0;
            _x944 = __tmp__._1;
        };
        var _x946:GoUInt64 = ((0 : GoUInt64));
        var _x947:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x947 = __tmp__._0;
            _x946 = __tmp__._1;
        };
        var _x948:GoUInt64 = ((0 : GoUInt64));
        var _x949:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x949 = __tmp__._0;
            _x948 = __tmp__._1;
        };
        var _x950:GoUInt64 = ((0 : GoUInt64));
        var _x951:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x949, _x946, ((((0 : GoUInt64)) : GoUInt64)));
            _x950 = __tmp__._0;
            _x951 = __tmp__._1;
        };
        var _x952:GoUInt64 = ((0 : GoUInt64));
        var _x953:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x947, _x944, ((((_x951 : T_p521Uint1)) : GoUInt64)));
            _x952 = __tmp__._0;
            _x953 = __tmp__._1;
        };
        var _x954:GoUInt64 = ((0 : GoUInt64));
        var _x955:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x945, _x942, ((((_x953 : T_p521Uint1)) : GoUInt64)));
            _x954 = __tmp__._0;
            _x955 = __tmp__._1;
        };
        var _x956:GoUInt64 = ((0 : GoUInt64));
        var _x957:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x943, _x940, ((((_x955 : T_p521Uint1)) : GoUInt64)));
            _x956 = __tmp__._0;
            _x957 = __tmp__._1;
        };
        var _x958:GoUInt64 = ((0 : GoUInt64));
        var _x959:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x941, _x938, ((((_x957 : T_p521Uint1)) : GoUInt64)));
            _x958 = __tmp__._0;
            _x959 = __tmp__._1;
        };
        var _x960:GoUInt64 = ((0 : GoUInt64));
        var _x961:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x939, _x936, ((((_x959 : T_p521Uint1)) : GoUInt64)));
            _x960 = __tmp__._0;
            _x961 = __tmp__._1;
        };
        var _x962:GoUInt64 = ((0 : GoUInt64));
        var _x963:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x937, _x934, ((((_x961 : T_p521Uint1)) : GoUInt64)));
            _x962 = __tmp__._0;
            _x963 = __tmp__._1;
        };
        var _x964:GoUInt64 = ((0 : GoUInt64));
        var _x965:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x935, _x932, ((((_x963 : T_p521Uint1)) : GoUInt64)));
            _x964 = __tmp__._0;
            _x965 = __tmp__._1;
        };
        var _x966:GoUInt64 = (((((_x965 : T_p521Uint1)) : GoUInt64)) + _x933);
        var _x968:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x912, _x948, ((((0 : GoUInt64)) : GoUInt64)));
            _x968 = __tmp__._1;
        };
        var _x969:GoUInt64 = ((0 : GoUInt64));
        var _x970:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x914, _x950, ((((_x968 : T_p521Uint1)) : GoUInt64)));
            _x969 = __tmp__._0;
            _x970 = __tmp__._1;
        };
        var _x971:GoUInt64 = ((0 : GoUInt64));
        var _x972:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x916, _x952, ((((_x970 : T_p521Uint1)) : GoUInt64)));
            _x971 = __tmp__._0;
            _x972 = __tmp__._1;
        };
        var _x973:GoUInt64 = ((0 : GoUInt64));
        var _x974:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x918, _x954, ((((_x972 : T_p521Uint1)) : GoUInt64)));
            _x973 = __tmp__._0;
            _x974 = __tmp__._1;
        };
        var _x975:GoUInt64 = ((0 : GoUInt64));
        var _x976:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x920, _x956, ((((_x974 : T_p521Uint1)) : GoUInt64)));
            _x975 = __tmp__._0;
            _x976 = __tmp__._1;
        };
        var _x977:GoUInt64 = ((0 : GoUInt64));
        var _x978:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x922, _x958, ((((_x976 : T_p521Uint1)) : GoUInt64)));
            _x977 = __tmp__._0;
            _x978 = __tmp__._1;
        };
        var _x979:GoUInt64 = ((0 : GoUInt64));
        var _x980:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x924, _x960, ((((_x978 : T_p521Uint1)) : GoUInt64)));
            _x979 = __tmp__._0;
            _x980 = __tmp__._1;
        };
        var _x981:GoUInt64 = ((0 : GoUInt64));
        var _x982:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x926, _x962, ((((_x980 : T_p521Uint1)) : GoUInt64)));
            _x981 = __tmp__._0;
            _x982 = __tmp__._1;
        };
        var _x983:GoUInt64 = ((0 : GoUInt64));
        var _x984:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x928, _x964, ((((_x982 : T_p521Uint1)) : GoUInt64)));
            _x983 = __tmp__._0;
            _x984 = __tmp__._1;
        };
        var _x985:GoUInt64 = ((0 : GoUInt64));
        var _x986:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x930, _x966, ((((_x984 : T_p521Uint1)) : GoUInt64)));
            _x985 = __tmp__._0;
            _x986 = __tmp__._1;
        };
        var _x987:GoUInt64 = (((((_x986 : T_p521Uint1)) : GoUInt64)) + ((((_x931 : T_p521Uint1)) : GoUInt64)));
        var _x988:GoUInt64 = ((0 : GoUInt64));
        var _x989:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x969, (("18446744073709551615" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x988 = __tmp__._0;
            _x989 = __tmp__._1;
        };
        var _x990:GoUInt64 = ((0 : GoUInt64));
        var _x991:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x971, (("18446744073709551615" : GoUInt64)), ((((_x989 : T_p521Uint1)) : GoUInt64)));
            _x990 = __tmp__._0;
            _x991 = __tmp__._1;
        };
        var _x992:GoUInt64 = ((0 : GoUInt64));
        var _x993:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x973, (("18446744073709551615" : GoUInt64)), ((((_x991 : T_p521Uint1)) : GoUInt64)));
            _x992 = __tmp__._0;
            _x993 = __tmp__._1;
        };
        var _x994:GoUInt64 = ((0 : GoUInt64));
        var _x995:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x975, (("18446744073709551615" : GoUInt64)), ((((_x993 : T_p521Uint1)) : GoUInt64)));
            _x994 = __tmp__._0;
            _x995 = __tmp__._1;
        };
        var _x996:GoUInt64 = ((0 : GoUInt64));
        var _x997:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x977, (("18446744073709551615" : GoUInt64)), ((((_x995 : T_p521Uint1)) : GoUInt64)));
            _x996 = __tmp__._0;
            _x997 = __tmp__._1;
        };
        var _x998:GoUInt64 = ((0 : GoUInt64));
        var _x999:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x979, (("18446744073709551615" : GoUInt64)), ((((_x997 : T_p521Uint1)) : GoUInt64)));
            _x998 = __tmp__._0;
            _x999 = __tmp__._1;
        };
        var _x1000:GoUInt64 = ((0 : GoUInt64));
        var _x1001:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x981, (("18446744073709551615" : GoUInt64)), ((((_x999 : T_p521Uint1)) : GoUInt64)));
            _x1000 = __tmp__._0;
            _x1001 = __tmp__._1;
        };
        var _x1002:GoUInt64 = ((0 : GoUInt64));
        var _x1003:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x983, (("18446744073709551615" : GoUInt64)), ((((_x1001 : T_p521Uint1)) : GoUInt64)));
            _x1002 = __tmp__._0;
            _x1003 = __tmp__._1;
        };
        var _x1004:GoUInt64 = ((0 : GoUInt64));
        var _x1005:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x985, ((511 : GoUInt64)), ((((_x1003 : T_p521Uint1)) : GoUInt64)));
            _x1004 = __tmp__._0;
            _x1005 = __tmp__._1;
        };
        var _x1007:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x987, ((((0 : GoUInt64)) : GoUInt64)), ((((_x1005 : T_p521Uint1)) : GoUInt64)));
            _x1007 = __tmp__._1;
        };
        var _x1008:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1008), ((_x1007 : T_p521Uint1)), _x988, _x969);
        var _x1009:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1009), ((_x1007 : T_p521Uint1)), _x990, _x971);
        var _x1010:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1010), ((_x1007 : T_p521Uint1)), _x992, _x973);
        var _x1011:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1011), ((_x1007 : T_p521Uint1)), _x994, _x975);
        var _x1012:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1012), ((_x1007 : T_p521Uint1)), _x996, _x977);
        var _x1013:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1013), ((_x1007 : T_p521Uint1)), _x998, _x979);
        var _x1014:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1014), ((_x1007 : T_p521Uint1)), _x1000, _x981);
        var _x1015:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1015), ((_x1007 : T_p521Uint1)), _x1002, _x983);
        var _x1016:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1016), ((_x1007 : T_p521Uint1)), _x1004, _x985);
        if (_out1 != null) _out1[((0 : GoInt))] = _x1008;
        if (_out1 != null) _out1[((1 : GoInt))] = _x1009;
        if (_out1 != null) _out1[((2 : GoInt))] = _x1010;
        if (_out1 != null) _out1[((3 : GoInt))] = _x1011;
        if (_out1 != null) _out1[((4 : GoInt))] = _x1012;
        if (_out1 != null) _out1[((5 : GoInt))] = _x1013;
        if (_out1 != null) _out1[((6 : GoInt))] = _x1014;
        if (_out1 != null) _out1[((7 : GoInt))] = _x1015;
        if (_out1 != null) _out1[((8 : GoInt))] = _x1016;
    }
/**
    // p521Square squares a field element in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) * eval (from_montgomery arg1)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521Square(_out1:T_p521MontgomeryDomainFieldElement, _arg1:T_p521MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt64 = (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64)));
        var _x8:GoUInt64 = (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64)));
        var _x9:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        var _x11:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:GoUInt64 = ((0 : GoUInt64));
        var _x13:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:GoUInt64 = ((0 : GoUInt64));
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        var _x17:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x17 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x19 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x21 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x23 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x25 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x9, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x27 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x27, _x24, ((((0 : GoUInt64)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x25, _x22, ((((_x29 : T_p521Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x23, _x20, ((((_x31 : T_p521Uint1)) : GoUInt64)));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x21, _x18, ((((_x33 : T_p521Uint1)) : GoUInt64)));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x16, ((((_x35 : T_p521Uint1)) : GoUInt64)));
            _x36 = __tmp__._0;
            _x37 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x14, ((((_x37 : T_p521Uint1)) : GoUInt64)));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:GoUInt64 = ((0 : GoUInt64));
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x12, ((((_x39 : T_p521Uint1)) : GoUInt64)));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x10, ((((_x41 : T_p521Uint1)) : GoUInt64)));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:GoUInt64 = (((((_x43 : T_p521Uint1)) : GoUInt64)) + _x11);
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, ((511 : GoUInt64)));
            _x46 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x47:GoUInt64 = ((0 : GoUInt64));
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x48 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x50 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x52 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x54 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x56 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x58 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x60 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        var _x62:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x26, (("18446744073709551615" : GoUInt64)));
            _x62 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x62, _x59, ((((0 : GoUInt64)) : GoUInt64)));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x60, _x57, ((((_x64 : T_p521Uint1)) : GoUInt64)));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x58, _x55, ((((_x66 : T_p521Uint1)) : GoUInt64)));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x56, _x53, ((((_x68 : T_p521Uint1)) : GoUInt64)));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x54, _x51, ((((_x70 : T_p521Uint1)) : GoUInt64)));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:GoUInt64 = ((0 : GoUInt64));
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x52, _x49, ((((_x72 : T_p521Uint1)) : GoUInt64)));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, _x47, ((((_x74 : T_p521Uint1)) : GoUInt64)));
            _x75 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, _x45, ((((_x76 : T_p521Uint1)) : GoUInt64)));
            _x77 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x79:GoUInt64 = (((((_x78 : T_p521Uint1)) : GoUInt64)) + _x46);
        var _x81:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x26, _x61, ((((0 : GoUInt64)) : GoUInt64)));
            _x81 = __tmp__._1;
        };
        var _x82:GoUInt64 = ((0 : GoUInt64));
        var _x83:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x28, _x63, ((((_x81 : T_p521Uint1)) : GoUInt64)));
            _x82 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x84:GoUInt64 = ((0 : GoUInt64));
        var _x85:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x30, _x65, ((((_x83 : T_p521Uint1)) : GoUInt64)));
            _x84 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x86:GoUInt64 = ((0 : GoUInt64));
        var _x87:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x32, _x67, ((((_x85 : T_p521Uint1)) : GoUInt64)));
            _x86 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x88:GoUInt64 = ((0 : GoUInt64));
        var _x89:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x34, _x69, ((((_x87 : T_p521Uint1)) : GoUInt64)));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:GoUInt64 = ((0 : GoUInt64));
        var _x91:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x36, _x71, ((((_x89 : T_p521Uint1)) : GoUInt64)));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x38, _x73, ((((_x91 : T_p521Uint1)) : GoUInt64)));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x40, _x75, ((((_x93 : T_p521Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x42, _x77, ((((_x95 : T_p521Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x44, _x79, ((((_x97 : T_p521Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x101 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x103 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x104:GoUInt64 = ((0 : GoUInt64));
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x105 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x106:GoUInt64 = ((0 : GoUInt64));
        var _x107:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x107 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x108:GoUInt64 = ((0 : GoUInt64));
        var _x109:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x109 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        var _x111:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x111 = __tmp__._0;
            _x110 = __tmp__._1;
        };
        var _x112:GoUInt64 = ((0 : GoUInt64));
        var _x113:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x113 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        var _x115:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x115 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x117 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x118:GoUInt64 = ((0 : GoUInt64));
        var _x119:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, _x114, ((((0 : GoUInt64)) : GoUInt64)));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:GoUInt64 = ((0 : GoUInt64));
        var _x121:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x112, ((((_x119 : T_p521Uint1)) : GoUInt64)));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:GoUInt64 = ((0 : GoUInt64));
        var _x123:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x110, ((((_x121 : T_p521Uint1)) : GoUInt64)));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:GoUInt64 = ((0 : GoUInt64));
        var _x125:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x108, ((((_x123 : T_p521Uint1)) : GoUInt64)));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:GoUInt64 = ((0 : GoUInt64));
        var _x127:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x109, _x106, ((((_x125 : T_p521Uint1)) : GoUInt64)));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:GoUInt64 = ((0 : GoUInt64));
        var _x129:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x107, _x104, ((((_x127 : T_p521Uint1)) : GoUInt64)));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:GoUInt64 = ((0 : GoUInt64));
        var _x131:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x105, _x102, ((((_x129 : T_p521Uint1)) : GoUInt64)));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:GoUInt64 = ((0 : GoUInt64));
        var _x133:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x103, _x100, ((((_x131 : T_p521Uint1)) : GoUInt64)));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:GoUInt64 = (((((_x133 : T_p521Uint1)) : GoUInt64)) + _x101);
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x82, _x116, ((((0 : GoUInt64)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x84, _x118, ((((_x136 : T_p521Uint1)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x86, _x120, ((((_x138 : T_p521Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x88, _x122, ((((_x140 : T_p521Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x90, _x124, ((((_x142 : T_p521Uint1)) : GoUInt64)));
            _x143 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x92, _x126, ((((_x144 : T_p521Uint1)) : GoUInt64)));
            _x145 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x94, _x128, ((((_x146 : T_p521Uint1)) : GoUInt64)));
            _x147 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x96, _x130, ((((_x148 : T_p521Uint1)) : GoUInt64)));
            _x149 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x98, _x132, ((((_x150 : T_p521Uint1)) : GoUInt64)));
            _x151 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((_x99 : T_p521Uint1)) : GoUInt64)), _x134, ((((_x152 : T_p521Uint1)) : GoUInt64)));
            _x153 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x155:GoUInt64 = ((0 : GoUInt64));
        var _x156:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, ((511 : GoUInt64)));
            _x156 = __tmp__._0;
            _x155 = __tmp__._1;
        };
        var _x157:GoUInt64 = ((0 : GoUInt64));
        var _x158:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:GoUInt64 = ((0 : GoUInt64));
        var _x160:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:GoUInt64 = ((0 : GoUInt64));
        var _x162:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x162 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x163:GoUInt64 = ((0 : GoUInt64));
        var _x164:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x164 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x165:GoUInt64 = ((0 : GoUInt64));
        var _x166:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x166 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x167:GoUInt64 = ((0 : GoUInt64));
        var _x168:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x168 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x169:GoUInt64 = ((0 : GoUInt64));
        var _x170:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x170 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x171:GoUInt64 = ((0 : GoUInt64));
        var _x172:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x135, (("18446744073709551615" : GoUInt64)));
            _x172 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        var _x174:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x172, _x169, ((((0 : GoUInt64)) : GoUInt64)));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        var _x176:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x170, _x167, ((((_x174 : T_p521Uint1)) : GoUInt64)));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x177:GoUInt64 = ((0 : GoUInt64));
        var _x178:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x168, _x165, ((((_x176 : T_p521Uint1)) : GoUInt64)));
            _x177 = __tmp__._0;
            _x178 = __tmp__._1;
        };
        var _x179:GoUInt64 = ((0 : GoUInt64));
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x166, _x163, ((((_x178 : T_p521Uint1)) : GoUInt64)));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x164, _x161, ((((_x180 : T_p521Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        var _x184:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x162, _x159, ((((_x182 : T_p521Uint1)) : GoUInt64)));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x160, _x157, ((((_x184 : T_p521Uint1)) : GoUInt64)));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x158, _x155, ((((_x186 : T_p521Uint1)) : GoUInt64)));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:GoUInt64 = (((((_x188 : T_p521Uint1)) : GoUInt64)) + _x156);
        var _x191:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x135, _x171, ((((0 : GoUInt64)) : GoUInt64)));
            _x191 = __tmp__._1;
        };
        var _x192:GoUInt64 = ((0 : GoUInt64));
        var _x193:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x137, _x173, ((((_x191 : T_p521Uint1)) : GoUInt64)));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:GoUInt64 = ((0 : GoUInt64));
        var _x195:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x139, _x175, ((((_x193 : T_p521Uint1)) : GoUInt64)));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:GoUInt64 = ((0 : GoUInt64));
        var _x197:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x177, ((((_x195 : T_p521Uint1)) : GoUInt64)));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:GoUInt64 = ((0 : GoUInt64));
        var _x199:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x179, ((((_x197 : T_p521Uint1)) : GoUInt64)));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:GoUInt64 = ((0 : GoUInt64));
        var _x201:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x145, _x181, ((((_x199 : T_p521Uint1)) : GoUInt64)));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:GoUInt64 = ((0 : GoUInt64));
        var _x203:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x147, _x183, ((((_x201 : T_p521Uint1)) : GoUInt64)));
            _x202 = __tmp__._0;
            _x203 = __tmp__._1;
        };
        var _x204:GoUInt64 = ((0 : GoUInt64));
        var _x205:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x149, _x185, ((((_x203 : T_p521Uint1)) : GoUInt64)));
            _x204 = __tmp__._0;
            _x205 = __tmp__._1;
        };
        var _x206:GoUInt64 = ((0 : GoUInt64));
        var _x207:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x151, _x187, ((((_x205 : T_p521Uint1)) : GoUInt64)));
            _x206 = __tmp__._0;
            _x207 = __tmp__._1;
        };
        var _x208:GoUInt64 = ((0 : GoUInt64));
        var _x209:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x153, _x189, ((((_x207 : T_p521Uint1)) : GoUInt64)));
            _x208 = __tmp__._0;
            _x209 = __tmp__._1;
        };
        var _x210:GoUInt64 = (((((_x209 : T_p521Uint1)) : GoUInt64)) + ((((_x154 : T_p521Uint1)) : GoUInt64)));
        var _x211:GoUInt64 = ((0 : GoUInt64));
        var _x212:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x212 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x213:GoUInt64 = ((0 : GoUInt64));
        var _x214:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x214 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x215:GoUInt64 = ((0 : GoUInt64));
        var _x216:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x216 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x217:GoUInt64 = ((0 : GoUInt64));
        var _x218:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x218 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x219:GoUInt64 = ((0 : GoUInt64));
        var _x220:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x220 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x221:GoUInt64 = ((0 : GoUInt64));
        var _x222:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x222 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x223:GoUInt64 = ((0 : GoUInt64));
        var _x224:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:GoUInt64 = ((0 : GoUInt64));
        var _x226:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        var _x228:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x2, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:GoUInt64 = ((0 : GoUInt64));
        var _x230:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, _x225, ((((0 : GoUInt64)) : GoUInt64)));
            _x229 = __tmp__._0;
            _x230 = __tmp__._1;
        };
        var _x231:GoUInt64 = ((0 : GoUInt64));
        var _x232:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x226, _x223, ((((_x230 : T_p521Uint1)) : GoUInt64)));
            _x231 = __tmp__._0;
            _x232 = __tmp__._1;
        };
        var _x233:GoUInt64 = ((0 : GoUInt64));
        var _x234:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x224, _x221, ((((_x232 : T_p521Uint1)) : GoUInt64)));
            _x233 = __tmp__._0;
            _x234 = __tmp__._1;
        };
        var _x235:GoUInt64 = ((0 : GoUInt64));
        var _x236:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x222, _x219, ((((_x234 : T_p521Uint1)) : GoUInt64)));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:GoUInt64 = ((0 : GoUInt64));
        var _x238:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x220, _x217, ((((_x236 : T_p521Uint1)) : GoUInt64)));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:GoUInt64 = ((0 : GoUInt64));
        var _x240:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x218, _x215, ((((_x238 : T_p521Uint1)) : GoUInt64)));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        var _x242:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x216, _x213, ((((_x240 : T_p521Uint1)) : GoUInt64)));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:GoUInt64 = ((0 : GoUInt64));
        var _x244:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x214, _x211, ((((_x242 : T_p521Uint1)) : GoUInt64)));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x245:GoUInt64 = (((((_x244 : T_p521Uint1)) : GoUInt64)) + _x212);
        var _x246:GoUInt64 = ((0 : GoUInt64));
        var _x247:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x192, _x227, ((((0 : GoUInt64)) : GoUInt64)));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:GoUInt64 = ((0 : GoUInt64));
        var _x249:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x229, ((((_x247 : T_p521Uint1)) : GoUInt64)));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:GoUInt64 = ((0 : GoUInt64));
        var _x251:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x231, ((((_x249 : T_p521Uint1)) : GoUInt64)));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:GoUInt64 = ((0 : GoUInt64));
        var _x253:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x198, _x233, ((((_x251 : T_p521Uint1)) : GoUInt64)));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:GoUInt64 = ((0 : GoUInt64));
        var _x255:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x200, _x235, ((((_x253 : T_p521Uint1)) : GoUInt64)));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:GoUInt64 = ((0 : GoUInt64));
        var _x257:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x202, _x237, ((((_x255 : T_p521Uint1)) : GoUInt64)));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:GoUInt64 = ((0 : GoUInt64));
        var _x259:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x204, _x239, ((((_x257 : T_p521Uint1)) : GoUInt64)));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:GoUInt64 = ((0 : GoUInt64));
        var _x261:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x206, _x241, ((((_x259 : T_p521Uint1)) : GoUInt64)));
            _x260 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x262:GoUInt64 = ((0 : GoUInt64));
        var _x263:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x208, _x243, ((((_x261 : T_p521Uint1)) : GoUInt64)));
            _x262 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x264:GoUInt64 = ((0 : GoUInt64));
        var _x265:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x210, _x245, ((((_x263 : T_p521Uint1)) : GoUInt64)));
            _x264 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x266:GoUInt64 = ((0 : GoUInt64));
        var _x267:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, ((511 : GoUInt64)));
            _x267 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x268:GoUInt64 = ((0 : GoUInt64));
        var _x269:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x269 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x270:GoUInt64 = ((0 : GoUInt64));
        var _x271:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x271 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x272:GoUInt64 = ((0 : GoUInt64));
        var _x273:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x273 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x274:GoUInt64 = ((0 : GoUInt64));
        var _x275:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x275 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x276:GoUInt64 = ((0 : GoUInt64));
        var _x277:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x277 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x278:GoUInt64 = ((0 : GoUInt64));
        var _x279:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x279 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x280:GoUInt64 = ((0 : GoUInt64));
        var _x281:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x281 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x282:GoUInt64 = ((0 : GoUInt64));
        var _x283:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x246, (("18446744073709551615" : GoUInt64)));
            _x283 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x284:GoUInt64 = ((0 : GoUInt64));
        var _x285:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x283, _x280, ((((0 : GoUInt64)) : GoUInt64)));
            _x284 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x286:GoUInt64 = ((0 : GoUInt64));
        var _x287:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x281, _x278, ((((_x285 : T_p521Uint1)) : GoUInt64)));
            _x286 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x288:GoUInt64 = ((0 : GoUInt64));
        var _x289:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x279, _x276, ((((_x287 : T_p521Uint1)) : GoUInt64)));
            _x288 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x290:GoUInt64 = ((0 : GoUInt64));
        var _x291:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x277, _x274, ((((_x289 : T_p521Uint1)) : GoUInt64)));
            _x290 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x292:GoUInt64 = ((0 : GoUInt64));
        var _x293:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x275, _x272, ((((_x291 : T_p521Uint1)) : GoUInt64)));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:GoUInt64 = ((0 : GoUInt64));
        var _x295:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x273, _x270, ((((_x293 : T_p521Uint1)) : GoUInt64)));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:GoUInt64 = ((0 : GoUInt64));
        var _x297:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x271, _x268, ((((_x295 : T_p521Uint1)) : GoUInt64)));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:GoUInt64 = ((0 : GoUInt64));
        var _x299:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x269, _x266, ((((_x297 : T_p521Uint1)) : GoUInt64)));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300:GoUInt64 = (((((_x299 : T_p521Uint1)) : GoUInt64)) + _x267);
        var _x302:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x246, _x282, ((((0 : GoUInt64)) : GoUInt64)));
            _x302 = __tmp__._1;
        };
        var _x303:GoUInt64 = ((0 : GoUInt64));
        var _x304:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x248, _x284, ((((_x302 : T_p521Uint1)) : GoUInt64)));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:GoUInt64 = ((0 : GoUInt64));
        var _x306:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x250, _x286, ((((_x304 : T_p521Uint1)) : GoUInt64)));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:GoUInt64 = ((0 : GoUInt64));
        var _x308:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x252, _x288, ((((_x306 : T_p521Uint1)) : GoUInt64)));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:GoUInt64 = ((0 : GoUInt64));
        var _x310:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x254, _x290, ((((_x308 : T_p521Uint1)) : GoUInt64)));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x311:GoUInt64 = ((0 : GoUInt64));
        var _x312:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x256, _x292, ((((_x310 : T_p521Uint1)) : GoUInt64)));
            _x311 = __tmp__._0;
            _x312 = __tmp__._1;
        };
        var _x313:GoUInt64 = ((0 : GoUInt64));
        var _x314:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x258, _x294, ((((_x312 : T_p521Uint1)) : GoUInt64)));
            _x313 = __tmp__._0;
            _x314 = __tmp__._1;
        };
        var _x315:GoUInt64 = ((0 : GoUInt64));
        var _x316:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x260, _x296, ((((_x314 : T_p521Uint1)) : GoUInt64)));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:GoUInt64 = ((0 : GoUInt64));
        var _x318:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x262, _x298, ((((_x316 : T_p521Uint1)) : GoUInt64)));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:GoUInt64 = ((0 : GoUInt64));
        var _x320:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x264, _x300, ((((_x318 : T_p521Uint1)) : GoUInt64)));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321:GoUInt64 = (((((_x320 : T_p521Uint1)) : GoUInt64)) + ((((_x265 : T_p521Uint1)) : GoUInt64)));
        var _x322:GoUInt64 = ((0 : GoUInt64));
        var _x323:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x323 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x324:GoUInt64 = ((0 : GoUInt64));
        var _x325:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x325 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x326:GoUInt64 = ((0 : GoUInt64));
        var _x327:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x327 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x328:GoUInt64 = ((0 : GoUInt64));
        var _x329:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x329 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x330:GoUInt64 = ((0 : GoUInt64));
        var _x331:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x331 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x332:GoUInt64 = ((0 : GoUInt64));
        var _x333:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x333 = __tmp__._0;
            _x332 = __tmp__._1;
        };
        var _x334:GoUInt64 = ((0 : GoUInt64));
        var _x335:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x335 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x336:GoUInt64 = ((0 : GoUInt64));
        var _x337:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x337 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x338:GoUInt64 = ((0 : GoUInt64));
        var _x339:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x3, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x339 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x340:GoUInt64 = ((0 : GoUInt64));
        var _x341:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x339, _x336, ((((0 : GoUInt64)) : GoUInt64)));
            _x340 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x342:GoUInt64 = ((0 : GoUInt64));
        var _x343:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x337, _x334, ((((_x341 : T_p521Uint1)) : GoUInt64)));
            _x342 = __tmp__._0;
            _x343 = __tmp__._1;
        };
        var _x344:GoUInt64 = ((0 : GoUInt64));
        var _x345:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x335, _x332, ((((_x343 : T_p521Uint1)) : GoUInt64)));
            _x344 = __tmp__._0;
            _x345 = __tmp__._1;
        };
        var _x346:GoUInt64 = ((0 : GoUInt64));
        var _x347:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x333, _x330, ((((_x345 : T_p521Uint1)) : GoUInt64)));
            _x346 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x348:GoUInt64 = ((0 : GoUInt64));
        var _x349:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x331, _x328, ((((_x347 : T_p521Uint1)) : GoUInt64)));
            _x348 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x350:GoUInt64 = ((0 : GoUInt64));
        var _x351:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x329, _x326, ((((_x349 : T_p521Uint1)) : GoUInt64)));
            _x350 = __tmp__._0;
            _x351 = __tmp__._1;
        };
        var _x352:GoUInt64 = ((0 : GoUInt64));
        var _x353:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x327, _x324, ((((_x351 : T_p521Uint1)) : GoUInt64)));
            _x352 = __tmp__._0;
            _x353 = __tmp__._1;
        };
        var _x354:GoUInt64 = ((0 : GoUInt64));
        var _x355:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x325, _x322, ((((_x353 : T_p521Uint1)) : GoUInt64)));
            _x354 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x356:GoUInt64 = (((((_x355 : T_p521Uint1)) : GoUInt64)) + _x323);
        var _x357:GoUInt64 = ((0 : GoUInt64));
        var _x358:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x303, _x338, ((((0 : GoUInt64)) : GoUInt64)));
            _x357 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x359:GoUInt64 = ((0 : GoUInt64));
        var _x360:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x305, _x340, ((((_x358 : T_p521Uint1)) : GoUInt64)));
            _x359 = __tmp__._0;
            _x360 = __tmp__._1;
        };
        var _x361:GoUInt64 = ((0 : GoUInt64));
        var _x362:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x307, _x342, ((((_x360 : T_p521Uint1)) : GoUInt64)));
            _x361 = __tmp__._0;
            _x362 = __tmp__._1;
        };
        var _x363:GoUInt64 = ((0 : GoUInt64));
        var _x364:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x309, _x344, ((((_x362 : T_p521Uint1)) : GoUInt64)));
            _x363 = __tmp__._0;
            _x364 = __tmp__._1;
        };
        var _x365:GoUInt64 = ((0 : GoUInt64));
        var _x366:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x311, _x346, ((((_x364 : T_p521Uint1)) : GoUInt64)));
            _x365 = __tmp__._0;
            _x366 = __tmp__._1;
        };
        var _x367:GoUInt64 = ((0 : GoUInt64));
        var _x368:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x313, _x348, ((((_x366 : T_p521Uint1)) : GoUInt64)));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:GoUInt64 = ((0 : GoUInt64));
        var _x370:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x315, _x350, ((((_x368 : T_p521Uint1)) : GoUInt64)));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:GoUInt64 = ((0 : GoUInt64));
        var _x372:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x317, _x352, ((((_x370 : T_p521Uint1)) : GoUInt64)));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:GoUInt64 = ((0 : GoUInt64));
        var _x374:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x319, _x354, ((((_x372 : T_p521Uint1)) : GoUInt64)));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:GoUInt64 = ((0 : GoUInt64));
        var _x376:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x321, _x356, ((((_x374 : T_p521Uint1)) : GoUInt64)));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x377:GoUInt64 = ((0 : GoUInt64));
        var _x378:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, ((511 : GoUInt64)));
            _x378 = __tmp__._0;
            _x377 = __tmp__._1;
        };
        var _x379:GoUInt64 = ((0 : GoUInt64));
        var _x380:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x380 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x381:GoUInt64 = ((0 : GoUInt64));
        var _x382:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x382 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x383:GoUInt64 = ((0 : GoUInt64));
        var _x384:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x384 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x385:GoUInt64 = ((0 : GoUInt64));
        var _x386:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x386 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x387:GoUInt64 = ((0 : GoUInt64));
        var _x388:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x388 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x389:GoUInt64 = ((0 : GoUInt64));
        var _x390:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x390 = __tmp__._0;
            _x389 = __tmp__._1;
        };
        var _x391:GoUInt64 = ((0 : GoUInt64));
        var _x392:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x392 = __tmp__._0;
            _x391 = __tmp__._1;
        };
        var _x393:GoUInt64 = ((0 : GoUInt64));
        var _x394:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x357, (("18446744073709551615" : GoUInt64)));
            _x394 = __tmp__._0;
            _x393 = __tmp__._1;
        };
        var _x395:GoUInt64 = ((0 : GoUInt64));
        var _x396:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x394, _x391, ((((0 : GoUInt64)) : GoUInt64)));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:GoUInt64 = ((0 : GoUInt64));
        var _x398:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x392, _x389, ((((_x396 : T_p521Uint1)) : GoUInt64)));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:GoUInt64 = ((0 : GoUInt64));
        var _x400:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x390, _x387, ((((_x398 : T_p521Uint1)) : GoUInt64)));
            _x399 = __tmp__._0;
            _x400 = __tmp__._1;
        };
        var _x401:GoUInt64 = ((0 : GoUInt64));
        var _x402:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x388, _x385, ((((_x400 : T_p521Uint1)) : GoUInt64)));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x403:GoUInt64 = ((0 : GoUInt64));
        var _x404:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x386, _x383, ((((_x402 : T_p521Uint1)) : GoUInt64)));
            _x403 = __tmp__._0;
            _x404 = __tmp__._1;
        };
        var _x405:GoUInt64 = ((0 : GoUInt64));
        var _x406:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x384, _x381, ((((_x404 : T_p521Uint1)) : GoUInt64)));
            _x405 = __tmp__._0;
            _x406 = __tmp__._1;
        };
        var _x407:GoUInt64 = ((0 : GoUInt64));
        var _x408:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x382, _x379, ((((_x406 : T_p521Uint1)) : GoUInt64)));
            _x407 = __tmp__._0;
            _x408 = __tmp__._1;
        };
        var _x409:GoUInt64 = ((0 : GoUInt64));
        var _x410:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x380, _x377, ((((_x408 : T_p521Uint1)) : GoUInt64)));
            _x409 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x411:GoUInt64 = (((((_x410 : T_p521Uint1)) : GoUInt64)) + _x378);
        var _x413:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x357, _x393, ((((0 : GoUInt64)) : GoUInt64)));
            _x413 = __tmp__._1;
        };
        var _x414:GoUInt64 = ((0 : GoUInt64));
        var _x415:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x359, _x395, ((((_x413 : T_p521Uint1)) : GoUInt64)));
            _x414 = __tmp__._0;
            _x415 = __tmp__._1;
        };
        var _x416:GoUInt64 = ((0 : GoUInt64));
        var _x417:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x361, _x397, ((((_x415 : T_p521Uint1)) : GoUInt64)));
            _x416 = __tmp__._0;
            _x417 = __tmp__._1;
        };
        var _x418:GoUInt64 = ((0 : GoUInt64));
        var _x419:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x363, _x399, ((((_x417 : T_p521Uint1)) : GoUInt64)));
            _x418 = __tmp__._0;
            _x419 = __tmp__._1;
        };
        var _x420:GoUInt64 = ((0 : GoUInt64));
        var _x421:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x365, _x401, ((((_x419 : T_p521Uint1)) : GoUInt64)));
            _x420 = __tmp__._0;
            _x421 = __tmp__._1;
        };
        var _x422:GoUInt64 = ((0 : GoUInt64));
        var _x423:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x367, _x403, ((((_x421 : T_p521Uint1)) : GoUInt64)));
            _x422 = __tmp__._0;
            _x423 = __tmp__._1;
        };
        var _x424:GoUInt64 = ((0 : GoUInt64));
        var _x425:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x369, _x405, ((((_x423 : T_p521Uint1)) : GoUInt64)));
            _x424 = __tmp__._0;
            _x425 = __tmp__._1;
        };
        var _x426:GoUInt64 = ((0 : GoUInt64));
        var _x427:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x371, _x407, ((((_x425 : T_p521Uint1)) : GoUInt64)));
            _x426 = __tmp__._0;
            _x427 = __tmp__._1;
        };
        var _x428:GoUInt64 = ((0 : GoUInt64));
        var _x429:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x373, _x409, ((((_x427 : T_p521Uint1)) : GoUInt64)));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:GoUInt64 = ((0 : GoUInt64));
        var _x431:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x375, _x411, ((((_x429 : T_p521Uint1)) : GoUInt64)));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432:GoUInt64 = (((((_x431 : T_p521Uint1)) : GoUInt64)) + ((((_x376 : T_p521Uint1)) : GoUInt64)));
        var _x433:GoUInt64 = ((0 : GoUInt64));
        var _x434:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x434 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x435:GoUInt64 = ((0 : GoUInt64));
        var _x436:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x436 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x437:GoUInt64 = ((0 : GoUInt64));
        var _x438:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x438 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x439:GoUInt64 = ((0 : GoUInt64));
        var _x440:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x440 = __tmp__._0;
            _x439 = __tmp__._1;
        };
        var _x441:GoUInt64 = ((0 : GoUInt64));
        var _x442:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x442 = __tmp__._0;
            _x441 = __tmp__._1;
        };
        var _x443:GoUInt64 = ((0 : GoUInt64));
        var _x444:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x444 = __tmp__._0;
            _x443 = __tmp__._1;
        };
        var _x445:GoUInt64 = ((0 : GoUInt64));
        var _x446:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x446 = __tmp__._0;
            _x445 = __tmp__._1;
        };
        var _x447:GoUInt64 = ((0 : GoUInt64));
        var _x448:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x448 = __tmp__._0;
            _x447 = __tmp__._1;
        };
        var _x449:GoUInt64 = ((0 : GoUInt64));
        var _x450:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x4, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x450 = __tmp__._0;
            _x449 = __tmp__._1;
        };
        var _x451:GoUInt64 = ((0 : GoUInt64));
        var _x452:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x450, _x447, ((((0 : GoUInt64)) : GoUInt64)));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:GoUInt64 = ((0 : GoUInt64));
        var _x454:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x448, _x445, ((((_x452 : T_p521Uint1)) : GoUInt64)));
            _x453 = __tmp__._0;
            _x454 = __tmp__._1;
        };
        var _x455:GoUInt64 = ((0 : GoUInt64));
        var _x456:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x446, _x443, ((((_x454 : T_p521Uint1)) : GoUInt64)));
            _x455 = __tmp__._0;
            _x456 = __tmp__._1;
        };
        var _x457:GoUInt64 = ((0 : GoUInt64));
        var _x458:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x444, _x441, ((((_x456 : T_p521Uint1)) : GoUInt64)));
            _x457 = __tmp__._0;
            _x458 = __tmp__._1;
        };
        var _x459:GoUInt64 = ((0 : GoUInt64));
        var _x460:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x442, _x439, ((((_x458 : T_p521Uint1)) : GoUInt64)));
            _x459 = __tmp__._0;
            _x460 = __tmp__._1;
        };
        var _x461:GoUInt64 = ((0 : GoUInt64));
        var _x462:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x440, _x437, ((((_x460 : T_p521Uint1)) : GoUInt64)));
            _x461 = __tmp__._0;
            _x462 = __tmp__._1;
        };
        var _x463:GoUInt64 = ((0 : GoUInt64));
        var _x464:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x438, _x435, ((((_x462 : T_p521Uint1)) : GoUInt64)));
            _x463 = __tmp__._0;
            _x464 = __tmp__._1;
        };
        var _x465:GoUInt64 = ((0 : GoUInt64));
        var _x466:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x436, _x433, ((((_x464 : T_p521Uint1)) : GoUInt64)));
            _x465 = __tmp__._0;
            _x466 = __tmp__._1;
        };
        var _x467:GoUInt64 = (((((_x466 : T_p521Uint1)) : GoUInt64)) + _x434);
        var _x468:GoUInt64 = ((0 : GoUInt64));
        var _x469:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x414, _x449, ((((0 : GoUInt64)) : GoUInt64)));
            _x468 = __tmp__._0;
            _x469 = __tmp__._1;
        };
        var _x470:GoUInt64 = ((0 : GoUInt64));
        var _x471:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x416, _x451, ((((_x469 : T_p521Uint1)) : GoUInt64)));
            _x470 = __tmp__._0;
            _x471 = __tmp__._1;
        };
        var _x472:GoUInt64 = ((0 : GoUInt64));
        var _x473:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x418, _x453, ((((_x471 : T_p521Uint1)) : GoUInt64)));
            _x472 = __tmp__._0;
            _x473 = __tmp__._1;
        };
        var _x474:GoUInt64 = ((0 : GoUInt64));
        var _x475:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x420, _x455, ((((_x473 : T_p521Uint1)) : GoUInt64)));
            _x474 = __tmp__._0;
            _x475 = __tmp__._1;
        };
        var _x476:GoUInt64 = ((0 : GoUInt64));
        var _x477:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x422, _x457, ((((_x475 : T_p521Uint1)) : GoUInt64)));
            _x476 = __tmp__._0;
            _x477 = __tmp__._1;
        };
        var _x478:GoUInt64 = ((0 : GoUInt64));
        var _x479:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x424, _x459, ((((_x477 : T_p521Uint1)) : GoUInt64)));
            _x478 = __tmp__._0;
            _x479 = __tmp__._1;
        };
        var _x480:GoUInt64 = ((0 : GoUInt64));
        var _x481:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x426, _x461, ((((_x479 : T_p521Uint1)) : GoUInt64)));
            _x480 = __tmp__._0;
            _x481 = __tmp__._1;
        };
        var _x482:GoUInt64 = ((0 : GoUInt64));
        var _x483:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x428, _x463, ((((_x481 : T_p521Uint1)) : GoUInt64)));
            _x482 = __tmp__._0;
            _x483 = __tmp__._1;
        };
        var _x484:GoUInt64 = ((0 : GoUInt64));
        var _x485:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x430, _x465, ((((_x483 : T_p521Uint1)) : GoUInt64)));
            _x484 = __tmp__._0;
            _x485 = __tmp__._1;
        };
        var _x486:GoUInt64 = ((0 : GoUInt64));
        var _x487:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x432, _x467, ((((_x485 : T_p521Uint1)) : GoUInt64)));
            _x486 = __tmp__._0;
            _x487 = __tmp__._1;
        };
        var _x488:GoUInt64 = ((0 : GoUInt64));
        var _x489:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, ((511 : GoUInt64)));
            _x489 = __tmp__._0;
            _x488 = __tmp__._1;
        };
        var _x490:GoUInt64 = ((0 : GoUInt64));
        var _x491:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x491 = __tmp__._0;
            _x490 = __tmp__._1;
        };
        var _x492:GoUInt64 = ((0 : GoUInt64));
        var _x493:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x493 = __tmp__._0;
            _x492 = __tmp__._1;
        };
        var _x494:GoUInt64 = ((0 : GoUInt64));
        var _x495:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x495 = __tmp__._0;
            _x494 = __tmp__._1;
        };
        var _x496:GoUInt64 = ((0 : GoUInt64));
        var _x497:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x497 = __tmp__._0;
            _x496 = __tmp__._1;
        };
        var _x498:GoUInt64 = ((0 : GoUInt64));
        var _x499:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x499 = __tmp__._0;
            _x498 = __tmp__._1;
        };
        var _x500:GoUInt64 = ((0 : GoUInt64));
        var _x501:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x501 = __tmp__._0;
            _x500 = __tmp__._1;
        };
        var _x502:GoUInt64 = ((0 : GoUInt64));
        var _x503:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x503 = __tmp__._0;
            _x502 = __tmp__._1;
        };
        var _x504:GoUInt64 = ((0 : GoUInt64));
        var _x505:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x468, (("18446744073709551615" : GoUInt64)));
            _x505 = __tmp__._0;
            _x504 = __tmp__._1;
        };
        var _x506:GoUInt64 = ((0 : GoUInt64));
        var _x507:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x505, _x502, ((((0 : GoUInt64)) : GoUInt64)));
            _x506 = __tmp__._0;
            _x507 = __tmp__._1;
        };
        var _x508:GoUInt64 = ((0 : GoUInt64));
        var _x509:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x503, _x500, ((((_x507 : T_p521Uint1)) : GoUInt64)));
            _x508 = __tmp__._0;
            _x509 = __tmp__._1;
        };
        var _x510:GoUInt64 = ((0 : GoUInt64));
        var _x511:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x501, _x498, ((((_x509 : T_p521Uint1)) : GoUInt64)));
            _x510 = __tmp__._0;
            _x511 = __tmp__._1;
        };
        var _x512:GoUInt64 = ((0 : GoUInt64));
        var _x513:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x499, _x496, ((((_x511 : T_p521Uint1)) : GoUInt64)));
            _x512 = __tmp__._0;
            _x513 = __tmp__._1;
        };
        var _x514:GoUInt64 = ((0 : GoUInt64));
        var _x515:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x497, _x494, ((((_x513 : T_p521Uint1)) : GoUInt64)));
            _x514 = __tmp__._0;
            _x515 = __tmp__._1;
        };
        var _x516:GoUInt64 = ((0 : GoUInt64));
        var _x517:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x495, _x492, ((((_x515 : T_p521Uint1)) : GoUInt64)));
            _x516 = __tmp__._0;
            _x517 = __tmp__._1;
        };
        var _x518:GoUInt64 = ((0 : GoUInt64));
        var _x519:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x493, _x490, ((((_x517 : T_p521Uint1)) : GoUInt64)));
            _x518 = __tmp__._0;
            _x519 = __tmp__._1;
        };
        var _x520:GoUInt64 = ((0 : GoUInt64));
        var _x521:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x491, _x488, ((((_x519 : T_p521Uint1)) : GoUInt64)));
            _x520 = __tmp__._0;
            _x521 = __tmp__._1;
        };
        var _x522:GoUInt64 = (((((_x521 : T_p521Uint1)) : GoUInt64)) + _x489);
        var _x524:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x468, _x504, ((((0 : GoUInt64)) : GoUInt64)));
            _x524 = __tmp__._1;
        };
        var _x525:GoUInt64 = ((0 : GoUInt64));
        var _x526:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x470, _x506, ((((_x524 : T_p521Uint1)) : GoUInt64)));
            _x525 = __tmp__._0;
            _x526 = __tmp__._1;
        };
        var _x527:GoUInt64 = ((0 : GoUInt64));
        var _x528:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x472, _x508, ((((_x526 : T_p521Uint1)) : GoUInt64)));
            _x527 = __tmp__._0;
            _x528 = __tmp__._1;
        };
        var _x529:GoUInt64 = ((0 : GoUInt64));
        var _x530:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x474, _x510, ((((_x528 : T_p521Uint1)) : GoUInt64)));
            _x529 = __tmp__._0;
            _x530 = __tmp__._1;
        };
        var _x531:GoUInt64 = ((0 : GoUInt64));
        var _x532:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x476, _x512, ((((_x530 : T_p521Uint1)) : GoUInt64)));
            _x531 = __tmp__._0;
            _x532 = __tmp__._1;
        };
        var _x533:GoUInt64 = ((0 : GoUInt64));
        var _x534:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x478, _x514, ((((_x532 : T_p521Uint1)) : GoUInt64)));
            _x533 = __tmp__._0;
            _x534 = __tmp__._1;
        };
        var _x535:GoUInt64 = ((0 : GoUInt64));
        var _x536:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x480, _x516, ((((_x534 : T_p521Uint1)) : GoUInt64)));
            _x535 = __tmp__._0;
            _x536 = __tmp__._1;
        };
        var _x537:GoUInt64 = ((0 : GoUInt64));
        var _x538:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x482, _x518, ((((_x536 : T_p521Uint1)) : GoUInt64)));
            _x537 = __tmp__._0;
            _x538 = __tmp__._1;
        };
        var _x539:GoUInt64 = ((0 : GoUInt64));
        var _x540:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x484, _x520, ((((_x538 : T_p521Uint1)) : GoUInt64)));
            _x539 = __tmp__._0;
            _x540 = __tmp__._1;
        };
        var _x541:GoUInt64 = ((0 : GoUInt64));
        var _x542:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x486, _x522, ((((_x540 : T_p521Uint1)) : GoUInt64)));
            _x541 = __tmp__._0;
            _x542 = __tmp__._1;
        };
        var _x543:GoUInt64 = (((((_x542 : T_p521Uint1)) : GoUInt64)) + ((((_x487 : T_p521Uint1)) : GoUInt64)));
        var _x544:GoUInt64 = ((0 : GoUInt64));
        var _x545:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x545 = __tmp__._0;
            _x544 = __tmp__._1;
        };
        var _x546:GoUInt64 = ((0 : GoUInt64));
        var _x547:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x547 = __tmp__._0;
            _x546 = __tmp__._1;
        };
        var _x548:GoUInt64 = ((0 : GoUInt64));
        var _x549:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x549 = __tmp__._0;
            _x548 = __tmp__._1;
        };
        var _x550:GoUInt64 = ((0 : GoUInt64));
        var _x551:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x551 = __tmp__._0;
            _x550 = __tmp__._1;
        };
        var _x552:GoUInt64 = ((0 : GoUInt64));
        var _x553:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x553 = __tmp__._0;
            _x552 = __tmp__._1;
        };
        var _x554:GoUInt64 = ((0 : GoUInt64));
        var _x555:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x555 = __tmp__._0;
            _x554 = __tmp__._1;
        };
        var _x556:GoUInt64 = ((0 : GoUInt64));
        var _x557:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x557 = __tmp__._0;
            _x556 = __tmp__._1;
        };
        var _x558:GoUInt64 = ((0 : GoUInt64));
        var _x559:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x559 = __tmp__._0;
            _x558 = __tmp__._1;
        };
        var _x560:GoUInt64 = ((0 : GoUInt64));
        var _x561:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x5, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x561 = __tmp__._0;
            _x560 = __tmp__._1;
        };
        var _x562:GoUInt64 = ((0 : GoUInt64));
        var _x563:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x561, _x558, ((((0 : GoUInt64)) : GoUInt64)));
            _x562 = __tmp__._0;
            _x563 = __tmp__._1;
        };
        var _x564:GoUInt64 = ((0 : GoUInt64));
        var _x565:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x559, _x556, ((((_x563 : T_p521Uint1)) : GoUInt64)));
            _x564 = __tmp__._0;
            _x565 = __tmp__._1;
        };
        var _x566:GoUInt64 = ((0 : GoUInt64));
        var _x567:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x557, _x554, ((((_x565 : T_p521Uint1)) : GoUInt64)));
            _x566 = __tmp__._0;
            _x567 = __tmp__._1;
        };
        var _x568:GoUInt64 = ((0 : GoUInt64));
        var _x569:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x555, _x552, ((((_x567 : T_p521Uint1)) : GoUInt64)));
            _x568 = __tmp__._0;
            _x569 = __tmp__._1;
        };
        var _x570:GoUInt64 = ((0 : GoUInt64));
        var _x571:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x553, _x550, ((((_x569 : T_p521Uint1)) : GoUInt64)));
            _x570 = __tmp__._0;
            _x571 = __tmp__._1;
        };
        var _x572:GoUInt64 = ((0 : GoUInt64));
        var _x573:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x551, _x548, ((((_x571 : T_p521Uint1)) : GoUInt64)));
            _x572 = __tmp__._0;
            _x573 = __tmp__._1;
        };
        var _x574:GoUInt64 = ((0 : GoUInt64));
        var _x575:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x549, _x546, ((((_x573 : T_p521Uint1)) : GoUInt64)));
            _x574 = __tmp__._0;
            _x575 = __tmp__._1;
        };
        var _x576:GoUInt64 = ((0 : GoUInt64));
        var _x577:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x547, _x544, ((((_x575 : T_p521Uint1)) : GoUInt64)));
            _x576 = __tmp__._0;
            _x577 = __tmp__._1;
        };
        var _x578:GoUInt64 = (((((_x577 : T_p521Uint1)) : GoUInt64)) + _x545);
        var _x579:GoUInt64 = ((0 : GoUInt64));
        var _x580:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x525, _x560, ((((0 : GoUInt64)) : GoUInt64)));
            _x579 = __tmp__._0;
            _x580 = __tmp__._1;
        };
        var _x581:GoUInt64 = ((0 : GoUInt64));
        var _x582:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x527, _x562, ((((_x580 : T_p521Uint1)) : GoUInt64)));
            _x581 = __tmp__._0;
            _x582 = __tmp__._1;
        };
        var _x583:GoUInt64 = ((0 : GoUInt64));
        var _x584:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x529, _x564, ((((_x582 : T_p521Uint1)) : GoUInt64)));
            _x583 = __tmp__._0;
            _x584 = __tmp__._1;
        };
        var _x585:GoUInt64 = ((0 : GoUInt64));
        var _x586:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x531, _x566, ((((_x584 : T_p521Uint1)) : GoUInt64)));
            _x585 = __tmp__._0;
            _x586 = __tmp__._1;
        };
        var _x587:GoUInt64 = ((0 : GoUInt64));
        var _x588:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x533, _x568, ((((_x586 : T_p521Uint1)) : GoUInt64)));
            _x587 = __tmp__._0;
            _x588 = __tmp__._1;
        };
        var _x589:GoUInt64 = ((0 : GoUInt64));
        var _x590:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x535, _x570, ((((_x588 : T_p521Uint1)) : GoUInt64)));
            _x589 = __tmp__._0;
            _x590 = __tmp__._1;
        };
        var _x591:GoUInt64 = ((0 : GoUInt64));
        var _x592:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x537, _x572, ((((_x590 : T_p521Uint1)) : GoUInt64)));
            _x591 = __tmp__._0;
            _x592 = __tmp__._1;
        };
        var _x593:GoUInt64 = ((0 : GoUInt64));
        var _x594:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x539, _x574, ((((_x592 : T_p521Uint1)) : GoUInt64)));
            _x593 = __tmp__._0;
            _x594 = __tmp__._1;
        };
        var _x595:GoUInt64 = ((0 : GoUInt64));
        var _x596:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x541, _x576, ((((_x594 : T_p521Uint1)) : GoUInt64)));
            _x595 = __tmp__._0;
            _x596 = __tmp__._1;
        };
        var _x597:GoUInt64 = ((0 : GoUInt64));
        var _x598:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x543, _x578, ((((_x596 : T_p521Uint1)) : GoUInt64)));
            _x597 = __tmp__._0;
            _x598 = __tmp__._1;
        };
        var _x599:GoUInt64 = ((0 : GoUInt64));
        var _x600:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, ((511 : GoUInt64)));
            _x600 = __tmp__._0;
            _x599 = __tmp__._1;
        };
        var _x601:GoUInt64 = ((0 : GoUInt64));
        var _x602:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x602 = __tmp__._0;
            _x601 = __tmp__._1;
        };
        var _x603:GoUInt64 = ((0 : GoUInt64));
        var _x604:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x604 = __tmp__._0;
            _x603 = __tmp__._1;
        };
        var _x605:GoUInt64 = ((0 : GoUInt64));
        var _x606:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x606 = __tmp__._0;
            _x605 = __tmp__._1;
        };
        var _x607:GoUInt64 = ((0 : GoUInt64));
        var _x608:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x608 = __tmp__._0;
            _x607 = __tmp__._1;
        };
        var _x609:GoUInt64 = ((0 : GoUInt64));
        var _x610:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x610 = __tmp__._0;
            _x609 = __tmp__._1;
        };
        var _x611:GoUInt64 = ((0 : GoUInt64));
        var _x612:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x612 = __tmp__._0;
            _x611 = __tmp__._1;
        };
        var _x613:GoUInt64 = ((0 : GoUInt64));
        var _x614:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x614 = __tmp__._0;
            _x613 = __tmp__._1;
        };
        var _x615:GoUInt64 = ((0 : GoUInt64));
        var _x616:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x579, (("18446744073709551615" : GoUInt64)));
            _x616 = __tmp__._0;
            _x615 = __tmp__._1;
        };
        var _x617:GoUInt64 = ((0 : GoUInt64));
        var _x618:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x616, _x613, ((((0 : GoUInt64)) : GoUInt64)));
            _x617 = __tmp__._0;
            _x618 = __tmp__._1;
        };
        var _x619:GoUInt64 = ((0 : GoUInt64));
        var _x620:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x614, _x611, ((((_x618 : T_p521Uint1)) : GoUInt64)));
            _x619 = __tmp__._0;
            _x620 = __tmp__._1;
        };
        var _x621:GoUInt64 = ((0 : GoUInt64));
        var _x622:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x612, _x609, ((((_x620 : T_p521Uint1)) : GoUInt64)));
            _x621 = __tmp__._0;
            _x622 = __tmp__._1;
        };
        var _x623:GoUInt64 = ((0 : GoUInt64));
        var _x624:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x610, _x607, ((((_x622 : T_p521Uint1)) : GoUInt64)));
            _x623 = __tmp__._0;
            _x624 = __tmp__._1;
        };
        var _x625:GoUInt64 = ((0 : GoUInt64));
        var _x626:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x608, _x605, ((((_x624 : T_p521Uint1)) : GoUInt64)));
            _x625 = __tmp__._0;
            _x626 = __tmp__._1;
        };
        var _x627:GoUInt64 = ((0 : GoUInt64));
        var _x628:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x606, _x603, ((((_x626 : T_p521Uint1)) : GoUInt64)));
            _x627 = __tmp__._0;
            _x628 = __tmp__._1;
        };
        var _x629:GoUInt64 = ((0 : GoUInt64));
        var _x630:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x604, _x601, ((((_x628 : T_p521Uint1)) : GoUInt64)));
            _x629 = __tmp__._0;
            _x630 = __tmp__._1;
        };
        var _x631:GoUInt64 = ((0 : GoUInt64));
        var _x632:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x602, _x599, ((((_x630 : T_p521Uint1)) : GoUInt64)));
            _x631 = __tmp__._0;
            _x632 = __tmp__._1;
        };
        var _x633:GoUInt64 = (((((_x632 : T_p521Uint1)) : GoUInt64)) + _x600);
        var _x635:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x579, _x615, ((((0 : GoUInt64)) : GoUInt64)));
            _x635 = __tmp__._1;
        };
        var _x636:GoUInt64 = ((0 : GoUInt64));
        var _x637:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x581, _x617, ((((_x635 : T_p521Uint1)) : GoUInt64)));
            _x636 = __tmp__._0;
            _x637 = __tmp__._1;
        };
        var _x638:GoUInt64 = ((0 : GoUInt64));
        var _x639:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x583, _x619, ((((_x637 : T_p521Uint1)) : GoUInt64)));
            _x638 = __tmp__._0;
            _x639 = __tmp__._1;
        };
        var _x640:GoUInt64 = ((0 : GoUInt64));
        var _x641:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x585, _x621, ((((_x639 : T_p521Uint1)) : GoUInt64)));
            _x640 = __tmp__._0;
            _x641 = __tmp__._1;
        };
        var _x642:GoUInt64 = ((0 : GoUInt64));
        var _x643:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x587, _x623, ((((_x641 : T_p521Uint1)) : GoUInt64)));
            _x642 = __tmp__._0;
            _x643 = __tmp__._1;
        };
        var _x644:GoUInt64 = ((0 : GoUInt64));
        var _x645:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x589, _x625, ((((_x643 : T_p521Uint1)) : GoUInt64)));
            _x644 = __tmp__._0;
            _x645 = __tmp__._1;
        };
        var _x646:GoUInt64 = ((0 : GoUInt64));
        var _x647:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x591, _x627, ((((_x645 : T_p521Uint1)) : GoUInt64)));
            _x646 = __tmp__._0;
            _x647 = __tmp__._1;
        };
        var _x648:GoUInt64 = ((0 : GoUInt64));
        var _x649:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x593, _x629, ((((_x647 : T_p521Uint1)) : GoUInt64)));
            _x648 = __tmp__._0;
            _x649 = __tmp__._1;
        };
        var _x650:GoUInt64 = ((0 : GoUInt64));
        var _x651:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x595, _x631, ((((_x649 : T_p521Uint1)) : GoUInt64)));
            _x650 = __tmp__._0;
            _x651 = __tmp__._1;
        };
        var _x652:GoUInt64 = ((0 : GoUInt64));
        var _x653:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x597, _x633, ((((_x651 : T_p521Uint1)) : GoUInt64)));
            _x652 = __tmp__._0;
            _x653 = __tmp__._1;
        };
        var _x654:GoUInt64 = (((((_x653 : T_p521Uint1)) : GoUInt64)) + ((((_x598 : T_p521Uint1)) : GoUInt64)));
        var _x655:GoUInt64 = ((0 : GoUInt64));
        var _x656:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x656 = __tmp__._0;
            _x655 = __tmp__._1;
        };
        var _x657:GoUInt64 = ((0 : GoUInt64));
        var _x658:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x658 = __tmp__._0;
            _x657 = __tmp__._1;
        };
        var _x659:GoUInt64 = ((0 : GoUInt64));
        var _x660:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x660 = __tmp__._0;
            _x659 = __tmp__._1;
        };
        var _x661:GoUInt64 = ((0 : GoUInt64));
        var _x662:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x662 = __tmp__._0;
            _x661 = __tmp__._1;
        };
        var _x663:GoUInt64 = ((0 : GoUInt64));
        var _x664:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x664 = __tmp__._0;
            _x663 = __tmp__._1;
        };
        var _x665:GoUInt64 = ((0 : GoUInt64));
        var _x666:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x666 = __tmp__._0;
            _x665 = __tmp__._1;
        };
        var _x667:GoUInt64 = ((0 : GoUInt64));
        var _x668:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x668 = __tmp__._0;
            _x667 = __tmp__._1;
        };
        var _x669:GoUInt64 = ((0 : GoUInt64));
        var _x670:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x670 = __tmp__._0;
            _x669 = __tmp__._1;
        };
        var _x671:GoUInt64 = ((0 : GoUInt64));
        var _x672:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x6, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x672 = __tmp__._0;
            _x671 = __tmp__._1;
        };
        var _x673:GoUInt64 = ((0 : GoUInt64));
        var _x674:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x672, _x669, ((((0 : GoUInt64)) : GoUInt64)));
            _x673 = __tmp__._0;
            _x674 = __tmp__._1;
        };
        var _x675:GoUInt64 = ((0 : GoUInt64));
        var _x676:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x670, _x667, ((((_x674 : T_p521Uint1)) : GoUInt64)));
            _x675 = __tmp__._0;
            _x676 = __tmp__._1;
        };
        var _x677:GoUInt64 = ((0 : GoUInt64));
        var _x678:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x668, _x665, ((((_x676 : T_p521Uint1)) : GoUInt64)));
            _x677 = __tmp__._0;
            _x678 = __tmp__._1;
        };
        var _x679:GoUInt64 = ((0 : GoUInt64));
        var _x680:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x666, _x663, ((((_x678 : T_p521Uint1)) : GoUInt64)));
            _x679 = __tmp__._0;
            _x680 = __tmp__._1;
        };
        var _x681:GoUInt64 = ((0 : GoUInt64));
        var _x682:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x664, _x661, ((((_x680 : T_p521Uint1)) : GoUInt64)));
            _x681 = __tmp__._0;
            _x682 = __tmp__._1;
        };
        var _x683:GoUInt64 = ((0 : GoUInt64));
        var _x684:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x662, _x659, ((((_x682 : T_p521Uint1)) : GoUInt64)));
            _x683 = __tmp__._0;
            _x684 = __tmp__._1;
        };
        var _x685:GoUInt64 = ((0 : GoUInt64));
        var _x686:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x660, _x657, ((((_x684 : T_p521Uint1)) : GoUInt64)));
            _x685 = __tmp__._0;
            _x686 = __tmp__._1;
        };
        var _x687:GoUInt64 = ((0 : GoUInt64));
        var _x688:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x658, _x655, ((((_x686 : T_p521Uint1)) : GoUInt64)));
            _x687 = __tmp__._0;
            _x688 = __tmp__._1;
        };
        var _x689:GoUInt64 = (((((_x688 : T_p521Uint1)) : GoUInt64)) + _x656);
        var _x690:GoUInt64 = ((0 : GoUInt64));
        var _x691:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x636, _x671, ((((0 : GoUInt64)) : GoUInt64)));
            _x690 = __tmp__._0;
            _x691 = __tmp__._1;
        };
        var _x692:GoUInt64 = ((0 : GoUInt64));
        var _x693:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x638, _x673, ((((_x691 : T_p521Uint1)) : GoUInt64)));
            _x692 = __tmp__._0;
            _x693 = __tmp__._1;
        };
        var _x694:GoUInt64 = ((0 : GoUInt64));
        var _x695:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x640, _x675, ((((_x693 : T_p521Uint1)) : GoUInt64)));
            _x694 = __tmp__._0;
            _x695 = __tmp__._1;
        };
        var _x696:GoUInt64 = ((0 : GoUInt64));
        var _x697:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x642, _x677, ((((_x695 : T_p521Uint1)) : GoUInt64)));
            _x696 = __tmp__._0;
            _x697 = __tmp__._1;
        };
        var _x698:GoUInt64 = ((0 : GoUInt64));
        var _x699:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x644, _x679, ((((_x697 : T_p521Uint1)) : GoUInt64)));
            _x698 = __tmp__._0;
            _x699 = __tmp__._1;
        };
        var _x700:GoUInt64 = ((0 : GoUInt64));
        var _x701:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x646, _x681, ((((_x699 : T_p521Uint1)) : GoUInt64)));
            _x700 = __tmp__._0;
            _x701 = __tmp__._1;
        };
        var _x702:GoUInt64 = ((0 : GoUInt64));
        var _x703:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x648, _x683, ((((_x701 : T_p521Uint1)) : GoUInt64)));
            _x702 = __tmp__._0;
            _x703 = __tmp__._1;
        };
        var _x704:GoUInt64 = ((0 : GoUInt64));
        var _x705:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x650, _x685, ((((_x703 : T_p521Uint1)) : GoUInt64)));
            _x704 = __tmp__._0;
            _x705 = __tmp__._1;
        };
        var _x706:GoUInt64 = ((0 : GoUInt64));
        var _x707:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x652, _x687, ((((_x705 : T_p521Uint1)) : GoUInt64)));
            _x706 = __tmp__._0;
            _x707 = __tmp__._1;
        };
        var _x708:GoUInt64 = ((0 : GoUInt64));
        var _x709:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x654, _x689, ((((_x707 : T_p521Uint1)) : GoUInt64)));
            _x708 = __tmp__._0;
            _x709 = __tmp__._1;
        };
        var _x710:GoUInt64 = ((0 : GoUInt64));
        var _x711:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, ((511 : GoUInt64)));
            _x711 = __tmp__._0;
            _x710 = __tmp__._1;
        };
        var _x712:GoUInt64 = ((0 : GoUInt64));
        var _x713:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x713 = __tmp__._0;
            _x712 = __tmp__._1;
        };
        var _x714:GoUInt64 = ((0 : GoUInt64));
        var _x715:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x715 = __tmp__._0;
            _x714 = __tmp__._1;
        };
        var _x716:GoUInt64 = ((0 : GoUInt64));
        var _x717:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x717 = __tmp__._0;
            _x716 = __tmp__._1;
        };
        var _x718:GoUInt64 = ((0 : GoUInt64));
        var _x719:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x719 = __tmp__._0;
            _x718 = __tmp__._1;
        };
        var _x720:GoUInt64 = ((0 : GoUInt64));
        var _x721:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x721 = __tmp__._0;
            _x720 = __tmp__._1;
        };
        var _x722:GoUInt64 = ((0 : GoUInt64));
        var _x723:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x723 = __tmp__._0;
            _x722 = __tmp__._1;
        };
        var _x724:GoUInt64 = ((0 : GoUInt64));
        var _x725:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x725 = __tmp__._0;
            _x724 = __tmp__._1;
        };
        var _x726:GoUInt64 = ((0 : GoUInt64));
        var _x727:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x690, (("18446744073709551615" : GoUInt64)));
            _x727 = __tmp__._0;
            _x726 = __tmp__._1;
        };
        var _x728:GoUInt64 = ((0 : GoUInt64));
        var _x729:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x727, _x724, ((((0 : GoUInt64)) : GoUInt64)));
            _x728 = __tmp__._0;
            _x729 = __tmp__._1;
        };
        var _x730:GoUInt64 = ((0 : GoUInt64));
        var _x731:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x725, _x722, ((((_x729 : T_p521Uint1)) : GoUInt64)));
            _x730 = __tmp__._0;
            _x731 = __tmp__._1;
        };
        var _x732:GoUInt64 = ((0 : GoUInt64));
        var _x733:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x723, _x720, ((((_x731 : T_p521Uint1)) : GoUInt64)));
            _x732 = __tmp__._0;
            _x733 = __tmp__._1;
        };
        var _x734:GoUInt64 = ((0 : GoUInt64));
        var _x735:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x721, _x718, ((((_x733 : T_p521Uint1)) : GoUInt64)));
            _x734 = __tmp__._0;
            _x735 = __tmp__._1;
        };
        var _x736:GoUInt64 = ((0 : GoUInt64));
        var _x737:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x719, _x716, ((((_x735 : T_p521Uint1)) : GoUInt64)));
            _x736 = __tmp__._0;
            _x737 = __tmp__._1;
        };
        var _x738:GoUInt64 = ((0 : GoUInt64));
        var _x739:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x717, _x714, ((((_x737 : T_p521Uint1)) : GoUInt64)));
            _x738 = __tmp__._0;
            _x739 = __tmp__._1;
        };
        var _x740:GoUInt64 = ((0 : GoUInt64));
        var _x741:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x715, _x712, ((((_x739 : T_p521Uint1)) : GoUInt64)));
            _x740 = __tmp__._0;
            _x741 = __tmp__._1;
        };
        var _x742:GoUInt64 = ((0 : GoUInt64));
        var _x743:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x713, _x710, ((((_x741 : T_p521Uint1)) : GoUInt64)));
            _x742 = __tmp__._0;
            _x743 = __tmp__._1;
        };
        var _x744:GoUInt64 = (((((_x743 : T_p521Uint1)) : GoUInt64)) + _x711);
        var _x746:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x690, _x726, ((((0 : GoUInt64)) : GoUInt64)));
            _x746 = __tmp__._1;
        };
        var _x747:GoUInt64 = ((0 : GoUInt64));
        var _x748:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x692, _x728, ((((_x746 : T_p521Uint1)) : GoUInt64)));
            _x747 = __tmp__._0;
            _x748 = __tmp__._1;
        };
        var _x749:GoUInt64 = ((0 : GoUInt64));
        var _x750:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x694, _x730, ((((_x748 : T_p521Uint1)) : GoUInt64)));
            _x749 = __tmp__._0;
            _x750 = __tmp__._1;
        };
        var _x751:GoUInt64 = ((0 : GoUInt64));
        var _x752:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x696, _x732, ((((_x750 : T_p521Uint1)) : GoUInt64)));
            _x751 = __tmp__._0;
            _x752 = __tmp__._1;
        };
        var _x753:GoUInt64 = ((0 : GoUInt64));
        var _x754:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x698, _x734, ((((_x752 : T_p521Uint1)) : GoUInt64)));
            _x753 = __tmp__._0;
            _x754 = __tmp__._1;
        };
        var _x755:GoUInt64 = ((0 : GoUInt64));
        var _x756:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x700, _x736, ((((_x754 : T_p521Uint1)) : GoUInt64)));
            _x755 = __tmp__._0;
            _x756 = __tmp__._1;
        };
        var _x757:GoUInt64 = ((0 : GoUInt64));
        var _x758:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x702, _x738, ((((_x756 : T_p521Uint1)) : GoUInt64)));
            _x757 = __tmp__._0;
            _x758 = __tmp__._1;
        };
        var _x759:GoUInt64 = ((0 : GoUInt64));
        var _x760:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x704, _x740, ((((_x758 : T_p521Uint1)) : GoUInt64)));
            _x759 = __tmp__._0;
            _x760 = __tmp__._1;
        };
        var _x761:GoUInt64 = ((0 : GoUInt64));
        var _x762:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x706, _x742, ((((_x760 : T_p521Uint1)) : GoUInt64)));
            _x761 = __tmp__._0;
            _x762 = __tmp__._1;
        };
        var _x763:GoUInt64 = ((0 : GoUInt64));
        var _x764:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x708, _x744, ((((_x762 : T_p521Uint1)) : GoUInt64)));
            _x763 = __tmp__._0;
            _x764 = __tmp__._1;
        };
        var _x765:GoUInt64 = (((((_x764 : T_p521Uint1)) : GoUInt64)) + ((((_x709 : T_p521Uint1)) : GoUInt64)));
        var _x766:GoUInt64 = ((0 : GoUInt64));
        var _x767:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x767 = __tmp__._0;
            _x766 = __tmp__._1;
        };
        var _x768:GoUInt64 = ((0 : GoUInt64));
        var _x769:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x769 = __tmp__._0;
            _x768 = __tmp__._1;
        };
        var _x770:GoUInt64 = ((0 : GoUInt64));
        var _x771:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x771 = __tmp__._0;
            _x770 = __tmp__._1;
        };
        var _x772:GoUInt64 = ((0 : GoUInt64));
        var _x773:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x773 = __tmp__._0;
            _x772 = __tmp__._1;
        };
        var _x774:GoUInt64 = ((0 : GoUInt64));
        var _x775:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x775 = __tmp__._0;
            _x774 = __tmp__._1;
        };
        var _x776:GoUInt64 = ((0 : GoUInt64));
        var _x777:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x777 = __tmp__._0;
            _x776 = __tmp__._1;
        };
        var _x778:GoUInt64 = ((0 : GoUInt64));
        var _x779:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x779 = __tmp__._0;
            _x778 = __tmp__._1;
        };
        var _x780:GoUInt64 = ((0 : GoUInt64));
        var _x781:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x781 = __tmp__._0;
            _x780 = __tmp__._1;
        };
        var _x782:GoUInt64 = ((0 : GoUInt64));
        var _x783:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x7, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x783 = __tmp__._0;
            _x782 = __tmp__._1;
        };
        var _x784:GoUInt64 = ((0 : GoUInt64));
        var _x785:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x783, _x780, ((((0 : GoUInt64)) : GoUInt64)));
            _x784 = __tmp__._0;
            _x785 = __tmp__._1;
        };
        var _x786:GoUInt64 = ((0 : GoUInt64));
        var _x787:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x781, _x778, ((((_x785 : T_p521Uint1)) : GoUInt64)));
            _x786 = __tmp__._0;
            _x787 = __tmp__._1;
        };
        var _x788:GoUInt64 = ((0 : GoUInt64));
        var _x789:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x779, _x776, ((((_x787 : T_p521Uint1)) : GoUInt64)));
            _x788 = __tmp__._0;
            _x789 = __tmp__._1;
        };
        var _x790:GoUInt64 = ((0 : GoUInt64));
        var _x791:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x777, _x774, ((((_x789 : T_p521Uint1)) : GoUInt64)));
            _x790 = __tmp__._0;
            _x791 = __tmp__._1;
        };
        var _x792:GoUInt64 = ((0 : GoUInt64));
        var _x793:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x775, _x772, ((((_x791 : T_p521Uint1)) : GoUInt64)));
            _x792 = __tmp__._0;
            _x793 = __tmp__._1;
        };
        var _x794:GoUInt64 = ((0 : GoUInt64));
        var _x795:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x773, _x770, ((((_x793 : T_p521Uint1)) : GoUInt64)));
            _x794 = __tmp__._0;
            _x795 = __tmp__._1;
        };
        var _x796:GoUInt64 = ((0 : GoUInt64));
        var _x797:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x771, _x768, ((((_x795 : T_p521Uint1)) : GoUInt64)));
            _x796 = __tmp__._0;
            _x797 = __tmp__._1;
        };
        var _x798:GoUInt64 = ((0 : GoUInt64));
        var _x799:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x769, _x766, ((((_x797 : T_p521Uint1)) : GoUInt64)));
            _x798 = __tmp__._0;
            _x799 = __tmp__._1;
        };
        var _x800:GoUInt64 = (((((_x799 : T_p521Uint1)) : GoUInt64)) + _x767);
        var _x801:GoUInt64 = ((0 : GoUInt64));
        var _x802:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x747, _x782, ((((0 : GoUInt64)) : GoUInt64)));
            _x801 = __tmp__._0;
            _x802 = __tmp__._1;
        };
        var _x803:GoUInt64 = ((0 : GoUInt64));
        var _x804:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x749, _x784, ((((_x802 : T_p521Uint1)) : GoUInt64)));
            _x803 = __tmp__._0;
            _x804 = __tmp__._1;
        };
        var _x805:GoUInt64 = ((0 : GoUInt64));
        var _x806:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x751, _x786, ((((_x804 : T_p521Uint1)) : GoUInt64)));
            _x805 = __tmp__._0;
            _x806 = __tmp__._1;
        };
        var _x807:GoUInt64 = ((0 : GoUInt64));
        var _x808:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x753, _x788, ((((_x806 : T_p521Uint1)) : GoUInt64)));
            _x807 = __tmp__._0;
            _x808 = __tmp__._1;
        };
        var _x809:GoUInt64 = ((0 : GoUInt64));
        var _x810:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x755, _x790, ((((_x808 : T_p521Uint1)) : GoUInt64)));
            _x809 = __tmp__._0;
            _x810 = __tmp__._1;
        };
        var _x811:GoUInt64 = ((0 : GoUInt64));
        var _x812:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x757, _x792, ((((_x810 : T_p521Uint1)) : GoUInt64)));
            _x811 = __tmp__._0;
            _x812 = __tmp__._1;
        };
        var _x813:GoUInt64 = ((0 : GoUInt64));
        var _x814:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x759, _x794, ((((_x812 : T_p521Uint1)) : GoUInt64)));
            _x813 = __tmp__._0;
            _x814 = __tmp__._1;
        };
        var _x815:GoUInt64 = ((0 : GoUInt64));
        var _x816:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x761, _x796, ((((_x814 : T_p521Uint1)) : GoUInt64)));
            _x815 = __tmp__._0;
            _x816 = __tmp__._1;
        };
        var _x817:GoUInt64 = ((0 : GoUInt64));
        var _x818:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x763, _x798, ((((_x816 : T_p521Uint1)) : GoUInt64)));
            _x817 = __tmp__._0;
            _x818 = __tmp__._1;
        };
        var _x819:GoUInt64 = ((0 : GoUInt64));
        var _x820:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x765, _x800, ((((_x818 : T_p521Uint1)) : GoUInt64)));
            _x819 = __tmp__._0;
            _x820 = __tmp__._1;
        };
        var _x821:GoUInt64 = ((0 : GoUInt64));
        var _x822:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, ((511 : GoUInt64)));
            _x822 = __tmp__._0;
            _x821 = __tmp__._1;
        };
        var _x823:GoUInt64 = ((0 : GoUInt64));
        var _x824:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x824 = __tmp__._0;
            _x823 = __tmp__._1;
        };
        var _x825:GoUInt64 = ((0 : GoUInt64));
        var _x826:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x826 = __tmp__._0;
            _x825 = __tmp__._1;
        };
        var _x827:GoUInt64 = ((0 : GoUInt64));
        var _x828:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x828 = __tmp__._0;
            _x827 = __tmp__._1;
        };
        var _x829:GoUInt64 = ((0 : GoUInt64));
        var _x830:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x830 = __tmp__._0;
            _x829 = __tmp__._1;
        };
        var _x831:GoUInt64 = ((0 : GoUInt64));
        var _x832:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x832 = __tmp__._0;
            _x831 = __tmp__._1;
        };
        var _x833:GoUInt64 = ((0 : GoUInt64));
        var _x834:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x834 = __tmp__._0;
            _x833 = __tmp__._1;
        };
        var _x835:GoUInt64 = ((0 : GoUInt64));
        var _x836:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x836 = __tmp__._0;
            _x835 = __tmp__._1;
        };
        var _x837:GoUInt64 = ((0 : GoUInt64));
        var _x838:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x801, (("18446744073709551615" : GoUInt64)));
            _x838 = __tmp__._0;
            _x837 = __tmp__._1;
        };
        var _x839:GoUInt64 = ((0 : GoUInt64));
        var _x840:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x838, _x835, ((((0 : GoUInt64)) : GoUInt64)));
            _x839 = __tmp__._0;
            _x840 = __tmp__._1;
        };
        var _x841:GoUInt64 = ((0 : GoUInt64));
        var _x842:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x836, _x833, ((((_x840 : T_p521Uint1)) : GoUInt64)));
            _x841 = __tmp__._0;
            _x842 = __tmp__._1;
        };
        var _x843:GoUInt64 = ((0 : GoUInt64));
        var _x844:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x834, _x831, ((((_x842 : T_p521Uint1)) : GoUInt64)));
            _x843 = __tmp__._0;
            _x844 = __tmp__._1;
        };
        var _x845:GoUInt64 = ((0 : GoUInt64));
        var _x846:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x832, _x829, ((((_x844 : T_p521Uint1)) : GoUInt64)));
            _x845 = __tmp__._0;
            _x846 = __tmp__._1;
        };
        var _x847:GoUInt64 = ((0 : GoUInt64));
        var _x848:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x830, _x827, ((((_x846 : T_p521Uint1)) : GoUInt64)));
            _x847 = __tmp__._0;
            _x848 = __tmp__._1;
        };
        var _x849:GoUInt64 = ((0 : GoUInt64));
        var _x850:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x828, _x825, ((((_x848 : T_p521Uint1)) : GoUInt64)));
            _x849 = __tmp__._0;
            _x850 = __tmp__._1;
        };
        var _x851:GoUInt64 = ((0 : GoUInt64));
        var _x852:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x826, _x823, ((((_x850 : T_p521Uint1)) : GoUInt64)));
            _x851 = __tmp__._0;
            _x852 = __tmp__._1;
        };
        var _x853:GoUInt64 = ((0 : GoUInt64));
        var _x854:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x824, _x821, ((((_x852 : T_p521Uint1)) : GoUInt64)));
            _x853 = __tmp__._0;
            _x854 = __tmp__._1;
        };
        var _x855:GoUInt64 = (((((_x854 : T_p521Uint1)) : GoUInt64)) + _x822);
        var _x857:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x801, _x837, ((((0 : GoUInt64)) : GoUInt64)));
            _x857 = __tmp__._1;
        };
        var _x858:GoUInt64 = ((0 : GoUInt64));
        var _x859:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x803, _x839, ((((_x857 : T_p521Uint1)) : GoUInt64)));
            _x858 = __tmp__._0;
            _x859 = __tmp__._1;
        };
        var _x860:GoUInt64 = ((0 : GoUInt64));
        var _x861:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x805, _x841, ((((_x859 : T_p521Uint1)) : GoUInt64)));
            _x860 = __tmp__._0;
            _x861 = __tmp__._1;
        };
        var _x862:GoUInt64 = ((0 : GoUInt64));
        var _x863:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x807, _x843, ((((_x861 : T_p521Uint1)) : GoUInt64)));
            _x862 = __tmp__._0;
            _x863 = __tmp__._1;
        };
        var _x864:GoUInt64 = ((0 : GoUInt64));
        var _x865:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x809, _x845, ((((_x863 : T_p521Uint1)) : GoUInt64)));
            _x864 = __tmp__._0;
            _x865 = __tmp__._1;
        };
        var _x866:GoUInt64 = ((0 : GoUInt64));
        var _x867:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x811, _x847, ((((_x865 : T_p521Uint1)) : GoUInt64)));
            _x866 = __tmp__._0;
            _x867 = __tmp__._1;
        };
        var _x868:GoUInt64 = ((0 : GoUInt64));
        var _x869:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x813, _x849, ((((_x867 : T_p521Uint1)) : GoUInt64)));
            _x868 = __tmp__._0;
            _x869 = __tmp__._1;
        };
        var _x870:GoUInt64 = ((0 : GoUInt64));
        var _x871:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x815, _x851, ((((_x869 : T_p521Uint1)) : GoUInt64)));
            _x870 = __tmp__._0;
            _x871 = __tmp__._1;
        };
        var _x872:GoUInt64 = ((0 : GoUInt64));
        var _x873:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x817, _x853, ((((_x871 : T_p521Uint1)) : GoUInt64)));
            _x872 = __tmp__._0;
            _x873 = __tmp__._1;
        };
        var _x874:GoUInt64 = ((0 : GoUInt64));
        var _x875:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x819, _x855, ((((_x873 : T_p521Uint1)) : GoUInt64)));
            _x874 = __tmp__._0;
            _x875 = __tmp__._1;
        };
        var _x876:GoUInt64 = (((((_x875 : T_p521Uint1)) : GoUInt64)) + ((((_x820 : T_p521Uint1)) : GoUInt64)));
        var _x877:GoUInt64 = ((0 : GoUInt64));
        var _x878:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))));
            _x878 = __tmp__._0;
            _x877 = __tmp__._1;
        };
        var _x879:GoUInt64 = ((0 : GoUInt64));
        var _x880:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))));
            _x880 = __tmp__._0;
            _x879 = __tmp__._1;
        };
        var _x881:GoUInt64 = ((0 : GoUInt64));
        var _x882:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))));
            _x882 = __tmp__._0;
            _x881 = __tmp__._1;
        };
        var _x883:GoUInt64 = ((0 : GoUInt64));
        var _x884:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))));
            _x884 = __tmp__._0;
            _x883 = __tmp__._1;
        };
        var _x885:GoUInt64 = ((0 : GoUInt64));
        var _x886:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))));
            _x886 = __tmp__._0;
            _x885 = __tmp__._1;
        };
        var _x887:GoUInt64 = ((0 : GoUInt64));
        var _x888:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))));
            _x888 = __tmp__._0;
            _x887 = __tmp__._1;
        };
        var _x889:GoUInt64 = ((0 : GoUInt64));
        var _x890:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))));
            _x890 = __tmp__._0;
            _x889 = __tmp__._1;
        };
        var _x891:GoUInt64 = ((0 : GoUInt64));
        var _x892:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))));
            _x892 = __tmp__._0;
            _x891 = __tmp__._1;
        };
        var _x893:GoUInt64 = ((0 : GoUInt64));
        var _x894:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x8, (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))));
            _x894 = __tmp__._0;
            _x893 = __tmp__._1;
        };
        var _x895:GoUInt64 = ((0 : GoUInt64));
        var _x896:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x894, _x891, ((((0 : GoUInt64)) : GoUInt64)));
            _x895 = __tmp__._0;
            _x896 = __tmp__._1;
        };
        var _x897:GoUInt64 = ((0 : GoUInt64));
        var _x898:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x892, _x889, ((((_x896 : T_p521Uint1)) : GoUInt64)));
            _x897 = __tmp__._0;
            _x898 = __tmp__._1;
        };
        var _x899:GoUInt64 = ((0 : GoUInt64));
        var _x900:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x890, _x887, ((((_x898 : T_p521Uint1)) : GoUInt64)));
            _x899 = __tmp__._0;
            _x900 = __tmp__._1;
        };
        var _x901:GoUInt64 = ((0 : GoUInt64));
        var _x902:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x888, _x885, ((((_x900 : T_p521Uint1)) : GoUInt64)));
            _x901 = __tmp__._0;
            _x902 = __tmp__._1;
        };
        var _x903:GoUInt64 = ((0 : GoUInt64));
        var _x904:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x886, _x883, ((((_x902 : T_p521Uint1)) : GoUInt64)));
            _x903 = __tmp__._0;
            _x904 = __tmp__._1;
        };
        var _x905:GoUInt64 = ((0 : GoUInt64));
        var _x906:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x884, _x881, ((((_x904 : T_p521Uint1)) : GoUInt64)));
            _x905 = __tmp__._0;
            _x906 = __tmp__._1;
        };
        var _x907:GoUInt64 = ((0 : GoUInt64));
        var _x908:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x882, _x879, ((((_x906 : T_p521Uint1)) : GoUInt64)));
            _x907 = __tmp__._0;
            _x908 = __tmp__._1;
        };
        var _x909:GoUInt64 = ((0 : GoUInt64));
        var _x910:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x880, _x877, ((((_x908 : T_p521Uint1)) : GoUInt64)));
            _x909 = __tmp__._0;
            _x910 = __tmp__._1;
        };
        var _x911:GoUInt64 = (((((_x910 : T_p521Uint1)) : GoUInt64)) + _x878);
        var _x912:GoUInt64 = ((0 : GoUInt64));
        var _x913:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x858, _x893, ((((0 : GoUInt64)) : GoUInt64)));
            _x912 = __tmp__._0;
            _x913 = __tmp__._1;
        };
        var _x914:GoUInt64 = ((0 : GoUInt64));
        var _x915:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x860, _x895, ((((_x913 : T_p521Uint1)) : GoUInt64)));
            _x914 = __tmp__._0;
            _x915 = __tmp__._1;
        };
        var _x916:GoUInt64 = ((0 : GoUInt64));
        var _x917:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x862, _x897, ((((_x915 : T_p521Uint1)) : GoUInt64)));
            _x916 = __tmp__._0;
            _x917 = __tmp__._1;
        };
        var _x918:GoUInt64 = ((0 : GoUInt64));
        var _x919:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x864, _x899, ((((_x917 : T_p521Uint1)) : GoUInt64)));
            _x918 = __tmp__._0;
            _x919 = __tmp__._1;
        };
        var _x920:GoUInt64 = ((0 : GoUInt64));
        var _x921:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x866, _x901, ((((_x919 : T_p521Uint1)) : GoUInt64)));
            _x920 = __tmp__._0;
            _x921 = __tmp__._1;
        };
        var _x922:GoUInt64 = ((0 : GoUInt64));
        var _x923:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x868, _x903, ((((_x921 : T_p521Uint1)) : GoUInt64)));
            _x922 = __tmp__._0;
            _x923 = __tmp__._1;
        };
        var _x924:GoUInt64 = ((0 : GoUInt64));
        var _x925:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x870, _x905, ((((_x923 : T_p521Uint1)) : GoUInt64)));
            _x924 = __tmp__._0;
            _x925 = __tmp__._1;
        };
        var _x926:GoUInt64 = ((0 : GoUInt64));
        var _x927:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x872, _x907, ((((_x925 : T_p521Uint1)) : GoUInt64)));
            _x926 = __tmp__._0;
            _x927 = __tmp__._1;
        };
        var _x928:GoUInt64 = ((0 : GoUInt64));
        var _x929:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x874, _x909, ((((_x927 : T_p521Uint1)) : GoUInt64)));
            _x928 = __tmp__._0;
            _x929 = __tmp__._1;
        };
        var _x930:GoUInt64 = ((0 : GoUInt64));
        var _x931:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x876, _x911, ((((_x929 : T_p521Uint1)) : GoUInt64)));
            _x930 = __tmp__._0;
            _x931 = __tmp__._1;
        };
        var _x932:GoUInt64 = ((0 : GoUInt64));
        var _x933:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, ((511 : GoUInt64)));
            _x933 = __tmp__._0;
            _x932 = __tmp__._1;
        };
        var _x934:GoUInt64 = ((0 : GoUInt64));
        var _x935:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x935 = __tmp__._0;
            _x934 = __tmp__._1;
        };
        var _x936:GoUInt64 = ((0 : GoUInt64));
        var _x937:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x937 = __tmp__._0;
            _x936 = __tmp__._1;
        };
        var _x938:GoUInt64 = ((0 : GoUInt64));
        var _x939:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x939 = __tmp__._0;
            _x938 = __tmp__._1;
        };
        var _x940:GoUInt64 = ((0 : GoUInt64));
        var _x941:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x941 = __tmp__._0;
            _x940 = __tmp__._1;
        };
        var _x942:GoUInt64 = ((0 : GoUInt64));
        var _x943:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x943 = __tmp__._0;
            _x942 = __tmp__._1;
        };
        var _x944:GoUInt64 = ((0 : GoUInt64));
        var _x945:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x945 = __tmp__._0;
            _x944 = __tmp__._1;
        };
        var _x946:GoUInt64 = ((0 : GoUInt64));
        var _x947:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x947 = __tmp__._0;
            _x946 = __tmp__._1;
        };
        var _x948:GoUInt64 = ((0 : GoUInt64));
        var _x949:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x912, (("18446744073709551615" : GoUInt64)));
            _x949 = __tmp__._0;
            _x948 = __tmp__._1;
        };
        var _x950:GoUInt64 = ((0 : GoUInt64));
        var _x951:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x949, _x946, ((((0 : GoUInt64)) : GoUInt64)));
            _x950 = __tmp__._0;
            _x951 = __tmp__._1;
        };
        var _x952:GoUInt64 = ((0 : GoUInt64));
        var _x953:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x947, _x944, ((((_x951 : T_p521Uint1)) : GoUInt64)));
            _x952 = __tmp__._0;
            _x953 = __tmp__._1;
        };
        var _x954:GoUInt64 = ((0 : GoUInt64));
        var _x955:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x945, _x942, ((((_x953 : T_p521Uint1)) : GoUInt64)));
            _x954 = __tmp__._0;
            _x955 = __tmp__._1;
        };
        var _x956:GoUInt64 = ((0 : GoUInt64));
        var _x957:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x943, _x940, ((((_x955 : T_p521Uint1)) : GoUInt64)));
            _x956 = __tmp__._0;
            _x957 = __tmp__._1;
        };
        var _x958:GoUInt64 = ((0 : GoUInt64));
        var _x959:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x941, _x938, ((((_x957 : T_p521Uint1)) : GoUInt64)));
            _x958 = __tmp__._0;
            _x959 = __tmp__._1;
        };
        var _x960:GoUInt64 = ((0 : GoUInt64));
        var _x961:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x939, _x936, ((((_x959 : T_p521Uint1)) : GoUInt64)));
            _x960 = __tmp__._0;
            _x961 = __tmp__._1;
        };
        var _x962:GoUInt64 = ((0 : GoUInt64));
        var _x963:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x937, _x934, ((((_x961 : T_p521Uint1)) : GoUInt64)));
            _x962 = __tmp__._0;
            _x963 = __tmp__._1;
        };
        var _x964:GoUInt64 = ((0 : GoUInt64));
        var _x965:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x935, _x932, ((((_x963 : T_p521Uint1)) : GoUInt64)));
            _x964 = __tmp__._0;
            _x965 = __tmp__._1;
        };
        var _x966:GoUInt64 = (((((_x965 : T_p521Uint1)) : GoUInt64)) + _x933);
        var _x968:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x912, _x948, ((((0 : GoUInt64)) : GoUInt64)));
            _x968 = __tmp__._1;
        };
        var _x969:GoUInt64 = ((0 : GoUInt64));
        var _x970:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x914, _x950, ((((_x968 : T_p521Uint1)) : GoUInt64)));
            _x969 = __tmp__._0;
            _x970 = __tmp__._1;
        };
        var _x971:GoUInt64 = ((0 : GoUInt64));
        var _x972:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x916, _x952, ((((_x970 : T_p521Uint1)) : GoUInt64)));
            _x971 = __tmp__._0;
            _x972 = __tmp__._1;
        };
        var _x973:GoUInt64 = ((0 : GoUInt64));
        var _x974:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x918, _x954, ((((_x972 : T_p521Uint1)) : GoUInt64)));
            _x973 = __tmp__._0;
            _x974 = __tmp__._1;
        };
        var _x975:GoUInt64 = ((0 : GoUInt64));
        var _x976:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x920, _x956, ((((_x974 : T_p521Uint1)) : GoUInt64)));
            _x975 = __tmp__._0;
            _x976 = __tmp__._1;
        };
        var _x977:GoUInt64 = ((0 : GoUInt64));
        var _x978:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x922, _x958, ((((_x976 : T_p521Uint1)) : GoUInt64)));
            _x977 = __tmp__._0;
            _x978 = __tmp__._1;
        };
        var _x979:GoUInt64 = ((0 : GoUInt64));
        var _x980:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x924, _x960, ((((_x978 : T_p521Uint1)) : GoUInt64)));
            _x979 = __tmp__._0;
            _x980 = __tmp__._1;
        };
        var _x981:GoUInt64 = ((0 : GoUInt64));
        var _x982:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x926, _x962, ((((_x980 : T_p521Uint1)) : GoUInt64)));
            _x981 = __tmp__._0;
            _x982 = __tmp__._1;
        };
        var _x983:GoUInt64 = ((0 : GoUInt64));
        var _x984:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x928, _x964, ((((_x982 : T_p521Uint1)) : GoUInt64)));
            _x983 = __tmp__._0;
            _x984 = __tmp__._1;
        };
        var _x985:GoUInt64 = ((0 : GoUInt64));
        var _x986:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x930, _x966, ((((_x984 : T_p521Uint1)) : GoUInt64)));
            _x985 = __tmp__._0;
            _x986 = __tmp__._1;
        };
        var _x987:GoUInt64 = (((((_x986 : T_p521Uint1)) : GoUInt64)) + ((((_x931 : T_p521Uint1)) : GoUInt64)));
        var _x988:GoUInt64 = ((0 : GoUInt64));
        var _x989:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x969, (("18446744073709551615" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x988 = __tmp__._0;
            _x989 = __tmp__._1;
        };
        var _x990:GoUInt64 = ((0 : GoUInt64));
        var _x991:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x971, (("18446744073709551615" : GoUInt64)), ((((_x989 : T_p521Uint1)) : GoUInt64)));
            _x990 = __tmp__._0;
            _x991 = __tmp__._1;
        };
        var _x992:GoUInt64 = ((0 : GoUInt64));
        var _x993:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x973, (("18446744073709551615" : GoUInt64)), ((((_x991 : T_p521Uint1)) : GoUInt64)));
            _x992 = __tmp__._0;
            _x993 = __tmp__._1;
        };
        var _x994:GoUInt64 = ((0 : GoUInt64));
        var _x995:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x975, (("18446744073709551615" : GoUInt64)), ((((_x993 : T_p521Uint1)) : GoUInt64)));
            _x994 = __tmp__._0;
            _x995 = __tmp__._1;
        };
        var _x996:GoUInt64 = ((0 : GoUInt64));
        var _x997:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x977, (("18446744073709551615" : GoUInt64)), ((((_x995 : T_p521Uint1)) : GoUInt64)));
            _x996 = __tmp__._0;
            _x997 = __tmp__._1;
        };
        var _x998:GoUInt64 = ((0 : GoUInt64));
        var _x999:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x979, (("18446744073709551615" : GoUInt64)), ((((_x997 : T_p521Uint1)) : GoUInt64)));
            _x998 = __tmp__._0;
            _x999 = __tmp__._1;
        };
        var _x1000:GoUInt64 = ((0 : GoUInt64));
        var _x1001:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x981, (("18446744073709551615" : GoUInt64)), ((((_x999 : T_p521Uint1)) : GoUInt64)));
            _x1000 = __tmp__._0;
            _x1001 = __tmp__._1;
        };
        var _x1002:GoUInt64 = ((0 : GoUInt64));
        var _x1003:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x983, (("18446744073709551615" : GoUInt64)), ((((_x1001 : T_p521Uint1)) : GoUInt64)));
            _x1002 = __tmp__._0;
            _x1003 = __tmp__._1;
        };
        var _x1004:GoUInt64 = ((0 : GoUInt64));
        var _x1005:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x985, ((511 : GoUInt64)), ((((_x1003 : T_p521Uint1)) : GoUInt64)));
            _x1004 = __tmp__._0;
            _x1005 = __tmp__._1;
        };
        var _x1007:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x987, ((((0 : GoUInt64)) : GoUInt64)), ((((_x1005 : T_p521Uint1)) : GoUInt64)));
            _x1007 = __tmp__._1;
        };
        var _x1008:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1008), ((_x1007 : T_p521Uint1)), _x988, _x969);
        var _x1009:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1009), ((_x1007 : T_p521Uint1)), _x990, _x971);
        var _x1010:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1010), ((_x1007 : T_p521Uint1)), _x992, _x973);
        var _x1011:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1011), ((_x1007 : T_p521Uint1)), _x994, _x975);
        var _x1012:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1012), ((_x1007 : T_p521Uint1)), _x996, _x977);
        var _x1013:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1013), ((_x1007 : T_p521Uint1)), _x998, _x979);
        var _x1014:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1014), ((_x1007 : T_p521Uint1)), _x1000, _x981);
        var _x1015:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1015), ((_x1007 : T_p521Uint1)), _x1002, _x983);
        var _x1016:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1016), ((_x1007 : T_p521Uint1)), _x1004, _x985);
        if (_out1 != null) _out1[((0 : GoInt))] = _x1008;
        if (_out1 != null) _out1[((1 : GoInt))] = _x1009;
        if (_out1 != null) _out1[((2 : GoInt))] = _x1010;
        if (_out1 != null) _out1[((3 : GoInt))] = _x1011;
        if (_out1 != null) _out1[((4 : GoInt))] = _x1012;
        if (_out1 != null) _out1[((5 : GoInt))] = _x1013;
        if (_out1 != null) _out1[((6 : GoInt))] = _x1014;
        if (_out1 != null) _out1[((7 : GoInt))] = _x1015;
        if (_out1 != null) _out1[((8 : GoInt))] = _x1016;
    }
/**
    // p521Add adds two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) + eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521Add(_out1:T_p521MontgomeryDomainFieldElement, _arg1:T_p521MontgomeryDomainFieldElement, _arg2:T_p521MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), ((((_x2 : T_p521Uint1)) : GoUInt64)));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), ((((_x4 : T_p521Uint1)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), ((((_x6 : T_p521Uint1)) : GoUInt64)));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))), ((((_x8 : T_p521Uint1)) : GoUInt64)));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))), ((((_x10 : T_p521Uint1)) : GoUInt64)));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))), ((((_x12 : T_p521Uint1)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))), ((((_x14 : T_p521Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))), ((((_x16 : T_p521Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x1, (("18446744073709551615" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x19 = __tmp__._0;
            _x20 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x3, (("18446744073709551615" : GoUInt64)), ((((_x20 : T_p521Uint1)) : GoUInt64)));
            _x21 = __tmp__._0;
            _x22 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x5, (("18446744073709551615" : GoUInt64)), ((((_x22 : T_p521Uint1)) : GoUInt64)));
            _x23 = __tmp__._0;
            _x24 = __tmp__._1;
        };
        var _x25:GoUInt64 = ((0 : GoUInt64));
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x7, (("18446744073709551615" : GoUInt64)), ((((_x24 : T_p521Uint1)) : GoUInt64)));
            _x25 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x9, (("18446744073709551615" : GoUInt64)), ((((_x26 : T_p521Uint1)) : GoUInt64)));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:GoUInt64 = ((0 : GoUInt64));
        var _x30:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x11, (("18446744073709551615" : GoUInt64)), ((((_x28 : T_p521Uint1)) : GoUInt64)));
            _x29 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x31:GoUInt64 = ((0 : GoUInt64));
        var _x32:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x13, (("18446744073709551615" : GoUInt64)), ((((_x30 : T_p521Uint1)) : GoUInt64)));
            _x31 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x33:GoUInt64 = ((0 : GoUInt64));
        var _x34:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x15, (("18446744073709551615" : GoUInt64)), ((((_x32 : T_p521Uint1)) : GoUInt64)));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:GoUInt64 = ((0 : GoUInt64));
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x17, ((511 : GoUInt64)), ((((_x34 : T_p521Uint1)) : GoUInt64)));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((_x18 : T_p521Uint1)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x36 : T_p521Uint1)) : GoUInt64)));
            _x38 = __tmp__._1;
        };
        var _x39:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x39), ((_x38 : T_p521Uint1)), _x19, _x1);
        var _x40:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x40), ((_x38 : T_p521Uint1)), _x21, _x3);
        var _x41:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x41), ((_x38 : T_p521Uint1)), _x23, _x5);
        var _x42:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x42), ((_x38 : T_p521Uint1)), _x25, _x7);
        var _x43:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x43), ((_x38 : T_p521Uint1)), _x27, _x9);
        var _x44:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x44), ((_x38 : T_p521Uint1)), _x29, _x11);
        var _x45:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x45), ((_x38 : T_p521Uint1)), _x31, _x13);
        var _x46:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x46), ((_x38 : T_p521Uint1)), _x33, _x15);
        var _x47:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x47), ((_x38 : T_p521Uint1)), _x35, _x17);
        if (_out1 != null) _out1[((0 : GoInt))] = _x39;
        if (_out1 != null) _out1[((1 : GoInt))] = _x40;
        if (_out1 != null) _out1[((2 : GoInt))] = _x41;
        if (_out1 != null) _out1[((3 : GoInt))] = _x42;
        if (_out1 != null) _out1[((4 : GoInt))] = _x43;
        if (_out1 != null) _out1[((5 : GoInt))] = _x44;
        if (_out1 != null) _out1[((6 : GoInt))] = _x45;
        if (_out1 != null) _out1[((7 : GoInt))] = _x46;
        if (_out1 != null) _out1[((8 : GoInt))] = _x47;
    }
/**
    // p521Sub subtracts two field elements in the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    //   0 ≤ eval arg2 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = (eval (from_montgomery arg1) - eval (from_montgomery arg2)) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521Sub(_out1:T_p521MontgomeryDomainFieldElement, _arg1:T_p521MontgomeryDomainFieldElement, _arg2:T_p521MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x1 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), ((((_x2 : T_p521Uint1)) : GoUInt64)));
            _x3 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), ((((_x4 : T_p521Uint1)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), ((((_x6 : T_p521Uint1)) : GoUInt64)));
            _x7 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))), ((((_x8 : T_p521Uint1)) : GoUInt64)));
            _x9 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))), ((((_x10 : T_p521Uint1)) : GoUInt64)));
            _x11 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))), ((((_x12 : T_p521Uint1)) : GoUInt64)));
            _x13 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))), ((((_x14 : T_p521Uint1)) : GoUInt64)));
            _x15 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64((_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))), (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))), ((((_x16 : T_p521Uint1)) : GoUInt64)));
            _x17 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x19), ((_x18 : T_p521Uint1)), ((((0 : GoUInt64)) : GoUInt64)), (("18446744073709551615" : GoUInt64)));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, _x19, ((((0 : GoUInt64)) : GoUInt64)));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x3, _x19, ((((_x21 : T_p521Uint1)) : GoUInt64)));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x5, _x19, ((((_x23 : T_p521Uint1)) : GoUInt64)));
            _x24 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x7, _x19, ((((_x25 : T_p521Uint1)) : GoUInt64)));
            _x26 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x9, _x19, ((((_x27 : T_p521Uint1)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x19, ((((_x29 : T_p521Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x19, ((((_x31 : T_p521Uint1)) : GoUInt64)));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x19, ((((_x33 : T_p521Uint1)) : GoUInt64)));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, (_x19 & ((511 : GoUInt64))), ((((_x35 : T_p521Uint1)) : GoUInt64)));
            _x36 = __tmp__._0;
        };
        if (_out1 != null) _out1[((0 : GoInt))] = _x20;
        if (_out1 != null) _out1[((1 : GoInt))] = _x22;
        if (_out1 != null) _out1[((2 : GoInt))] = _x24;
        if (_out1 != null) _out1[((3 : GoInt))] = _x26;
        if (_out1 != null) _out1[((4 : GoInt))] = _x28;
        if (_out1 != null) _out1[((5 : GoInt))] = _x30;
        if (_out1 != null) _out1[((6 : GoInt))] = _x32;
        if (_out1 != null) _out1[((7 : GoInt))] = _x34;
        if (_out1 != null) _out1[((8 : GoInt))] = _x36;
    }
/**
    // p521SetOne returns the field element one in the Montgomery domain.
    //
    // Postconditions:
    //   eval (from_montgomery out1) mod m = 1 mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521SetOne(_out1:T_p521MontgomeryDomainFieldElement):Void {
        if (_out1 != null) _out1[((0 : GoInt))] = (("36028797018963968" : GoUInt64));
        if (_out1 != null) _out1[((1 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((2 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((3 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((4 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((5 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((6 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((7 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
        if (_out1 != null) _out1[((8 : GoInt))] = ((((0 : GoUInt64)) : GoUInt64));
    }
/**
    // p521FromMontgomery translates a field element out of the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval out1 mod m = (eval arg1 * ((2^64)⁻¹ mod m)^9) mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521FromMontgomery(_out1:T_p521NonMontgomeryDomainFieldElement, _arg1:T_p521MontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        var _x3:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, ((511 : GoUInt64)));
            _x3 = __tmp__._0;
            _x2 = __tmp__._1;
        };
        var _x4:GoUInt64 = ((0 : GoUInt64));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x5 = __tmp__._0;
            _x4 = __tmp__._1;
        };
        var _x6:GoUInt64 = ((0 : GoUInt64));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x7 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x8:GoUInt64 = ((0 : GoUInt64));
        var _x9:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x9 = __tmp__._0;
            _x8 = __tmp__._1;
        };
        var _x10:GoUInt64 = ((0 : GoUInt64));
        var _x11:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x11 = __tmp__._0;
            _x10 = __tmp__._1;
        };
        var _x12:GoUInt64 = ((0 : GoUInt64));
        var _x13:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x13 = __tmp__._0;
            _x12 = __tmp__._1;
        };
        var _x14:GoUInt64 = ((0 : GoUInt64));
        var _x15:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x15 = __tmp__._0;
            _x14 = __tmp__._1;
        };
        var _x16:GoUInt64 = ((0 : GoUInt64));
        var _x17:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x17 = __tmp__._0;
            _x16 = __tmp__._1;
        };
        var _x18:GoUInt64 = ((0 : GoUInt64));
        var _x19:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x19 = __tmp__._0;
            _x18 = __tmp__._1;
        };
        var _x20:GoUInt64 = ((0 : GoUInt64));
        var _x21:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x19, _x16, ((((0 : GoUInt64)) : GoUInt64)));
            _x20 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x22:GoUInt64 = ((0 : GoUInt64));
        var _x23:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x17, _x14, ((((_x21 : T_p521Uint1)) : GoUInt64)));
            _x22 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x24:GoUInt64 = ((0 : GoUInt64));
        var _x25:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x15, _x12, ((((_x23 : T_p521Uint1)) : GoUInt64)));
            _x24 = __tmp__._0;
            _x25 = __tmp__._1;
        };
        var _x26:GoUInt64 = ((0 : GoUInt64));
        var _x27:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x13, _x10, ((((_x25 : T_p521Uint1)) : GoUInt64)));
            _x26 = __tmp__._0;
            _x27 = __tmp__._1;
        };
        var _x28:GoUInt64 = ((0 : GoUInt64));
        var _x29:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x11, _x8, ((((_x27 : T_p521Uint1)) : GoUInt64)));
            _x28 = __tmp__._0;
            _x29 = __tmp__._1;
        };
        var _x30:GoUInt64 = ((0 : GoUInt64));
        var _x31:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x9, _x6, ((((_x29 : T_p521Uint1)) : GoUInt64)));
            _x30 = __tmp__._0;
            _x31 = __tmp__._1;
        };
        var _x32:GoUInt64 = ((0 : GoUInt64));
        var _x33:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x7, _x4, ((((_x31 : T_p521Uint1)) : GoUInt64)));
            _x32 = __tmp__._0;
            _x33 = __tmp__._1;
        };
        var _x34:GoUInt64 = ((0 : GoUInt64));
        var _x35:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x5, _x2, ((((_x33 : T_p521Uint1)) : GoUInt64)));
            _x34 = __tmp__._0;
            _x35 = __tmp__._1;
        };
        var _x37:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, _x18, ((((0 : GoUInt64)) : GoUInt64)));
            _x37 = __tmp__._1;
        };
        var _x38:GoUInt64 = ((0 : GoUInt64));
        var _x39:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x20, ((((_x37 : T_p521Uint1)) : GoUInt64)));
            _x38 = __tmp__._0;
            _x39 = __tmp__._1;
        };
        var _x40:GoUInt64 = ((0 : GoUInt64));
        var _x41:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x22, ((((_x39 : T_p521Uint1)) : GoUInt64)));
            _x40 = __tmp__._0;
            _x41 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        var _x43:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x24, ((((_x41 : T_p521Uint1)) : GoUInt64)));
            _x42 = __tmp__._0;
            _x43 = __tmp__._1;
        };
        var _x44:GoUInt64 = ((0 : GoUInt64));
        var _x45:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x26, ((((_x43 : T_p521Uint1)) : GoUInt64)));
            _x44 = __tmp__._0;
            _x45 = __tmp__._1;
        };
        var _x46:GoUInt64 = ((0 : GoUInt64));
        var _x47:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x28, ((((_x45 : T_p521Uint1)) : GoUInt64)));
            _x46 = __tmp__._0;
            _x47 = __tmp__._1;
        };
        var _x48:GoUInt64 = ((0 : GoUInt64));
        var _x49:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x30, ((((_x47 : T_p521Uint1)) : GoUInt64)));
            _x48 = __tmp__._0;
            _x49 = __tmp__._1;
        };
        var _x50:GoUInt64 = ((0 : GoUInt64));
        var _x51:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x32, ((((_x49 : T_p521Uint1)) : GoUInt64)));
            _x50 = __tmp__._0;
            _x51 = __tmp__._1;
        };
        var _x52:GoUInt64 = ((0 : GoUInt64));
        var _x53:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x34, ((((_x51 : T_p521Uint1)) : GoUInt64)));
            _x52 = __tmp__._0;
            _x53 = __tmp__._1;
        };
        var _x54:GoUInt64 = ((0 : GoUInt64));
        var _x55:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x38, (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x54 = __tmp__._0;
            _x55 = __tmp__._1;
        };
        var _x56:GoUInt64 = ((0 : GoUInt64));
        var _x57:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x40, ((((0 : GoUInt64)) : GoUInt64)), ((((_x55 : T_p521Uint1)) : GoUInt64)));
            _x56 = __tmp__._0;
            _x57 = __tmp__._1;
        };
        var _x58:GoUInt64 = ((0 : GoUInt64));
        var _x59:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x42, ((((0 : GoUInt64)) : GoUInt64)), ((((_x57 : T_p521Uint1)) : GoUInt64)));
            _x58 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x60:GoUInt64 = ((0 : GoUInt64));
        var _x61:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x44, ((((0 : GoUInt64)) : GoUInt64)), ((((_x59 : T_p521Uint1)) : GoUInt64)));
            _x60 = __tmp__._0;
            _x61 = __tmp__._1;
        };
        var _x62:GoUInt64 = ((0 : GoUInt64));
        var _x63:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x46, ((((0 : GoUInt64)) : GoUInt64)), ((((_x61 : T_p521Uint1)) : GoUInt64)));
            _x62 = __tmp__._0;
            _x63 = __tmp__._1;
        };
        var _x64:GoUInt64 = ((0 : GoUInt64));
        var _x65:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x48, ((((0 : GoUInt64)) : GoUInt64)), ((((_x63 : T_p521Uint1)) : GoUInt64)));
            _x64 = __tmp__._0;
            _x65 = __tmp__._1;
        };
        var _x66:GoUInt64 = ((0 : GoUInt64));
        var _x67:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x50, ((((0 : GoUInt64)) : GoUInt64)), ((((_x65 : T_p521Uint1)) : GoUInt64)));
            _x66 = __tmp__._0;
            _x67 = __tmp__._1;
        };
        var _x68:GoUInt64 = ((0 : GoUInt64));
        var _x69:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x52, ((((0 : GoUInt64)) : GoUInt64)), ((((_x67 : T_p521Uint1)) : GoUInt64)));
            _x68 = __tmp__._0;
            _x69 = __tmp__._1;
        };
        var _x70:GoUInt64 = ((0 : GoUInt64));
        var _x71:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, ((511 : GoUInt64)));
            _x71 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x72:GoUInt64 = ((0 : GoUInt64));
        var _x73:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x73 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x74:GoUInt64 = ((0 : GoUInt64));
        var _x75:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x75 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x76:GoUInt64 = ((0 : GoUInt64));
        var _x77:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x77 = __tmp__._0;
            _x76 = __tmp__._1;
        };
        var _x78:GoUInt64 = ((0 : GoUInt64));
        var _x79:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x79 = __tmp__._0;
            _x78 = __tmp__._1;
        };
        var _x80:GoUInt64 = ((0 : GoUInt64));
        var _x81:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x81 = __tmp__._0;
            _x80 = __tmp__._1;
        };
        var _x82:GoUInt64 = ((0 : GoUInt64));
        var _x83:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x83 = __tmp__._0;
            _x82 = __tmp__._1;
        };
        var _x84:GoUInt64 = ((0 : GoUInt64));
        var _x85:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x85 = __tmp__._0;
            _x84 = __tmp__._1;
        };
        var _x86:GoUInt64 = ((0 : GoUInt64));
        var _x87:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x54, (("18446744073709551615" : GoUInt64)));
            _x87 = __tmp__._0;
            _x86 = __tmp__._1;
        };
        var _x88:GoUInt64 = ((0 : GoUInt64));
        var _x89:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x87, _x84, ((((0 : GoUInt64)) : GoUInt64)));
            _x88 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x90:GoUInt64 = ((0 : GoUInt64));
        var _x91:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x85, _x82, ((((_x89 : T_p521Uint1)) : GoUInt64)));
            _x90 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x92:GoUInt64 = ((0 : GoUInt64));
        var _x93:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x83, _x80, ((((_x91 : T_p521Uint1)) : GoUInt64)));
            _x92 = __tmp__._0;
            _x93 = __tmp__._1;
        };
        var _x94:GoUInt64 = ((0 : GoUInt64));
        var _x95:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x81, _x78, ((((_x93 : T_p521Uint1)) : GoUInt64)));
            _x94 = __tmp__._0;
            _x95 = __tmp__._1;
        };
        var _x96:GoUInt64 = ((0 : GoUInt64));
        var _x97:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x79, _x76, ((((_x95 : T_p521Uint1)) : GoUInt64)));
            _x96 = __tmp__._0;
            _x97 = __tmp__._1;
        };
        var _x98:GoUInt64 = ((0 : GoUInt64));
        var _x99:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x77, _x74, ((((_x97 : T_p521Uint1)) : GoUInt64)));
            _x98 = __tmp__._0;
            _x99 = __tmp__._1;
        };
        var _x100:GoUInt64 = ((0 : GoUInt64));
        var _x101:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x75, _x72, ((((_x99 : T_p521Uint1)) : GoUInt64)));
            _x100 = __tmp__._0;
            _x101 = __tmp__._1;
        };
        var _x102:GoUInt64 = ((0 : GoUInt64));
        var _x103:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x73, _x70, ((((_x101 : T_p521Uint1)) : GoUInt64)));
            _x102 = __tmp__._0;
            _x103 = __tmp__._1;
        };
        var _x105:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x54, _x86, ((((0 : GoUInt64)) : GoUInt64)));
            _x105 = __tmp__._1;
        };
        var _x106:GoUInt64 = ((0 : GoUInt64));
        var _x107:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x56, _x88, ((((_x105 : T_p521Uint1)) : GoUInt64)));
            _x106 = __tmp__._0;
            _x107 = __tmp__._1;
        };
        var _x108:GoUInt64 = ((0 : GoUInt64));
        var _x109:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x58, _x90, ((((_x107 : T_p521Uint1)) : GoUInt64)));
            _x108 = __tmp__._0;
            _x109 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        var _x111:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x60, _x92, ((((_x109 : T_p521Uint1)) : GoUInt64)));
            _x110 = __tmp__._0;
            _x111 = __tmp__._1;
        };
        var _x112:GoUInt64 = ((0 : GoUInt64));
        var _x113:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x62, _x94, ((((_x111 : T_p521Uint1)) : GoUInt64)));
            _x112 = __tmp__._0;
            _x113 = __tmp__._1;
        };
        var _x114:GoUInt64 = ((0 : GoUInt64));
        var _x115:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x64, _x96, ((((_x113 : T_p521Uint1)) : GoUInt64)));
            _x114 = __tmp__._0;
            _x115 = __tmp__._1;
        };
        var _x116:GoUInt64 = ((0 : GoUInt64));
        var _x117:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x66, _x98, ((((_x115 : T_p521Uint1)) : GoUInt64)));
            _x116 = __tmp__._0;
            _x117 = __tmp__._1;
        };
        var _x118:GoUInt64 = ((0 : GoUInt64));
        var _x119:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x68, _x100, ((((_x117 : T_p521Uint1)) : GoUInt64)));
            _x118 = __tmp__._0;
            _x119 = __tmp__._1;
        };
        var _x120:GoUInt64 = ((0 : GoUInt64));
        var _x121:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x69 : T_p521Uint1)) : GoUInt64)) + (((((_x53 : T_p521Uint1)) : GoUInt64)) + (((((_x35 : T_p521Uint1)) : GoUInt64)) + _x3))), _x102, ((((_x119 : T_p521Uint1)) : GoUInt64)));
            _x120 = __tmp__._0;
            _x121 = __tmp__._1;
        };
        var _x122:GoUInt64 = ((0 : GoUInt64));
        var _x123:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x106, (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x122 = __tmp__._0;
            _x123 = __tmp__._1;
        };
        var _x124:GoUInt64 = ((0 : GoUInt64));
        var _x125:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x108, ((((0 : GoUInt64)) : GoUInt64)), ((((_x123 : T_p521Uint1)) : GoUInt64)));
            _x124 = __tmp__._0;
            _x125 = __tmp__._1;
        };
        var _x126:GoUInt64 = ((0 : GoUInt64));
        var _x127:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x110, ((((0 : GoUInt64)) : GoUInt64)), ((((_x125 : T_p521Uint1)) : GoUInt64)));
            _x126 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x128:GoUInt64 = ((0 : GoUInt64));
        var _x129:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x112, ((((0 : GoUInt64)) : GoUInt64)), ((((_x127 : T_p521Uint1)) : GoUInt64)));
            _x128 = __tmp__._0;
            _x129 = __tmp__._1;
        };
        var _x130:GoUInt64 = ((0 : GoUInt64));
        var _x131:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x114, ((((0 : GoUInt64)) : GoUInt64)), ((((_x129 : T_p521Uint1)) : GoUInt64)));
            _x130 = __tmp__._0;
            _x131 = __tmp__._1;
        };
        var _x132:GoUInt64 = ((0 : GoUInt64));
        var _x133:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x116, ((((0 : GoUInt64)) : GoUInt64)), ((((_x131 : T_p521Uint1)) : GoUInt64)));
            _x132 = __tmp__._0;
            _x133 = __tmp__._1;
        };
        var _x134:GoUInt64 = ((0 : GoUInt64));
        var _x135:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x118, ((((0 : GoUInt64)) : GoUInt64)), ((((_x133 : T_p521Uint1)) : GoUInt64)));
            _x134 = __tmp__._0;
            _x135 = __tmp__._1;
        };
        var _x136:GoUInt64 = ((0 : GoUInt64));
        var _x137:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x120, ((((0 : GoUInt64)) : GoUInt64)), ((((_x135 : T_p521Uint1)) : GoUInt64)));
            _x136 = __tmp__._0;
            _x137 = __tmp__._1;
        };
        var _x138:GoUInt64 = ((0 : GoUInt64));
        var _x139:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, ((511 : GoUInt64)));
            _x139 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x140:GoUInt64 = ((0 : GoUInt64));
        var _x141:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x141 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x142:GoUInt64 = ((0 : GoUInt64));
        var _x143:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x143 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x144:GoUInt64 = ((0 : GoUInt64));
        var _x145:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x145 = __tmp__._0;
            _x144 = __tmp__._1;
        };
        var _x146:GoUInt64 = ((0 : GoUInt64));
        var _x147:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x147 = __tmp__._0;
            _x146 = __tmp__._1;
        };
        var _x148:GoUInt64 = ((0 : GoUInt64));
        var _x149:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x149 = __tmp__._0;
            _x148 = __tmp__._1;
        };
        var _x150:GoUInt64 = ((0 : GoUInt64));
        var _x151:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x151 = __tmp__._0;
            _x150 = __tmp__._1;
        };
        var _x152:GoUInt64 = ((0 : GoUInt64));
        var _x153:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x153 = __tmp__._0;
            _x152 = __tmp__._1;
        };
        var _x154:GoUInt64 = ((0 : GoUInt64));
        var _x155:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x122, (("18446744073709551615" : GoUInt64)));
            _x155 = __tmp__._0;
            _x154 = __tmp__._1;
        };
        var _x156:GoUInt64 = ((0 : GoUInt64));
        var _x157:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x155, _x152, ((((0 : GoUInt64)) : GoUInt64)));
            _x156 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x158:GoUInt64 = ((0 : GoUInt64));
        var _x159:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x153, _x150, ((((_x157 : T_p521Uint1)) : GoUInt64)));
            _x158 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x160:GoUInt64 = ((0 : GoUInt64));
        var _x161:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x151, _x148, ((((_x159 : T_p521Uint1)) : GoUInt64)));
            _x160 = __tmp__._0;
            _x161 = __tmp__._1;
        };
        var _x162:GoUInt64 = ((0 : GoUInt64));
        var _x163:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x149, _x146, ((((_x161 : T_p521Uint1)) : GoUInt64)));
            _x162 = __tmp__._0;
            _x163 = __tmp__._1;
        };
        var _x164:GoUInt64 = ((0 : GoUInt64));
        var _x165:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x147, _x144, ((((_x163 : T_p521Uint1)) : GoUInt64)));
            _x164 = __tmp__._0;
            _x165 = __tmp__._1;
        };
        var _x166:GoUInt64 = ((0 : GoUInt64));
        var _x167:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x145, _x142, ((((_x165 : T_p521Uint1)) : GoUInt64)));
            _x166 = __tmp__._0;
            _x167 = __tmp__._1;
        };
        var _x168:GoUInt64 = ((0 : GoUInt64));
        var _x169:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x143, _x140, ((((_x167 : T_p521Uint1)) : GoUInt64)));
            _x168 = __tmp__._0;
            _x169 = __tmp__._1;
        };
        var _x170:GoUInt64 = ((0 : GoUInt64));
        var _x171:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x138, ((((_x169 : T_p521Uint1)) : GoUInt64)));
            _x170 = __tmp__._0;
            _x171 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x122, _x154, ((((0 : GoUInt64)) : GoUInt64)));
            _x173 = __tmp__._1;
        };
        var _x174:GoUInt64 = ((0 : GoUInt64));
        var _x175:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x124, _x156, ((((_x173 : T_p521Uint1)) : GoUInt64)));
            _x174 = __tmp__._0;
            _x175 = __tmp__._1;
        };
        var _x176:GoUInt64 = ((0 : GoUInt64));
        var _x177:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x126, _x158, ((((_x175 : T_p521Uint1)) : GoUInt64)));
            _x176 = __tmp__._0;
            _x177 = __tmp__._1;
        };
        var _x178:GoUInt64 = ((0 : GoUInt64));
        var _x179:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x128, _x160, ((((_x177 : T_p521Uint1)) : GoUInt64)));
            _x178 = __tmp__._0;
            _x179 = __tmp__._1;
        };
        var _x180:GoUInt64 = ((0 : GoUInt64));
        var _x181:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x130, _x162, ((((_x179 : T_p521Uint1)) : GoUInt64)));
            _x180 = __tmp__._0;
            _x181 = __tmp__._1;
        };
        var _x182:GoUInt64 = ((0 : GoUInt64));
        var _x183:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x132, _x164, ((((_x181 : T_p521Uint1)) : GoUInt64)));
            _x182 = __tmp__._0;
            _x183 = __tmp__._1;
        };
        var _x184:GoUInt64 = ((0 : GoUInt64));
        var _x185:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x134, _x166, ((((_x183 : T_p521Uint1)) : GoUInt64)));
            _x184 = __tmp__._0;
            _x185 = __tmp__._1;
        };
        var _x186:GoUInt64 = ((0 : GoUInt64));
        var _x187:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x136, _x168, ((((_x185 : T_p521Uint1)) : GoUInt64)));
            _x186 = __tmp__._0;
            _x187 = __tmp__._1;
        };
        var _x188:GoUInt64 = ((0 : GoUInt64));
        var _x189:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x137 : T_p521Uint1)) : GoUInt64)) + (((((_x121 : T_p521Uint1)) : GoUInt64)) + (((((_x103 : T_p521Uint1)) : GoUInt64)) + _x71))), _x170, ((((_x187 : T_p521Uint1)) : GoUInt64)));
            _x188 = __tmp__._0;
            _x189 = __tmp__._1;
        };
        var _x190:GoUInt64 = ((0 : GoUInt64));
        var _x191:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x174, (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x190 = __tmp__._0;
            _x191 = __tmp__._1;
        };
        var _x192:GoUInt64 = ((0 : GoUInt64));
        var _x193:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x176, ((((0 : GoUInt64)) : GoUInt64)), ((((_x191 : T_p521Uint1)) : GoUInt64)));
            _x192 = __tmp__._0;
            _x193 = __tmp__._1;
        };
        var _x194:GoUInt64 = ((0 : GoUInt64));
        var _x195:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x178, ((((0 : GoUInt64)) : GoUInt64)), ((((_x193 : T_p521Uint1)) : GoUInt64)));
            _x194 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x196:GoUInt64 = ((0 : GoUInt64));
        var _x197:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x180, ((((0 : GoUInt64)) : GoUInt64)), ((((_x195 : T_p521Uint1)) : GoUInt64)));
            _x196 = __tmp__._0;
            _x197 = __tmp__._1;
        };
        var _x198:GoUInt64 = ((0 : GoUInt64));
        var _x199:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x182, ((((0 : GoUInt64)) : GoUInt64)), ((((_x197 : T_p521Uint1)) : GoUInt64)));
            _x198 = __tmp__._0;
            _x199 = __tmp__._1;
        };
        var _x200:GoUInt64 = ((0 : GoUInt64));
        var _x201:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x184, ((((0 : GoUInt64)) : GoUInt64)), ((((_x199 : T_p521Uint1)) : GoUInt64)));
            _x200 = __tmp__._0;
            _x201 = __tmp__._1;
        };
        var _x202:GoUInt64 = ((0 : GoUInt64));
        var _x203:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x186, ((((0 : GoUInt64)) : GoUInt64)), ((((_x201 : T_p521Uint1)) : GoUInt64)));
            _x202 = __tmp__._0;
            _x203 = __tmp__._1;
        };
        var _x204:GoUInt64 = ((0 : GoUInt64));
        var _x205:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x188, ((((0 : GoUInt64)) : GoUInt64)), ((((_x203 : T_p521Uint1)) : GoUInt64)));
            _x204 = __tmp__._0;
            _x205 = __tmp__._1;
        };
        var _x206:GoUInt64 = ((0 : GoUInt64));
        var _x207:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, ((511 : GoUInt64)));
            _x207 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x208:GoUInt64 = ((0 : GoUInt64));
        var _x209:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x209 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x210:GoUInt64 = ((0 : GoUInt64));
        var _x211:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x211 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x212:GoUInt64 = ((0 : GoUInt64));
        var _x213:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x213 = __tmp__._0;
            _x212 = __tmp__._1;
        };
        var _x214:GoUInt64 = ((0 : GoUInt64));
        var _x215:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x215 = __tmp__._0;
            _x214 = __tmp__._1;
        };
        var _x216:GoUInt64 = ((0 : GoUInt64));
        var _x217:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x217 = __tmp__._0;
            _x216 = __tmp__._1;
        };
        var _x218:GoUInt64 = ((0 : GoUInt64));
        var _x219:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x219 = __tmp__._0;
            _x218 = __tmp__._1;
        };
        var _x220:GoUInt64 = ((0 : GoUInt64));
        var _x221:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x221 = __tmp__._0;
            _x220 = __tmp__._1;
        };
        var _x222:GoUInt64 = ((0 : GoUInt64));
        var _x223:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x190, (("18446744073709551615" : GoUInt64)));
            _x223 = __tmp__._0;
            _x222 = __tmp__._1;
        };
        var _x224:GoUInt64 = ((0 : GoUInt64));
        var _x225:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x223, _x220, ((((0 : GoUInt64)) : GoUInt64)));
            _x224 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x226:GoUInt64 = ((0 : GoUInt64));
        var _x227:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x221, _x218, ((((_x225 : T_p521Uint1)) : GoUInt64)));
            _x226 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x228:GoUInt64 = ((0 : GoUInt64));
        var _x229:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x219, _x216, ((((_x227 : T_p521Uint1)) : GoUInt64)));
            _x228 = __tmp__._0;
            _x229 = __tmp__._1;
        };
        var _x230:GoUInt64 = ((0 : GoUInt64));
        var _x231:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x217, _x214, ((((_x229 : T_p521Uint1)) : GoUInt64)));
            _x230 = __tmp__._0;
            _x231 = __tmp__._1;
        };
        var _x232:GoUInt64 = ((0 : GoUInt64));
        var _x233:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x215, _x212, ((((_x231 : T_p521Uint1)) : GoUInt64)));
            _x232 = __tmp__._0;
            _x233 = __tmp__._1;
        };
        var _x234:GoUInt64 = ((0 : GoUInt64));
        var _x235:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x213, _x210, ((((_x233 : T_p521Uint1)) : GoUInt64)));
            _x234 = __tmp__._0;
            _x235 = __tmp__._1;
        };
        var _x236:GoUInt64 = ((0 : GoUInt64));
        var _x237:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x211, _x208, ((((_x235 : T_p521Uint1)) : GoUInt64)));
            _x236 = __tmp__._0;
            _x237 = __tmp__._1;
        };
        var _x238:GoUInt64 = ((0 : GoUInt64));
        var _x239:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x209, _x206, ((((_x237 : T_p521Uint1)) : GoUInt64)));
            _x238 = __tmp__._0;
            _x239 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x190, _x222, ((((0 : GoUInt64)) : GoUInt64)));
            _x241 = __tmp__._1;
        };
        var _x242:GoUInt64 = ((0 : GoUInt64));
        var _x243:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x192, _x224, ((((_x241 : T_p521Uint1)) : GoUInt64)));
            _x242 = __tmp__._0;
            _x243 = __tmp__._1;
        };
        var _x244:GoUInt64 = ((0 : GoUInt64));
        var _x245:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x194, _x226, ((((_x243 : T_p521Uint1)) : GoUInt64)));
            _x244 = __tmp__._0;
            _x245 = __tmp__._1;
        };
        var _x246:GoUInt64 = ((0 : GoUInt64));
        var _x247:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x196, _x228, ((((_x245 : T_p521Uint1)) : GoUInt64)));
            _x246 = __tmp__._0;
            _x247 = __tmp__._1;
        };
        var _x248:GoUInt64 = ((0 : GoUInt64));
        var _x249:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x198, _x230, ((((_x247 : T_p521Uint1)) : GoUInt64)));
            _x248 = __tmp__._0;
            _x249 = __tmp__._1;
        };
        var _x250:GoUInt64 = ((0 : GoUInt64));
        var _x251:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x200, _x232, ((((_x249 : T_p521Uint1)) : GoUInt64)));
            _x250 = __tmp__._0;
            _x251 = __tmp__._1;
        };
        var _x252:GoUInt64 = ((0 : GoUInt64));
        var _x253:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x202, _x234, ((((_x251 : T_p521Uint1)) : GoUInt64)));
            _x252 = __tmp__._0;
            _x253 = __tmp__._1;
        };
        var _x254:GoUInt64 = ((0 : GoUInt64));
        var _x255:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x204, _x236, ((((_x253 : T_p521Uint1)) : GoUInt64)));
            _x254 = __tmp__._0;
            _x255 = __tmp__._1;
        };
        var _x256:GoUInt64 = ((0 : GoUInt64));
        var _x257:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x205 : T_p521Uint1)) : GoUInt64)) + (((((_x189 : T_p521Uint1)) : GoUInt64)) + (((((_x171 : T_p521Uint1)) : GoUInt64)) + _x139))), _x238, ((((_x255 : T_p521Uint1)) : GoUInt64)));
            _x256 = __tmp__._0;
            _x257 = __tmp__._1;
        };
        var _x258:GoUInt64 = ((0 : GoUInt64));
        var _x259:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x242, (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x258 = __tmp__._0;
            _x259 = __tmp__._1;
        };
        var _x260:GoUInt64 = ((0 : GoUInt64));
        var _x261:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x244, ((((0 : GoUInt64)) : GoUInt64)), ((((_x259 : T_p521Uint1)) : GoUInt64)));
            _x260 = __tmp__._0;
            _x261 = __tmp__._1;
        };
        var _x262:GoUInt64 = ((0 : GoUInt64));
        var _x263:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x246, ((((0 : GoUInt64)) : GoUInt64)), ((((_x261 : T_p521Uint1)) : GoUInt64)));
            _x262 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x264:GoUInt64 = ((0 : GoUInt64));
        var _x265:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x248, ((((0 : GoUInt64)) : GoUInt64)), ((((_x263 : T_p521Uint1)) : GoUInt64)));
            _x264 = __tmp__._0;
            _x265 = __tmp__._1;
        };
        var _x266:GoUInt64 = ((0 : GoUInt64));
        var _x267:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x250, ((((0 : GoUInt64)) : GoUInt64)), ((((_x265 : T_p521Uint1)) : GoUInt64)));
            _x266 = __tmp__._0;
            _x267 = __tmp__._1;
        };
        var _x268:GoUInt64 = ((0 : GoUInt64));
        var _x269:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x252, ((((0 : GoUInt64)) : GoUInt64)), ((((_x267 : T_p521Uint1)) : GoUInt64)));
            _x268 = __tmp__._0;
            _x269 = __tmp__._1;
        };
        var _x270:GoUInt64 = ((0 : GoUInt64));
        var _x271:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x254, ((((0 : GoUInt64)) : GoUInt64)), ((((_x269 : T_p521Uint1)) : GoUInt64)));
            _x270 = __tmp__._0;
            _x271 = __tmp__._1;
        };
        var _x272:GoUInt64 = ((0 : GoUInt64));
        var _x273:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x256, ((((0 : GoUInt64)) : GoUInt64)), ((((_x271 : T_p521Uint1)) : GoUInt64)));
            _x272 = __tmp__._0;
            _x273 = __tmp__._1;
        };
        var _x274:GoUInt64 = ((0 : GoUInt64));
        var _x275:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, ((511 : GoUInt64)));
            _x275 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x276:GoUInt64 = ((0 : GoUInt64));
        var _x277:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x277 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x278:GoUInt64 = ((0 : GoUInt64));
        var _x279:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x279 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x280:GoUInt64 = ((0 : GoUInt64));
        var _x281:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x281 = __tmp__._0;
            _x280 = __tmp__._1;
        };
        var _x282:GoUInt64 = ((0 : GoUInt64));
        var _x283:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x283 = __tmp__._0;
            _x282 = __tmp__._1;
        };
        var _x284:GoUInt64 = ((0 : GoUInt64));
        var _x285:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x285 = __tmp__._0;
            _x284 = __tmp__._1;
        };
        var _x286:GoUInt64 = ((0 : GoUInt64));
        var _x287:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x287 = __tmp__._0;
            _x286 = __tmp__._1;
        };
        var _x288:GoUInt64 = ((0 : GoUInt64));
        var _x289:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x289 = __tmp__._0;
            _x288 = __tmp__._1;
        };
        var _x290:GoUInt64 = ((0 : GoUInt64));
        var _x291:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x258, (("18446744073709551615" : GoUInt64)));
            _x291 = __tmp__._0;
            _x290 = __tmp__._1;
        };
        var _x292:GoUInt64 = ((0 : GoUInt64));
        var _x293:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x291, _x288, ((((0 : GoUInt64)) : GoUInt64)));
            _x292 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x294:GoUInt64 = ((0 : GoUInt64));
        var _x295:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x289, _x286, ((((_x293 : T_p521Uint1)) : GoUInt64)));
            _x294 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x296:GoUInt64 = ((0 : GoUInt64));
        var _x297:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x287, _x284, ((((_x295 : T_p521Uint1)) : GoUInt64)));
            _x296 = __tmp__._0;
            _x297 = __tmp__._1;
        };
        var _x298:GoUInt64 = ((0 : GoUInt64));
        var _x299:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x285, _x282, ((((_x297 : T_p521Uint1)) : GoUInt64)));
            _x298 = __tmp__._0;
            _x299 = __tmp__._1;
        };
        var _x300:GoUInt64 = ((0 : GoUInt64));
        var _x301:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x283, _x280, ((((_x299 : T_p521Uint1)) : GoUInt64)));
            _x300 = __tmp__._0;
            _x301 = __tmp__._1;
        };
        var _x302:GoUInt64 = ((0 : GoUInt64));
        var _x303:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x281, _x278, ((((_x301 : T_p521Uint1)) : GoUInt64)));
            _x302 = __tmp__._0;
            _x303 = __tmp__._1;
        };
        var _x304:GoUInt64 = ((0 : GoUInt64));
        var _x305:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x279, _x276, ((((_x303 : T_p521Uint1)) : GoUInt64)));
            _x304 = __tmp__._0;
            _x305 = __tmp__._1;
        };
        var _x306:GoUInt64 = ((0 : GoUInt64));
        var _x307:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x277, _x274, ((((_x305 : T_p521Uint1)) : GoUInt64)));
            _x306 = __tmp__._0;
            _x307 = __tmp__._1;
        };
        var _x309:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x258, _x290, ((((0 : GoUInt64)) : GoUInt64)));
            _x309 = __tmp__._1;
        };
        var _x310:GoUInt64 = ((0 : GoUInt64));
        var _x311:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x260, _x292, ((((_x309 : T_p521Uint1)) : GoUInt64)));
            _x310 = __tmp__._0;
            _x311 = __tmp__._1;
        };
        var _x312:GoUInt64 = ((0 : GoUInt64));
        var _x313:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x262, _x294, ((((_x311 : T_p521Uint1)) : GoUInt64)));
            _x312 = __tmp__._0;
            _x313 = __tmp__._1;
        };
        var _x314:GoUInt64 = ((0 : GoUInt64));
        var _x315:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x264, _x296, ((((_x313 : T_p521Uint1)) : GoUInt64)));
            _x314 = __tmp__._0;
            _x315 = __tmp__._1;
        };
        var _x316:GoUInt64 = ((0 : GoUInt64));
        var _x317:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x266, _x298, ((((_x315 : T_p521Uint1)) : GoUInt64)));
            _x316 = __tmp__._0;
            _x317 = __tmp__._1;
        };
        var _x318:GoUInt64 = ((0 : GoUInt64));
        var _x319:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x268, _x300, ((((_x317 : T_p521Uint1)) : GoUInt64)));
            _x318 = __tmp__._0;
            _x319 = __tmp__._1;
        };
        var _x320:GoUInt64 = ((0 : GoUInt64));
        var _x321:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x270, _x302, ((((_x319 : T_p521Uint1)) : GoUInt64)));
            _x320 = __tmp__._0;
            _x321 = __tmp__._1;
        };
        var _x322:GoUInt64 = ((0 : GoUInt64));
        var _x323:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x272, _x304, ((((_x321 : T_p521Uint1)) : GoUInt64)));
            _x322 = __tmp__._0;
            _x323 = __tmp__._1;
        };
        var _x324:GoUInt64 = ((0 : GoUInt64));
        var _x325:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x273 : T_p521Uint1)) : GoUInt64)) + (((((_x257 : T_p521Uint1)) : GoUInt64)) + (((((_x239 : T_p521Uint1)) : GoUInt64)) + _x207))), _x306, ((((_x323 : T_p521Uint1)) : GoUInt64)));
            _x324 = __tmp__._0;
            _x325 = __tmp__._1;
        };
        var _x326:GoUInt64 = ((0 : GoUInt64));
        var _x327:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x310, (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x326 = __tmp__._0;
            _x327 = __tmp__._1;
        };
        var _x328:GoUInt64 = ((0 : GoUInt64));
        var _x329:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x312, ((((0 : GoUInt64)) : GoUInt64)), ((((_x327 : T_p521Uint1)) : GoUInt64)));
            _x328 = __tmp__._0;
            _x329 = __tmp__._1;
        };
        var _x330:GoUInt64 = ((0 : GoUInt64));
        var _x331:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x314, ((((0 : GoUInt64)) : GoUInt64)), ((((_x329 : T_p521Uint1)) : GoUInt64)));
            _x330 = __tmp__._0;
            _x331 = __tmp__._1;
        };
        var _x332:GoUInt64 = ((0 : GoUInt64));
        var _x333:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x316, ((((0 : GoUInt64)) : GoUInt64)), ((((_x331 : T_p521Uint1)) : GoUInt64)));
            _x332 = __tmp__._0;
            _x333 = __tmp__._1;
        };
        var _x334:GoUInt64 = ((0 : GoUInt64));
        var _x335:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x318, ((((0 : GoUInt64)) : GoUInt64)), ((((_x333 : T_p521Uint1)) : GoUInt64)));
            _x334 = __tmp__._0;
            _x335 = __tmp__._1;
        };
        var _x336:GoUInt64 = ((0 : GoUInt64));
        var _x337:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x320, ((((0 : GoUInt64)) : GoUInt64)), ((((_x335 : T_p521Uint1)) : GoUInt64)));
            _x336 = __tmp__._0;
            _x337 = __tmp__._1;
        };
        var _x338:GoUInt64 = ((0 : GoUInt64));
        var _x339:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x322, ((((0 : GoUInt64)) : GoUInt64)), ((((_x337 : T_p521Uint1)) : GoUInt64)));
            _x338 = __tmp__._0;
            _x339 = __tmp__._1;
        };
        var _x340:GoUInt64 = ((0 : GoUInt64));
        var _x341:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x324, ((((0 : GoUInt64)) : GoUInt64)), ((((_x339 : T_p521Uint1)) : GoUInt64)));
            _x340 = __tmp__._0;
            _x341 = __tmp__._1;
        };
        var _x342:GoUInt64 = ((0 : GoUInt64));
        var _x343:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, ((511 : GoUInt64)));
            _x343 = __tmp__._0;
            _x342 = __tmp__._1;
        };
        var _x344:GoUInt64 = ((0 : GoUInt64));
        var _x345:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x345 = __tmp__._0;
            _x344 = __tmp__._1;
        };
        var _x346:GoUInt64 = ((0 : GoUInt64));
        var _x347:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x347 = __tmp__._0;
            _x346 = __tmp__._1;
        };
        var _x348:GoUInt64 = ((0 : GoUInt64));
        var _x349:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x349 = __tmp__._0;
            _x348 = __tmp__._1;
        };
        var _x350:GoUInt64 = ((0 : GoUInt64));
        var _x351:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x351 = __tmp__._0;
            _x350 = __tmp__._1;
        };
        var _x352:GoUInt64 = ((0 : GoUInt64));
        var _x353:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x353 = __tmp__._0;
            _x352 = __tmp__._1;
        };
        var _x354:GoUInt64 = ((0 : GoUInt64));
        var _x355:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x355 = __tmp__._0;
            _x354 = __tmp__._1;
        };
        var _x356:GoUInt64 = ((0 : GoUInt64));
        var _x357:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x357 = __tmp__._0;
            _x356 = __tmp__._1;
        };
        var _x358:GoUInt64 = ((0 : GoUInt64));
        var _x359:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x326, (("18446744073709551615" : GoUInt64)));
            _x359 = __tmp__._0;
            _x358 = __tmp__._1;
        };
        var _x360:GoUInt64 = ((0 : GoUInt64));
        var _x361:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x359, _x356, ((((0 : GoUInt64)) : GoUInt64)));
            _x360 = __tmp__._0;
            _x361 = __tmp__._1;
        };
        var _x362:GoUInt64 = ((0 : GoUInt64));
        var _x363:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x357, _x354, ((((_x361 : T_p521Uint1)) : GoUInt64)));
            _x362 = __tmp__._0;
            _x363 = __tmp__._1;
        };
        var _x364:GoUInt64 = ((0 : GoUInt64));
        var _x365:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x355, _x352, ((((_x363 : T_p521Uint1)) : GoUInt64)));
            _x364 = __tmp__._0;
            _x365 = __tmp__._1;
        };
        var _x366:GoUInt64 = ((0 : GoUInt64));
        var _x367:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x353, _x350, ((((_x365 : T_p521Uint1)) : GoUInt64)));
            _x366 = __tmp__._0;
            _x367 = __tmp__._1;
        };
        var _x368:GoUInt64 = ((0 : GoUInt64));
        var _x369:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x351, _x348, ((((_x367 : T_p521Uint1)) : GoUInt64)));
            _x368 = __tmp__._0;
            _x369 = __tmp__._1;
        };
        var _x370:GoUInt64 = ((0 : GoUInt64));
        var _x371:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x349, _x346, ((((_x369 : T_p521Uint1)) : GoUInt64)));
            _x370 = __tmp__._0;
            _x371 = __tmp__._1;
        };
        var _x372:GoUInt64 = ((0 : GoUInt64));
        var _x373:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x347, _x344, ((((_x371 : T_p521Uint1)) : GoUInt64)));
            _x372 = __tmp__._0;
            _x373 = __tmp__._1;
        };
        var _x374:GoUInt64 = ((0 : GoUInt64));
        var _x375:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x345, _x342, ((((_x373 : T_p521Uint1)) : GoUInt64)));
            _x374 = __tmp__._0;
            _x375 = __tmp__._1;
        };
        var _x377:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x326, _x358, ((((0 : GoUInt64)) : GoUInt64)));
            _x377 = __tmp__._1;
        };
        var _x378:GoUInt64 = ((0 : GoUInt64));
        var _x379:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x328, _x360, ((((_x377 : T_p521Uint1)) : GoUInt64)));
            _x378 = __tmp__._0;
            _x379 = __tmp__._1;
        };
        var _x380:GoUInt64 = ((0 : GoUInt64));
        var _x381:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x330, _x362, ((((_x379 : T_p521Uint1)) : GoUInt64)));
            _x380 = __tmp__._0;
            _x381 = __tmp__._1;
        };
        var _x382:GoUInt64 = ((0 : GoUInt64));
        var _x383:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x332, _x364, ((((_x381 : T_p521Uint1)) : GoUInt64)));
            _x382 = __tmp__._0;
            _x383 = __tmp__._1;
        };
        var _x384:GoUInt64 = ((0 : GoUInt64));
        var _x385:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x334, _x366, ((((_x383 : T_p521Uint1)) : GoUInt64)));
            _x384 = __tmp__._0;
            _x385 = __tmp__._1;
        };
        var _x386:GoUInt64 = ((0 : GoUInt64));
        var _x387:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x336, _x368, ((((_x385 : T_p521Uint1)) : GoUInt64)));
            _x386 = __tmp__._0;
            _x387 = __tmp__._1;
        };
        var _x388:GoUInt64 = ((0 : GoUInt64));
        var _x389:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x338, _x370, ((((_x387 : T_p521Uint1)) : GoUInt64)));
            _x388 = __tmp__._0;
            _x389 = __tmp__._1;
        };
        var _x390:GoUInt64 = ((0 : GoUInt64));
        var _x391:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x340, _x372, ((((_x389 : T_p521Uint1)) : GoUInt64)));
            _x390 = __tmp__._0;
            _x391 = __tmp__._1;
        };
        var _x392:GoUInt64 = ((0 : GoUInt64));
        var _x393:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x341 : T_p521Uint1)) : GoUInt64)) + (((((_x325 : T_p521Uint1)) : GoUInt64)) + (((((_x307 : T_p521Uint1)) : GoUInt64)) + _x275))), _x374, ((((_x391 : T_p521Uint1)) : GoUInt64)));
            _x392 = __tmp__._0;
            _x393 = __tmp__._1;
        };
        var _x394:GoUInt64 = ((0 : GoUInt64));
        var _x395:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x378, (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x394 = __tmp__._0;
            _x395 = __tmp__._1;
        };
        var _x396:GoUInt64 = ((0 : GoUInt64));
        var _x397:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x380, ((((0 : GoUInt64)) : GoUInt64)), ((((_x395 : T_p521Uint1)) : GoUInt64)));
            _x396 = __tmp__._0;
            _x397 = __tmp__._1;
        };
        var _x398:GoUInt64 = ((0 : GoUInt64));
        var _x399:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x382, ((((0 : GoUInt64)) : GoUInt64)), ((((_x397 : T_p521Uint1)) : GoUInt64)));
            _x398 = __tmp__._0;
            _x399 = __tmp__._1;
        };
        var _x400:GoUInt64 = ((0 : GoUInt64));
        var _x401:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x384, ((((0 : GoUInt64)) : GoUInt64)), ((((_x399 : T_p521Uint1)) : GoUInt64)));
            _x400 = __tmp__._0;
            _x401 = __tmp__._1;
        };
        var _x402:GoUInt64 = ((0 : GoUInt64));
        var _x403:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x386, ((((0 : GoUInt64)) : GoUInt64)), ((((_x401 : T_p521Uint1)) : GoUInt64)));
            _x402 = __tmp__._0;
            _x403 = __tmp__._1;
        };
        var _x404:GoUInt64 = ((0 : GoUInt64));
        var _x405:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x388, ((((0 : GoUInt64)) : GoUInt64)), ((((_x403 : T_p521Uint1)) : GoUInt64)));
            _x404 = __tmp__._0;
            _x405 = __tmp__._1;
        };
        var _x406:GoUInt64 = ((0 : GoUInt64));
        var _x407:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x390, ((((0 : GoUInt64)) : GoUInt64)), ((((_x405 : T_p521Uint1)) : GoUInt64)));
            _x406 = __tmp__._0;
            _x407 = __tmp__._1;
        };
        var _x408:GoUInt64 = ((0 : GoUInt64));
        var _x409:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x392, ((((0 : GoUInt64)) : GoUInt64)), ((((_x407 : T_p521Uint1)) : GoUInt64)));
            _x408 = __tmp__._0;
            _x409 = __tmp__._1;
        };
        var _x410:GoUInt64 = ((0 : GoUInt64));
        var _x411:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, ((511 : GoUInt64)));
            _x411 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x412:GoUInt64 = ((0 : GoUInt64));
        var _x413:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x413 = __tmp__._0;
            _x412 = __tmp__._1;
        };
        var _x414:GoUInt64 = ((0 : GoUInt64));
        var _x415:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x415 = __tmp__._0;
            _x414 = __tmp__._1;
        };
        var _x416:GoUInt64 = ((0 : GoUInt64));
        var _x417:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x417 = __tmp__._0;
            _x416 = __tmp__._1;
        };
        var _x418:GoUInt64 = ((0 : GoUInt64));
        var _x419:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x419 = __tmp__._0;
            _x418 = __tmp__._1;
        };
        var _x420:GoUInt64 = ((0 : GoUInt64));
        var _x421:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x421 = __tmp__._0;
            _x420 = __tmp__._1;
        };
        var _x422:GoUInt64 = ((0 : GoUInt64));
        var _x423:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x423 = __tmp__._0;
            _x422 = __tmp__._1;
        };
        var _x424:GoUInt64 = ((0 : GoUInt64));
        var _x425:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x425 = __tmp__._0;
            _x424 = __tmp__._1;
        };
        var _x426:GoUInt64 = ((0 : GoUInt64));
        var _x427:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x394, (("18446744073709551615" : GoUInt64)));
            _x427 = __tmp__._0;
            _x426 = __tmp__._1;
        };
        var _x428:GoUInt64 = ((0 : GoUInt64));
        var _x429:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x427, _x424, ((((0 : GoUInt64)) : GoUInt64)));
            _x428 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x430:GoUInt64 = ((0 : GoUInt64));
        var _x431:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x425, _x422, ((((_x429 : T_p521Uint1)) : GoUInt64)));
            _x430 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x432:GoUInt64 = ((0 : GoUInt64));
        var _x433:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x423, _x420, ((((_x431 : T_p521Uint1)) : GoUInt64)));
            _x432 = __tmp__._0;
            _x433 = __tmp__._1;
        };
        var _x434:GoUInt64 = ((0 : GoUInt64));
        var _x435:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x421, _x418, ((((_x433 : T_p521Uint1)) : GoUInt64)));
            _x434 = __tmp__._0;
            _x435 = __tmp__._1;
        };
        var _x436:GoUInt64 = ((0 : GoUInt64));
        var _x437:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x419, _x416, ((((_x435 : T_p521Uint1)) : GoUInt64)));
            _x436 = __tmp__._0;
            _x437 = __tmp__._1;
        };
        var _x438:GoUInt64 = ((0 : GoUInt64));
        var _x439:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x417, _x414, ((((_x437 : T_p521Uint1)) : GoUInt64)));
            _x438 = __tmp__._0;
            _x439 = __tmp__._1;
        };
        var _x440:GoUInt64 = ((0 : GoUInt64));
        var _x441:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x415, _x412, ((((_x439 : T_p521Uint1)) : GoUInt64)));
            _x440 = __tmp__._0;
            _x441 = __tmp__._1;
        };
        var _x442:GoUInt64 = ((0 : GoUInt64));
        var _x443:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x413, _x410, ((((_x441 : T_p521Uint1)) : GoUInt64)));
            _x442 = __tmp__._0;
            _x443 = __tmp__._1;
        };
        var _x445:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x394, _x426, ((((0 : GoUInt64)) : GoUInt64)));
            _x445 = __tmp__._1;
        };
        var _x446:GoUInt64 = ((0 : GoUInt64));
        var _x447:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x396, _x428, ((((_x445 : T_p521Uint1)) : GoUInt64)));
            _x446 = __tmp__._0;
            _x447 = __tmp__._1;
        };
        var _x448:GoUInt64 = ((0 : GoUInt64));
        var _x449:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x398, _x430, ((((_x447 : T_p521Uint1)) : GoUInt64)));
            _x448 = __tmp__._0;
            _x449 = __tmp__._1;
        };
        var _x450:GoUInt64 = ((0 : GoUInt64));
        var _x451:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x400, _x432, ((((_x449 : T_p521Uint1)) : GoUInt64)));
            _x450 = __tmp__._0;
            _x451 = __tmp__._1;
        };
        var _x452:GoUInt64 = ((0 : GoUInt64));
        var _x453:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x402, _x434, ((((_x451 : T_p521Uint1)) : GoUInt64)));
            _x452 = __tmp__._0;
            _x453 = __tmp__._1;
        };
        var _x454:GoUInt64 = ((0 : GoUInt64));
        var _x455:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x404, _x436, ((((_x453 : T_p521Uint1)) : GoUInt64)));
            _x454 = __tmp__._0;
            _x455 = __tmp__._1;
        };
        var _x456:GoUInt64 = ((0 : GoUInt64));
        var _x457:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x406, _x438, ((((_x455 : T_p521Uint1)) : GoUInt64)));
            _x456 = __tmp__._0;
            _x457 = __tmp__._1;
        };
        var _x458:GoUInt64 = ((0 : GoUInt64));
        var _x459:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x408, _x440, ((((_x457 : T_p521Uint1)) : GoUInt64)));
            _x458 = __tmp__._0;
            _x459 = __tmp__._1;
        };
        var _x460:GoUInt64 = ((0 : GoUInt64));
        var _x461:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x409 : T_p521Uint1)) : GoUInt64)) + (((((_x393 : T_p521Uint1)) : GoUInt64)) + (((((_x375 : T_p521Uint1)) : GoUInt64)) + _x343))), _x442, ((((_x459 : T_p521Uint1)) : GoUInt64)));
            _x460 = __tmp__._0;
            _x461 = __tmp__._1;
        };
        var _x462:GoUInt64 = ((0 : GoUInt64));
        var _x463:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x446, (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x462 = __tmp__._0;
            _x463 = __tmp__._1;
        };
        var _x464:GoUInt64 = ((0 : GoUInt64));
        var _x465:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x448, ((((0 : GoUInt64)) : GoUInt64)), ((((_x463 : T_p521Uint1)) : GoUInt64)));
            _x464 = __tmp__._0;
            _x465 = __tmp__._1;
        };
        var _x466:GoUInt64 = ((0 : GoUInt64));
        var _x467:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x450, ((((0 : GoUInt64)) : GoUInt64)), ((((_x465 : T_p521Uint1)) : GoUInt64)));
            _x466 = __tmp__._0;
            _x467 = __tmp__._1;
        };
        var _x468:GoUInt64 = ((0 : GoUInt64));
        var _x469:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x452, ((((0 : GoUInt64)) : GoUInt64)), ((((_x467 : T_p521Uint1)) : GoUInt64)));
            _x468 = __tmp__._0;
            _x469 = __tmp__._1;
        };
        var _x470:GoUInt64 = ((0 : GoUInt64));
        var _x471:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x454, ((((0 : GoUInt64)) : GoUInt64)), ((((_x469 : T_p521Uint1)) : GoUInt64)));
            _x470 = __tmp__._0;
            _x471 = __tmp__._1;
        };
        var _x472:GoUInt64 = ((0 : GoUInt64));
        var _x473:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x456, ((((0 : GoUInt64)) : GoUInt64)), ((((_x471 : T_p521Uint1)) : GoUInt64)));
            _x472 = __tmp__._0;
            _x473 = __tmp__._1;
        };
        var _x474:GoUInt64 = ((0 : GoUInt64));
        var _x475:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x458, ((((0 : GoUInt64)) : GoUInt64)), ((((_x473 : T_p521Uint1)) : GoUInt64)));
            _x474 = __tmp__._0;
            _x475 = __tmp__._1;
        };
        var _x476:GoUInt64 = ((0 : GoUInt64));
        var _x477:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x460, ((((0 : GoUInt64)) : GoUInt64)), ((((_x475 : T_p521Uint1)) : GoUInt64)));
            _x476 = __tmp__._0;
            _x477 = __tmp__._1;
        };
        var _x478:GoUInt64 = ((0 : GoUInt64));
        var _x479:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, ((511 : GoUInt64)));
            _x479 = __tmp__._0;
            _x478 = __tmp__._1;
        };
        var _x480:GoUInt64 = ((0 : GoUInt64));
        var _x481:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x481 = __tmp__._0;
            _x480 = __tmp__._1;
        };
        var _x482:GoUInt64 = ((0 : GoUInt64));
        var _x483:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x483 = __tmp__._0;
            _x482 = __tmp__._1;
        };
        var _x484:GoUInt64 = ((0 : GoUInt64));
        var _x485:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x485 = __tmp__._0;
            _x484 = __tmp__._1;
        };
        var _x486:GoUInt64 = ((0 : GoUInt64));
        var _x487:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x487 = __tmp__._0;
            _x486 = __tmp__._1;
        };
        var _x488:GoUInt64 = ((0 : GoUInt64));
        var _x489:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x489 = __tmp__._0;
            _x488 = __tmp__._1;
        };
        var _x490:GoUInt64 = ((0 : GoUInt64));
        var _x491:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x491 = __tmp__._0;
            _x490 = __tmp__._1;
        };
        var _x492:GoUInt64 = ((0 : GoUInt64));
        var _x493:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x493 = __tmp__._0;
            _x492 = __tmp__._1;
        };
        var _x494:GoUInt64 = ((0 : GoUInt64));
        var _x495:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x462, (("18446744073709551615" : GoUInt64)));
            _x495 = __tmp__._0;
            _x494 = __tmp__._1;
        };
        var _x496:GoUInt64 = ((0 : GoUInt64));
        var _x497:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x495, _x492, ((((0 : GoUInt64)) : GoUInt64)));
            _x496 = __tmp__._0;
            _x497 = __tmp__._1;
        };
        var _x498:GoUInt64 = ((0 : GoUInt64));
        var _x499:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x493, _x490, ((((_x497 : T_p521Uint1)) : GoUInt64)));
            _x498 = __tmp__._0;
            _x499 = __tmp__._1;
        };
        var _x500:GoUInt64 = ((0 : GoUInt64));
        var _x501:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x491, _x488, ((((_x499 : T_p521Uint1)) : GoUInt64)));
            _x500 = __tmp__._0;
            _x501 = __tmp__._1;
        };
        var _x502:GoUInt64 = ((0 : GoUInt64));
        var _x503:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x489, _x486, ((((_x501 : T_p521Uint1)) : GoUInt64)));
            _x502 = __tmp__._0;
            _x503 = __tmp__._1;
        };
        var _x504:GoUInt64 = ((0 : GoUInt64));
        var _x505:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x487, _x484, ((((_x503 : T_p521Uint1)) : GoUInt64)));
            _x504 = __tmp__._0;
            _x505 = __tmp__._1;
        };
        var _x506:GoUInt64 = ((0 : GoUInt64));
        var _x507:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x485, _x482, ((((_x505 : T_p521Uint1)) : GoUInt64)));
            _x506 = __tmp__._0;
            _x507 = __tmp__._1;
        };
        var _x508:GoUInt64 = ((0 : GoUInt64));
        var _x509:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x483, _x480, ((((_x507 : T_p521Uint1)) : GoUInt64)));
            _x508 = __tmp__._0;
            _x509 = __tmp__._1;
        };
        var _x510:GoUInt64 = ((0 : GoUInt64));
        var _x511:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x481, _x478, ((((_x509 : T_p521Uint1)) : GoUInt64)));
            _x510 = __tmp__._0;
            _x511 = __tmp__._1;
        };
        var _x513:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x462, _x494, ((((0 : GoUInt64)) : GoUInt64)));
            _x513 = __tmp__._1;
        };
        var _x514:GoUInt64 = ((0 : GoUInt64));
        var _x515:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x464, _x496, ((((_x513 : T_p521Uint1)) : GoUInt64)));
            _x514 = __tmp__._0;
            _x515 = __tmp__._1;
        };
        var _x516:GoUInt64 = ((0 : GoUInt64));
        var _x517:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x466, _x498, ((((_x515 : T_p521Uint1)) : GoUInt64)));
            _x516 = __tmp__._0;
            _x517 = __tmp__._1;
        };
        var _x518:GoUInt64 = ((0 : GoUInt64));
        var _x519:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x468, _x500, ((((_x517 : T_p521Uint1)) : GoUInt64)));
            _x518 = __tmp__._0;
            _x519 = __tmp__._1;
        };
        var _x520:GoUInt64 = ((0 : GoUInt64));
        var _x521:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x470, _x502, ((((_x519 : T_p521Uint1)) : GoUInt64)));
            _x520 = __tmp__._0;
            _x521 = __tmp__._1;
        };
        var _x522:GoUInt64 = ((0 : GoUInt64));
        var _x523:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x472, _x504, ((((_x521 : T_p521Uint1)) : GoUInt64)));
            _x522 = __tmp__._0;
            _x523 = __tmp__._1;
        };
        var _x524:GoUInt64 = ((0 : GoUInt64));
        var _x525:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x474, _x506, ((((_x523 : T_p521Uint1)) : GoUInt64)));
            _x524 = __tmp__._0;
            _x525 = __tmp__._1;
        };
        var _x526:GoUInt64 = ((0 : GoUInt64));
        var _x527:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x476, _x508, ((((_x525 : T_p521Uint1)) : GoUInt64)));
            _x526 = __tmp__._0;
            _x527 = __tmp__._1;
        };
        var _x528:GoUInt64 = ((0 : GoUInt64));
        var _x529:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x477 : T_p521Uint1)) : GoUInt64)) + (((((_x461 : T_p521Uint1)) : GoUInt64)) + (((((_x443 : T_p521Uint1)) : GoUInt64)) + _x411))), _x510, ((((_x527 : T_p521Uint1)) : GoUInt64)));
            _x528 = __tmp__._0;
            _x529 = __tmp__._1;
        };
        var _x530:GoUInt64 = ((0 : GoUInt64));
        var _x531:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x514, (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))), ((((0 : GoUInt64)) : GoUInt64)));
            _x530 = __tmp__._0;
            _x531 = __tmp__._1;
        };
        var _x532:GoUInt64 = ((0 : GoUInt64));
        var _x533:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x516, ((((0 : GoUInt64)) : GoUInt64)), ((((_x531 : T_p521Uint1)) : GoUInt64)));
            _x532 = __tmp__._0;
            _x533 = __tmp__._1;
        };
        var _x534:GoUInt64 = ((0 : GoUInt64));
        var _x535:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x518, ((((0 : GoUInt64)) : GoUInt64)), ((((_x533 : T_p521Uint1)) : GoUInt64)));
            _x534 = __tmp__._0;
            _x535 = __tmp__._1;
        };
        var _x536:GoUInt64 = ((0 : GoUInt64));
        var _x537:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x520, ((((0 : GoUInt64)) : GoUInt64)), ((((_x535 : T_p521Uint1)) : GoUInt64)));
            _x536 = __tmp__._0;
            _x537 = __tmp__._1;
        };
        var _x538:GoUInt64 = ((0 : GoUInt64));
        var _x539:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x522, ((((0 : GoUInt64)) : GoUInt64)), ((((_x537 : T_p521Uint1)) : GoUInt64)));
            _x538 = __tmp__._0;
            _x539 = __tmp__._1;
        };
        var _x540:GoUInt64 = ((0 : GoUInt64));
        var _x541:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x524, ((((0 : GoUInt64)) : GoUInt64)), ((((_x539 : T_p521Uint1)) : GoUInt64)));
            _x540 = __tmp__._0;
            _x541 = __tmp__._1;
        };
        var _x542:GoUInt64 = ((0 : GoUInt64));
        var _x543:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x526, ((((0 : GoUInt64)) : GoUInt64)), ((((_x541 : T_p521Uint1)) : GoUInt64)));
            _x542 = __tmp__._0;
            _x543 = __tmp__._1;
        };
        var _x544:GoUInt64 = ((0 : GoUInt64));
        var _x545:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x528, ((((0 : GoUInt64)) : GoUInt64)), ((((_x543 : T_p521Uint1)) : GoUInt64)));
            _x544 = __tmp__._0;
            _x545 = __tmp__._1;
        };
        var _x546:GoUInt64 = ((0 : GoUInt64));
        var _x547:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, ((511 : GoUInt64)));
            _x547 = __tmp__._0;
            _x546 = __tmp__._1;
        };
        var _x548:GoUInt64 = ((0 : GoUInt64));
        var _x549:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x549 = __tmp__._0;
            _x548 = __tmp__._1;
        };
        var _x550:GoUInt64 = ((0 : GoUInt64));
        var _x551:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x551 = __tmp__._0;
            _x550 = __tmp__._1;
        };
        var _x552:GoUInt64 = ((0 : GoUInt64));
        var _x553:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x553 = __tmp__._0;
            _x552 = __tmp__._1;
        };
        var _x554:GoUInt64 = ((0 : GoUInt64));
        var _x555:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x555 = __tmp__._0;
            _x554 = __tmp__._1;
        };
        var _x556:GoUInt64 = ((0 : GoUInt64));
        var _x557:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x557 = __tmp__._0;
            _x556 = __tmp__._1;
        };
        var _x558:GoUInt64 = ((0 : GoUInt64));
        var _x559:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x559 = __tmp__._0;
            _x558 = __tmp__._1;
        };
        var _x560:GoUInt64 = ((0 : GoUInt64));
        var _x561:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x561 = __tmp__._0;
            _x560 = __tmp__._1;
        };
        var _x562:GoUInt64 = ((0 : GoUInt64));
        var _x563:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x530, (("18446744073709551615" : GoUInt64)));
            _x563 = __tmp__._0;
            _x562 = __tmp__._1;
        };
        var _x564:GoUInt64 = ((0 : GoUInt64));
        var _x565:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x563, _x560, ((((0 : GoUInt64)) : GoUInt64)));
            _x564 = __tmp__._0;
            _x565 = __tmp__._1;
        };
        var _x566:GoUInt64 = ((0 : GoUInt64));
        var _x567:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x561, _x558, ((((_x565 : T_p521Uint1)) : GoUInt64)));
            _x566 = __tmp__._0;
            _x567 = __tmp__._1;
        };
        var _x568:GoUInt64 = ((0 : GoUInt64));
        var _x569:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x559, _x556, ((((_x567 : T_p521Uint1)) : GoUInt64)));
            _x568 = __tmp__._0;
            _x569 = __tmp__._1;
        };
        var _x570:GoUInt64 = ((0 : GoUInt64));
        var _x571:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x557, _x554, ((((_x569 : T_p521Uint1)) : GoUInt64)));
            _x570 = __tmp__._0;
            _x571 = __tmp__._1;
        };
        var _x572:GoUInt64 = ((0 : GoUInt64));
        var _x573:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x555, _x552, ((((_x571 : T_p521Uint1)) : GoUInt64)));
            _x572 = __tmp__._0;
            _x573 = __tmp__._1;
        };
        var _x574:GoUInt64 = ((0 : GoUInt64));
        var _x575:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x553, _x550, ((((_x573 : T_p521Uint1)) : GoUInt64)));
            _x574 = __tmp__._0;
            _x575 = __tmp__._1;
        };
        var _x576:GoUInt64 = ((0 : GoUInt64));
        var _x577:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x551, _x548, ((((_x575 : T_p521Uint1)) : GoUInt64)));
            _x576 = __tmp__._0;
            _x577 = __tmp__._1;
        };
        var _x578:GoUInt64 = ((0 : GoUInt64));
        var _x579:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x549, _x546, ((((_x577 : T_p521Uint1)) : GoUInt64)));
            _x578 = __tmp__._0;
            _x579 = __tmp__._1;
        };
        var _x581:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x530, _x562, ((((0 : GoUInt64)) : GoUInt64)));
            _x581 = __tmp__._1;
        };
        var _x582:GoUInt64 = ((0 : GoUInt64));
        var _x583:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x532, _x564, ((((_x581 : T_p521Uint1)) : GoUInt64)));
            _x582 = __tmp__._0;
            _x583 = __tmp__._1;
        };
        var _x584:GoUInt64 = ((0 : GoUInt64));
        var _x585:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x534, _x566, ((((_x583 : T_p521Uint1)) : GoUInt64)));
            _x584 = __tmp__._0;
            _x585 = __tmp__._1;
        };
        var _x586:GoUInt64 = ((0 : GoUInt64));
        var _x587:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x536, _x568, ((((_x585 : T_p521Uint1)) : GoUInt64)));
            _x586 = __tmp__._0;
            _x587 = __tmp__._1;
        };
        var _x588:GoUInt64 = ((0 : GoUInt64));
        var _x589:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x538, _x570, ((((_x587 : T_p521Uint1)) : GoUInt64)));
            _x588 = __tmp__._0;
            _x589 = __tmp__._1;
        };
        var _x590:GoUInt64 = ((0 : GoUInt64));
        var _x591:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x540, _x572, ((((_x589 : T_p521Uint1)) : GoUInt64)));
            _x590 = __tmp__._0;
            _x591 = __tmp__._1;
        };
        var _x592:GoUInt64 = ((0 : GoUInt64));
        var _x593:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x542, _x574, ((((_x591 : T_p521Uint1)) : GoUInt64)));
            _x592 = __tmp__._0;
            _x593 = __tmp__._1;
        };
        var _x594:GoUInt64 = ((0 : GoUInt64));
        var _x595:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x544, _x576, ((((_x593 : T_p521Uint1)) : GoUInt64)));
            _x594 = __tmp__._0;
            _x595 = __tmp__._1;
        };
        var _x596:GoUInt64 = ((0 : GoUInt64));
        var _x597:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x545 : T_p521Uint1)) : GoUInt64)) + (((((_x529 : T_p521Uint1)) : GoUInt64)) + (((((_x511 : T_p521Uint1)) : GoUInt64)) + _x479))), _x578, ((((_x595 : T_p521Uint1)) : GoUInt64)));
            _x596 = __tmp__._0;
            _x597 = __tmp__._1;
        };
        var _x598:GoUInt64 = (((((_x597 : T_p521Uint1)) : GoUInt64)) + (((((_x579 : T_p521Uint1)) : GoUInt64)) + _x547));
        var _x599:GoUInt64 = ((0 : GoUInt64));
        var _x600:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x582, (("18446744073709551615" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x599 = __tmp__._0;
            _x600 = __tmp__._1;
        };
        var _x601:GoUInt64 = ((0 : GoUInt64));
        var _x602:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x584, (("18446744073709551615" : GoUInt64)), ((((_x600 : T_p521Uint1)) : GoUInt64)));
            _x601 = __tmp__._0;
            _x602 = __tmp__._1;
        };
        var _x603:GoUInt64 = ((0 : GoUInt64));
        var _x604:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x586, (("18446744073709551615" : GoUInt64)), ((((_x602 : T_p521Uint1)) : GoUInt64)));
            _x603 = __tmp__._0;
            _x604 = __tmp__._1;
        };
        var _x605:GoUInt64 = ((0 : GoUInt64));
        var _x606:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x588, (("18446744073709551615" : GoUInt64)), ((((_x604 : T_p521Uint1)) : GoUInt64)));
            _x605 = __tmp__._0;
            _x606 = __tmp__._1;
        };
        var _x607:GoUInt64 = ((0 : GoUInt64));
        var _x608:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x590, (("18446744073709551615" : GoUInt64)), ((((_x606 : T_p521Uint1)) : GoUInt64)));
            _x607 = __tmp__._0;
            _x608 = __tmp__._1;
        };
        var _x609:GoUInt64 = ((0 : GoUInt64));
        var _x610:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x592, (("18446744073709551615" : GoUInt64)), ((((_x608 : T_p521Uint1)) : GoUInt64)));
            _x609 = __tmp__._0;
            _x610 = __tmp__._1;
        };
        var _x611:GoUInt64 = ((0 : GoUInt64));
        var _x612:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x594, (("18446744073709551615" : GoUInt64)), ((((_x610 : T_p521Uint1)) : GoUInt64)));
            _x611 = __tmp__._0;
            _x612 = __tmp__._1;
        };
        var _x613:GoUInt64 = ((0 : GoUInt64));
        var _x614:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x596, (("18446744073709551615" : GoUInt64)), ((((_x612 : T_p521Uint1)) : GoUInt64)));
            _x613 = __tmp__._0;
            _x614 = __tmp__._1;
        };
        var _x615:GoUInt64 = ((0 : GoUInt64));
        var _x616:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x598, ((511 : GoUInt64)), ((((_x614 : T_p521Uint1)) : GoUInt64)));
            _x615 = __tmp__._0;
            _x616 = __tmp__._1;
        };
        var _x618:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((0 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x616 : T_p521Uint1)) : GoUInt64)));
            _x618 = __tmp__._1;
        };
        var _x619:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x619), ((_x618 : T_p521Uint1)), _x599, _x582);
        var _x620:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x620), ((_x618 : T_p521Uint1)), _x601, _x584);
        var _x621:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x621), ((_x618 : T_p521Uint1)), _x603, _x586);
        var _x622:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x622), ((_x618 : T_p521Uint1)), _x605, _x588);
        var _x623:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x623), ((_x618 : T_p521Uint1)), _x607, _x590);
        var _x624:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x624), ((_x618 : T_p521Uint1)), _x609, _x592);
        var _x625:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x625), ((_x618 : T_p521Uint1)), _x611, _x594);
        var _x626:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x626), ((_x618 : T_p521Uint1)), _x613, _x596);
        var _x627:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x627), ((_x618 : T_p521Uint1)), _x615, _x598);
        if (_out1 != null) _out1[((0 : GoInt))] = _x619;
        if (_out1 != null) _out1[((1 : GoInt))] = _x620;
        if (_out1 != null) _out1[((2 : GoInt))] = _x621;
        if (_out1 != null) _out1[((3 : GoInt))] = _x622;
        if (_out1 != null) _out1[((4 : GoInt))] = _x623;
        if (_out1 != null) _out1[((5 : GoInt))] = _x624;
        if (_out1 != null) _out1[((6 : GoInt))] = _x625;
        if (_out1 != null) _out1[((7 : GoInt))] = _x626;
        if (_out1 != null) _out1[((8 : GoInt))] = _x627;
    }
/**
    // p521ToMontgomery translates a field element into the Montgomery domain.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   eval (from_montgomery out1) mod m = eval arg1 mod m
    //   0 ≤ eval out1 < m
    //
**/
function _p521ToMontgomery(_out1:T_p521MontgomeryDomainFieldElement, _arg1:T_p521NonMontgomeryDomainFieldElement):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x2 = __tmp__._0;
            _x1 = __tmp__._1;
        };
        var _x3:GoUInt64 = ((0 : GoUInt64));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x4 = __tmp__._0;
            _x3 = __tmp__._1;
        };
        var _x5:GoUInt64 = ((0 : GoUInt64));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x2, _x3, ((((0 : GoUInt64)) : GoUInt64)));
            _x5 = __tmp__._0;
            _x6 = __tmp__._1;
        };
        var _x7:GoUInt64 = ((0 : GoUInt64));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, ((511 : GoUInt64)));
            _x8 = __tmp__._0;
            _x7 = __tmp__._1;
        };
        var _x9:GoUInt64 = ((0 : GoUInt64));
        var _x10:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x10 = __tmp__._0;
            _x9 = __tmp__._1;
        };
        var _x11:GoUInt64 = ((0 : GoUInt64));
        var _x12:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x12 = __tmp__._0;
            _x11 = __tmp__._1;
        };
        var _x13:GoUInt64 = ((0 : GoUInt64));
        var _x14:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x14 = __tmp__._0;
            _x13 = __tmp__._1;
        };
        var _x15:GoUInt64 = ((0 : GoUInt64));
        var _x16:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x16 = __tmp__._0;
            _x15 = __tmp__._1;
        };
        var _x17:GoUInt64 = ((0 : GoUInt64));
        var _x18:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x18 = __tmp__._0;
            _x17 = __tmp__._1;
        };
        var _x19:GoUInt64 = ((0 : GoUInt64));
        var _x20:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x20 = __tmp__._0;
            _x19 = __tmp__._1;
        };
        var _x21:GoUInt64 = ((0 : GoUInt64));
        var _x22:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x22 = __tmp__._0;
            _x21 = __tmp__._1;
        };
        var _x23:GoUInt64 = ((0 : GoUInt64));
        var _x24:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x1, (("18446744073709551615" : GoUInt64)));
            _x24 = __tmp__._0;
            _x23 = __tmp__._1;
        };
        var _x25:GoUInt64 = ((0 : GoUInt64));
        var _x26:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x24, _x21, ((((0 : GoUInt64)) : GoUInt64)));
            _x25 = __tmp__._0;
            _x26 = __tmp__._1;
        };
        var _x27:GoUInt64 = ((0 : GoUInt64));
        var _x28:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x22, _x19, ((((_x26 : T_p521Uint1)) : GoUInt64)));
            _x27 = __tmp__._0;
            _x28 = __tmp__._1;
        };
        var _x29:GoUInt64 = ((0 : GoUInt64));
        var _x30:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x20, _x17, ((((_x28 : T_p521Uint1)) : GoUInt64)));
            _x29 = __tmp__._0;
            _x30 = __tmp__._1;
        };
        var _x31:GoUInt64 = ((0 : GoUInt64));
        var _x32:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x18, _x15, ((((_x30 : T_p521Uint1)) : GoUInt64)));
            _x31 = __tmp__._0;
            _x32 = __tmp__._1;
        };
        var _x33:GoUInt64 = ((0 : GoUInt64));
        var _x34:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x16, _x13, ((((_x32 : T_p521Uint1)) : GoUInt64)));
            _x33 = __tmp__._0;
            _x34 = __tmp__._1;
        };
        var _x35:GoUInt64 = ((0 : GoUInt64));
        var _x36:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x14, _x11, ((((_x34 : T_p521Uint1)) : GoUInt64)));
            _x35 = __tmp__._0;
            _x36 = __tmp__._1;
        };
        var _x37:GoUInt64 = ((0 : GoUInt64));
        var _x38:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x12, _x9, ((((_x36 : T_p521Uint1)) : GoUInt64)));
            _x37 = __tmp__._0;
            _x38 = __tmp__._1;
        };
        var _x39:GoUInt64 = ((0 : GoUInt64));
        var _x40:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x10, _x7, ((((_x38 : T_p521Uint1)) : GoUInt64)));
            _x39 = __tmp__._0;
            _x40 = __tmp__._1;
        };
        var _x42:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x1, _x23, ((((0 : GoUInt64)) : GoUInt64)));
            _x42 = __tmp__._1;
        };
        var _x43:GoUInt64 = ((0 : GoUInt64));
        var _x44:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x5, _x25, ((((_x42 : T_p521Uint1)) : GoUInt64)));
            _x43 = __tmp__._0;
            _x44 = __tmp__._1;
        };
        var _x45:GoUInt64 = ((0 : GoUInt64));
        var _x46:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x6 : T_p521Uint1)) : GoUInt64)) + _x4), _x27, ((((_x44 : T_p521Uint1)) : GoUInt64)));
            _x45 = __tmp__._0;
            _x46 = __tmp__._1;
        };
        var _x47:GoUInt64 = ((0 : GoUInt64));
        var _x48:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x29, ((((_x46 : T_p521Uint1)) : GoUInt64)));
            _x47 = __tmp__._0;
            _x48 = __tmp__._1;
        };
        var _x49:GoUInt64 = ((0 : GoUInt64));
        var _x50:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x31, ((((_x48 : T_p521Uint1)) : GoUInt64)));
            _x49 = __tmp__._0;
            _x50 = __tmp__._1;
        };
        var _x51:GoUInt64 = ((0 : GoUInt64));
        var _x52:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x33, ((((_x50 : T_p521Uint1)) : GoUInt64)));
            _x51 = __tmp__._0;
            _x52 = __tmp__._1;
        };
        var _x53:GoUInt64 = ((0 : GoUInt64));
        var _x54:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x35, ((((_x52 : T_p521Uint1)) : GoUInt64)));
            _x53 = __tmp__._0;
            _x54 = __tmp__._1;
        };
        var _x55:GoUInt64 = ((0 : GoUInt64));
        var _x56:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x37, ((((_x54 : T_p521Uint1)) : GoUInt64)));
            _x55 = __tmp__._0;
            _x56 = __tmp__._1;
        };
        var _x57:GoUInt64 = ((0 : GoUInt64));
        var _x58:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(((((0 : GoUInt64)) : GoUInt64)), _x39, ((((_x56 : T_p521Uint1)) : GoUInt64)));
            _x57 = __tmp__._0;
            _x58 = __tmp__._1;
        };
        var _x59:GoUInt64 = ((0 : GoUInt64));
        var _x60:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x60 = __tmp__._0;
            _x59 = __tmp__._1;
        };
        var _x61:GoUInt64 = ((0 : GoUInt64));
        var _x62:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x45, _x59, ((((0 : GoUInt64)) : GoUInt64)));
            _x61 = __tmp__._0;
            _x62 = __tmp__._1;
        };
        var _x63:GoUInt64 = ((0 : GoUInt64));
        var _x64:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x47, _x60, ((((_x62 : T_p521Uint1)) : GoUInt64)));
            _x63 = __tmp__._0;
            _x64 = __tmp__._1;
        };
        var _x65:GoUInt64 = ((0 : GoUInt64));
        var _x66:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x49, ((((0 : GoUInt64)) : GoUInt64)), ((((_x64 : T_p521Uint1)) : GoUInt64)));
            _x65 = __tmp__._0;
            _x66 = __tmp__._1;
        };
        var _x67:GoUInt64 = ((0 : GoUInt64));
        var _x68:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x51, ((((0 : GoUInt64)) : GoUInt64)), ((((_x66 : T_p521Uint1)) : GoUInt64)));
            _x67 = __tmp__._0;
            _x68 = __tmp__._1;
        };
        var _x69:GoUInt64 = ((0 : GoUInt64));
        var _x70:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x53, ((((0 : GoUInt64)) : GoUInt64)), ((((_x68 : T_p521Uint1)) : GoUInt64)));
            _x69 = __tmp__._0;
            _x70 = __tmp__._1;
        };
        var _x71:GoUInt64 = ((0 : GoUInt64));
        var _x72:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x55, ((((0 : GoUInt64)) : GoUInt64)), ((((_x70 : T_p521Uint1)) : GoUInt64)));
            _x71 = __tmp__._0;
            _x72 = __tmp__._1;
        };
        var _x73:GoUInt64 = ((0 : GoUInt64));
        var _x74:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x57, ((((0 : GoUInt64)) : GoUInt64)), ((((_x72 : T_p521Uint1)) : GoUInt64)));
            _x73 = __tmp__._0;
            _x74 = __tmp__._1;
        };
        var _x75:GoUInt64 = ((0 : GoUInt64));
        var _x76:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, ((511 : GoUInt64)));
            _x76 = __tmp__._0;
            _x75 = __tmp__._1;
        };
        var _x77:GoUInt64 = ((0 : GoUInt64));
        var _x78:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x78 = __tmp__._0;
            _x77 = __tmp__._1;
        };
        var _x79:GoUInt64 = ((0 : GoUInt64));
        var _x80:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x80 = __tmp__._0;
            _x79 = __tmp__._1;
        };
        var _x81:GoUInt64 = ((0 : GoUInt64));
        var _x82:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x82 = __tmp__._0;
            _x81 = __tmp__._1;
        };
        var _x83:GoUInt64 = ((0 : GoUInt64));
        var _x84:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x84 = __tmp__._0;
            _x83 = __tmp__._1;
        };
        var _x85:GoUInt64 = ((0 : GoUInt64));
        var _x86:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x86 = __tmp__._0;
            _x85 = __tmp__._1;
        };
        var _x87:GoUInt64 = ((0 : GoUInt64));
        var _x88:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x88 = __tmp__._0;
            _x87 = __tmp__._1;
        };
        var _x89:GoUInt64 = ((0 : GoUInt64));
        var _x90:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x90 = __tmp__._0;
            _x89 = __tmp__._1;
        };
        var _x91:GoUInt64 = ((0 : GoUInt64));
        var _x92:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x43, (("18446744073709551615" : GoUInt64)));
            _x92 = __tmp__._0;
            _x91 = __tmp__._1;
        };
        var _x93:GoUInt64 = ((0 : GoUInt64));
        var _x94:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x92, _x89, ((((0 : GoUInt64)) : GoUInt64)));
            _x93 = __tmp__._0;
            _x94 = __tmp__._1;
        };
        var _x95:GoUInt64 = ((0 : GoUInt64));
        var _x96:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x90, _x87, ((((_x94 : T_p521Uint1)) : GoUInt64)));
            _x95 = __tmp__._0;
            _x96 = __tmp__._1;
        };
        var _x97:GoUInt64 = ((0 : GoUInt64));
        var _x98:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x88, _x85, ((((_x96 : T_p521Uint1)) : GoUInt64)));
            _x97 = __tmp__._0;
            _x98 = __tmp__._1;
        };
        var _x99:GoUInt64 = ((0 : GoUInt64));
        var _x100:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x86, _x83, ((((_x98 : T_p521Uint1)) : GoUInt64)));
            _x99 = __tmp__._0;
            _x100 = __tmp__._1;
        };
        var _x101:GoUInt64 = ((0 : GoUInt64));
        var _x102:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x84, _x81, ((((_x100 : T_p521Uint1)) : GoUInt64)));
            _x101 = __tmp__._0;
            _x102 = __tmp__._1;
        };
        var _x103:GoUInt64 = ((0 : GoUInt64));
        var _x104:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x82, _x79, ((((_x102 : T_p521Uint1)) : GoUInt64)));
            _x103 = __tmp__._0;
            _x104 = __tmp__._1;
        };
        var _x105:GoUInt64 = ((0 : GoUInt64));
        var _x106:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x80, _x77, ((((_x104 : T_p521Uint1)) : GoUInt64)));
            _x105 = __tmp__._0;
            _x106 = __tmp__._1;
        };
        var _x107:GoUInt64 = ((0 : GoUInt64));
        var _x108:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x78, _x75, ((((_x106 : T_p521Uint1)) : GoUInt64)));
            _x107 = __tmp__._0;
            _x108 = __tmp__._1;
        };
        var _x110:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x43, _x91, ((((0 : GoUInt64)) : GoUInt64)));
            _x110 = __tmp__._1;
        };
        var _x111:GoUInt64 = ((0 : GoUInt64));
        var _x112:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x61, _x93, ((((_x110 : T_p521Uint1)) : GoUInt64)));
            _x111 = __tmp__._0;
            _x112 = __tmp__._1;
        };
        var _x113:GoUInt64 = ((0 : GoUInt64));
        var _x114:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x63, _x95, ((((_x112 : T_p521Uint1)) : GoUInt64)));
            _x113 = __tmp__._0;
            _x114 = __tmp__._1;
        };
        var _x115:GoUInt64 = ((0 : GoUInt64));
        var _x116:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x65, _x97, ((((_x114 : T_p521Uint1)) : GoUInt64)));
            _x115 = __tmp__._0;
            _x116 = __tmp__._1;
        };
        var _x117:GoUInt64 = ((0 : GoUInt64));
        var _x118:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x67, _x99, ((((_x116 : T_p521Uint1)) : GoUInt64)));
            _x117 = __tmp__._0;
            _x118 = __tmp__._1;
        };
        var _x119:GoUInt64 = ((0 : GoUInt64));
        var _x120:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x69, _x101, ((((_x118 : T_p521Uint1)) : GoUInt64)));
            _x119 = __tmp__._0;
            _x120 = __tmp__._1;
        };
        var _x121:GoUInt64 = ((0 : GoUInt64));
        var _x122:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x71, _x103, ((((_x120 : T_p521Uint1)) : GoUInt64)));
            _x121 = __tmp__._0;
            _x122 = __tmp__._1;
        };
        var _x123:GoUInt64 = ((0 : GoUInt64));
        var _x124:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x73, _x105, ((((_x122 : T_p521Uint1)) : GoUInt64)));
            _x123 = __tmp__._0;
            _x124 = __tmp__._1;
        };
        var _x125:GoUInt64 = ((0 : GoUInt64));
        var _x126:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x74 : T_p521Uint1)) : GoUInt64)) + (((((_x58 : T_p521Uint1)) : GoUInt64)) + (((((_x40 : T_p521Uint1)) : GoUInt64)) + _x8))), _x107, ((((_x124 : T_p521Uint1)) : GoUInt64)));
            _x125 = __tmp__._0;
            _x126 = __tmp__._1;
        };
        var _x127:GoUInt64 = ((0 : GoUInt64));
        var _x128:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x128 = __tmp__._0;
            _x127 = __tmp__._1;
        };
        var _x129:GoUInt64 = ((0 : GoUInt64));
        var _x130:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x113, _x127, ((((0 : GoUInt64)) : GoUInt64)));
            _x129 = __tmp__._0;
            _x130 = __tmp__._1;
        };
        var _x131:GoUInt64 = ((0 : GoUInt64));
        var _x132:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x115, _x128, ((((_x130 : T_p521Uint1)) : GoUInt64)));
            _x131 = __tmp__._0;
            _x132 = __tmp__._1;
        };
        var _x133:GoUInt64 = ((0 : GoUInt64));
        var _x134:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x117, ((((0 : GoUInt64)) : GoUInt64)), ((((_x132 : T_p521Uint1)) : GoUInt64)));
            _x133 = __tmp__._0;
            _x134 = __tmp__._1;
        };
        var _x135:GoUInt64 = ((0 : GoUInt64));
        var _x136:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x119, ((((0 : GoUInt64)) : GoUInt64)), ((((_x134 : T_p521Uint1)) : GoUInt64)));
            _x135 = __tmp__._0;
            _x136 = __tmp__._1;
        };
        var _x137:GoUInt64 = ((0 : GoUInt64));
        var _x138:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x121, ((((0 : GoUInt64)) : GoUInt64)), ((((_x136 : T_p521Uint1)) : GoUInt64)));
            _x137 = __tmp__._0;
            _x138 = __tmp__._1;
        };
        var _x139:GoUInt64 = ((0 : GoUInt64));
        var _x140:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x123, ((((0 : GoUInt64)) : GoUInt64)), ((((_x138 : T_p521Uint1)) : GoUInt64)));
            _x139 = __tmp__._0;
            _x140 = __tmp__._1;
        };
        var _x141:GoUInt64 = ((0 : GoUInt64));
        var _x142:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x125, ((((0 : GoUInt64)) : GoUInt64)), ((((_x140 : T_p521Uint1)) : GoUInt64)));
            _x141 = __tmp__._0;
            _x142 = __tmp__._1;
        };
        var _x143:GoUInt64 = ((0 : GoUInt64));
        var _x144:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, ((511 : GoUInt64)));
            _x144 = __tmp__._0;
            _x143 = __tmp__._1;
        };
        var _x145:GoUInt64 = ((0 : GoUInt64));
        var _x146:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x146 = __tmp__._0;
            _x145 = __tmp__._1;
        };
        var _x147:GoUInt64 = ((0 : GoUInt64));
        var _x148:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x148 = __tmp__._0;
            _x147 = __tmp__._1;
        };
        var _x149:GoUInt64 = ((0 : GoUInt64));
        var _x150:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x150 = __tmp__._0;
            _x149 = __tmp__._1;
        };
        var _x151:GoUInt64 = ((0 : GoUInt64));
        var _x152:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x152 = __tmp__._0;
            _x151 = __tmp__._1;
        };
        var _x153:GoUInt64 = ((0 : GoUInt64));
        var _x154:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x154 = __tmp__._0;
            _x153 = __tmp__._1;
        };
        var _x155:GoUInt64 = ((0 : GoUInt64));
        var _x156:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x156 = __tmp__._0;
            _x155 = __tmp__._1;
        };
        var _x157:GoUInt64 = ((0 : GoUInt64));
        var _x158:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x158 = __tmp__._0;
            _x157 = __tmp__._1;
        };
        var _x159:GoUInt64 = ((0 : GoUInt64));
        var _x160:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x111, (("18446744073709551615" : GoUInt64)));
            _x160 = __tmp__._0;
            _x159 = __tmp__._1;
        };
        var _x161:GoUInt64 = ((0 : GoUInt64));
        var _x162:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x160, _x157, ((((0 : GoUInt64)) : GoUInt64)));
            _x161 = __tmp__._0;
            _x162 = __tmp__._1;
        };
        var _x163:GoUInt64 = ((0 : GoUInt64));
        var _x164:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x158, _x155, ((((_x162 : T_p521Uint1)) : GoUInt64)));
            _x163 = __tmp__._0;
            _x164 = __tmp__._1;
        };
        var _x165:GoUInt64 = ((0 : GoUInt64));
        var _x166:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x156, _x153, ((((_x164 : T_p521Uint1)) : GoUInt64)));
            _x165 = __tmp__._0;
            _x166 = __tmp__._1;
        };
        var _x167:GoUInt64 = ((0 : GoUInt64));
        var _x168:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x154, _x151, ((((_x166 : T_p521Uint1)) : GoUInt64)));
            _x167 = __tmp__._0;
            _x168 = __tmp__._1;
        };
        var _x169:GoUInt64 = ((0 : GoUInt64));
        var _x170:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x152, _x149, ((((_x168 : T_p521Uint1)) : GoUInt64)));
            _x169 = __tmp__._0;
            _x170 = __tmp__._1;
        };
        var _x171:GoUInt64 = ((0 : GoUInt64));
        var _x172:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x150, _x147, ((((_x170 : T_p521Uint1)) : GoUInt64)));
            _x171 = __tmp__._0;
            _x172 = __tmp__._1;
        };
        var _x173:GoUInt64 = ((0 : GoUInt64));
        var _x174:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x148, _x145, ((((_x172 : T_p521Uint1)) : GoUInt64)));
            _x173 = __tmp__._0;
            _x174 = __tmp__._1;
        };
        var _x175:GoUInt64 = ((0 : GoUInt64));
        var _x176:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x146, _x143, ((((_x174 : T_p521Uint1)) : GoUInt64)));
            _x175 = __tmp__._0;
            _x176 = __tmp__._1;
        };
        var _x178:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x111, _x159, ((((0 : GoUInt64)) : GoUInt64)));
            _x178 = __tmp__._1;
        };
        var _x179:GoUInt64 = ((0 : GoUInt64));
        var _x180:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x129, _x161, ((((_x178 : T_p521Uint1)) : GoUInt64)));
            _x179 = __tmp__._0;
            _x180 = __tmp__._1;
        };
        var _x181:GoUInt64 = ((0 : GoUInt64));
        var _x182:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x131, _x163, ((((_x180 : T_p521Uint1)) : GoUInt64)));
            _x181 = __tmp__._0;
            _x182 = __tmp__._1;
        };
        var _x183:GoUInt64 = ((0 : GoUInt64));
        var _x184:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x133, _x165, ((((_x182 : T_p521Uint1)) : GoUInt64)));
            _x183 = __tmp__._0;
            _x184 = __tmp__._1;
        };
        var _x185:GoUInt64 = ((0 : GoUInt64));
        var _x186:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x135, _x167, ((((_x184 : T_p521Uint1)) : GoUInt64)));
            _x185 = __tmp__._0;
            _x186 = __tmp__._1;
        };
        var _x187:GoUInt64 = ((0 : GoUInt64));
        var _x188:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x137, _x169, ((((_x186 : T_p521Uint1)) : GoUInt64)));
            _x187 = __tmp__._0;
            _x188 = __tmp__._1;
        };
        var _x189:GoUInt64 = ((0 : GoUInt64));
        var _x190:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x139, _x171, ((((_x188 : T_p521Uint1)) : GoUInt64)));
            _x189 = __tmp__._0;
            _x190 = __tmp__._1;
        };
        var _x191:GoUInt64 = ((0 : GoUInt64));
        var _x192:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x141, _x173, ((((_x190 : T_p521Uint1)) : GoUInt64)));
            _x191 = __tmp__._0;
            _x192 = __tmp__._1;
        };
        var _x193:GoUInt64 = ((0 : GoUInt64));
        var _x194:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x142 : T_p521Uint1)) : GoUInt64)) + (((((_x126 : T_p521Uint1)) : GoUInt64)) + (((((_x108 : T_p521Uint1)) : GoUInt64)) + _x76))), _x175, ((((_x192 : T_p521Uint1)) : GoUInt64)));
            _x193 = __tmp__._0;
            _x194 = __tmp__._1;
        };
        var _x195:GoUInt64 = ((0 : GoUInt64));
        var _x196:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x196 = __tmp__._0;
            _x195 = __tmp__._1;
        };
        var _x197:GoUInt64 = ((0 : GoUInt64));
        var _x198:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x181, _x195, ((((0 : GoUInt64)) : GoUInt64)));
            _x197 = __tmp__._0;
            _x198 = __tmp__._1;
        };
        var _x199:GoUInt64 = ((0 : GoUInt64));
        var _x200:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x183, _x196, ((((_x198 : T_p521Uint1)) : GoUInt64)));
            _x199 = __tmp__._0;
            _x200 = __tmp__._1;
        };
        var _x201:GoUInt64 = ((0 : GoUInt64));
        var _x202:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x185, ((((0 : GoUInt64)) : GoUInt64)), ((((_x200 : T_p521Uint1)) : GoUInt64)));
            _x201 = __tmp__._0;
            _x202 = __tmp__._1;
        };
        var _x203:GoUInt64 = ((0 : GoUInt64));
        var _x204:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x187, ((((0 : GoUInt64)) : GoUInt64)), ((((_x202 : T_p521Uint1)) : GoUInt64)));
            _x203 = __tmp__._0;
            _x204 = __tmp__._1;
        };
        var _x205:GoUInt64 = ((0 : GoUInt64));
        var _x206:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x189, ((((0 : GoUInt64)) : GoUInt64)), ((((_x204 : T_p521Uint1)) : GoUInt64)));
            _x205 = __tmp__._0;
            _x206 = __tmp__._1;
        };
        var _x207:GoUInt64 = ((0 : GoUInt64));
        var _x208:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x191, ((((0 : GoUInt64)) : GoUInt64)), ((((_x206 : T_p521Uint1)) : GoUInt64)));
            _x207 = __tmp__._0;
            _x208 = __tmp__._1;
        };
        var _x209:GoUInt64 = ((0 : GoUInt64));
        var _x210:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x193, ((((0 : GoUInt64)) : GoUInt64)), ((((_x208 : T_p521Uint1)) : GoUInt64)));
            _x209 = __tmp__._0;
            _x210 = __tmp__._1;
        };
        var _x211:GoUInt64 = ((0 : GoUInt64));
        var _x212:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, ((511 : GoUInt64)));
            _x212 = __tmp__._0;
            _x211 = __tmp__._1;
        };
        var _x213:GoUInt64 = ((0 : GoUInt64));
        var _x214:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x214 = __tmp__._0;
            _x213 = __tmp__._1;
        };
        var _x215:GoUInt64 = ((0 : GoUInt64));
        var _x216:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x216 = __tmp__._0;
            _x215 = __tmp__._1;
        };
        var _x217:GoUInt64 = ((0 : GoUInt64));
        var _x218:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x218 = __tmp__._0;
            _x217 = __tmp__._1;
        };
        var _x219:GoUInt64 = ((0 : GoUInt64));
        var _x220:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x220 = __tmp__._0;
            _x219 = __tmp__._1;
        };
        var _x221:GoUInt64 = ((0 : GoUInt64));
        var _x222:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x222 = __tmp__._0;
            _x221 = __tmp__._1;
        };
        var _x223:GoUInt64 = ((0 : GoUInt64));
        var _x224:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x224 = __tmp__._0;
            _x223 = __tmp__._1;
        };
        var _x225:GoUInt64 = ((0 : GoUInt64));
        var _x226:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x226 = __tmp__._0;
            _x225 = __tmp__._1;
        };
        var _x227:GoUInt64 = ((0 : GoUInt64));
        var _x228:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x179, (("18446744073709551615" : GoUInt64)));
            _x228 = __tmp__._0;
            _x227 = __tmp__._1;
        };
        var _x229:GoUInt64 = ((0 : GoUInt64));
        var _x230:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x228, _x225, ((((0 : GoUInt64)) : GoUInt64)));
            _x229 = __tmp__._0;
            _x230 = __tmp__._1;
        };
        var _x231:GoUInt64 = ((0 : GoUInt64));
        var _x232:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x226, _x223, ((((_x230 : T_p521Uint1)) : GoUInt64)));
            _x231 = __tmp__._0;
            _x232 = __tmp__._1;
        };
        var _x233:GoUInt64 = ((0 : GoUInt64));
        var _x234:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x224, _x221, ((((_x232 : T_p521Uint1)) : GoUInt64)));
            _x233 = __tmp__._0;
            _x234 = __tmp__._1;
        };
        var _x235:GoUInt64 = ((0 : GoUInt64));
        var _x236:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x222, _x219, ((((_x234 : T_p521Uint1)) : GoUInt64)));
            _x235 = __tmp__._0;
            _x236 = __tmp__._1;
        };
        var _x237:GoUInt64 = ((0 : GoUInt64));
        var _x238:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x220, _x217, ((((_x236 : T_p521Uint1)) : GoUInt64)));
            _x237 = __tmp__._0;
            _x238 = __tmp__._1;
        };
        var _x239:GoUInt64 = ((0 : GoUInt64));
        var _x240:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x218, _x215, ((((_x238 : T_p521Uint1)) : GoUInt64)));
            _x239 = __tmp__._0;
            _x240 = __tmp__._1;
        };
        var _x241:GoUInt64 = ((0 : GoUInt64));
        var _x242:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x216, _x213, ((((_x240 : T_p521Uint1)) : GoUInt64)));
            _x241 = __tmp__._0;
            _x242 = __tmp__._1;
        };
        var _x243:GoUInt64 = ((0 : GoUInt64));
        var _x244:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x214, _x211, ((((_x242 : T_p521Uint1)) : GoUInt64)));
            _x243 = __tmp__._0;
            _x244 = __tmp__._1;
        };
        var _x246:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x179, _x227, ((((0 : GoUInt64)) : GoUInt64)));
            _x246 = __tmp__._1;
        };
        var _x247:GoUInt64 = ((0 : GoUInt64));
        var _x248:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x197, _x229, ((((_x246 : T_p521Uint1)) : GoUInt64)));
            _x247 = __tmp__._0;
            _x248 = __tmp__._1;
        };
        var _x249:GoUInt64 = ((0 : GoUInt64));
        var _x250:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x199, _x231, ((((_x248 : T_p521Uint1)) : GoUInt64)));
            _x249 = __tmp__._0;
            _x250 = __tmp__._1;
        };
        var _x251:GoUInt64 = ((0 : GoUInt64));
        var _x252:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x201, _x233, ((((_x250 : T_p521Uint1)) : GoUInt64)));
            _x251 = __tmp__._0;
            _x252 = __tmp__._1;
        };
        var _x253:GoUInt64 = ((0 : GoUInt64));
        var _x254:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x203, _x235, ((((_x252 : T_p521Uint1)) : GoUInt64)));
            _x253 = __tmp__._0;
            _x254 = __tmp__._1;
        };
        var _x255:GoUInt64 = ((0 : GoUInt64));
        var _x256:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x205, _x237, ((((_x254 : T_p521Uint1)) : GoUInt64)));
            _x255 = __tmp__._0;
            _x256 = __tmp__._1;
        };
        var _x257:GoUInt64 = ((0 : GoUInt64));
        var _x258:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x207, _x239, ((((_x256 : T_p521Uint1)) : GoUInt64)));
            _x257 = __tmp__._0;
            _x258 = __tmp__._1;
        };
        var _x259:GoUInt64 = ((0 : GoUInt64));
        var _x260:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x209, _x241, ((((_x258 : T_p521Uint1)) : GoUInt64)));
            _x259 = __tmp__._0;
            _x260 = __tmp__._1;
        };
        var _x261:GoUInt64 = ((0 : GoUInt64));
        var _x262:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x210 : T_p521Uint1)) : GoUInt64)) + (((((_x194 : T_p521Uint1)) : GoUInt64)) + (((((_x176 : T_p521Uint1)) : GoUInt64)) + _x144))), _x243, ((((_x260 : T_p521Uint1)) : GoUInt64)));
            _x261 = __tmp__._0;
            _x262 = __tmp__._1;
        };
        var _x263:GoUInt64 = ((0 : GoUInt64));
        var _x264:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x264 = __tmp__._0;
            _x263 = __tmp__._1;
        };
        var _x265:GoUInt64 = ((0 : GoUInt64));
        var _x266:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x249, _x263, ((((0 : GoUInt64)) : GoUInt64)));
            _x265 = __tmp__._0;
            _x266 = __tmp__._1;
        };
        var _x267:GoUInt64 = ((0 : GoUInt64));
        var _x268:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x251, _x264, ((((_x266 : T_p521Uint1)) : GoUInt64)));
            _x267 = __tmp__._0;
            _x268 = __tmp__._1;
        };
        var _x269:GoUInt64 = ((0 : GoUInt64));
        var _x270:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x253, ((((0 : GoUInt64)) : GoUInt64)), ((((_x268 : T_p521Uint1)) : GoUInt64)));
            _x269 = __tmp__._0;
            _x270 = __tmp__._1;
        };
        var _x271:GoUInt64 = ((0 : GoUInt64));
        var _x272:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x255, ((((0 : GoUInt64)) : GoUInt64)), ((((_x270 : T_p521Uint1)) : GoUInt64)));
            _x271 = __tmp__._0;
            _x272 = __tmp__._1;
        };
        var _x273:GoUInt64 = ((0 : GoUInt64));
        var _x274:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x257, ((((0 : GoUInt64)) : GoUInt64)), ((((_x272 : T_p521Uint1)) : GoUInt64)));
            _x273 = __tmp__._0;
            _x274 = __tmp__._1;
        };
        var _x275:GoUInt64 = ((0 : GoUInt64));
        var _x276:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x259, ((((0 : GoUInt64)) : GoUInt64)), ((((_x274 : T_p521Uint1)) : GoUInt64)));
            _x275 = __tmp__._0;
            _x276 = __tmp__._1;
        };
        var _x277:GoUInt64 = ((0 : GoUInt64));
        var _x278:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x261, ((((0 : GoUInt64)) : GoUInt64)), ((((_x276 : T_p521Uint1)) : GoUInt64)));
            _x277 = __tmp__._0;
            _x278 = __tmp__._1;
        };
        var _x279:GoUInt64 = ((0 : GoUInt64));
        var _x280:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, ((511 : GoUInt64)));
            _x280 = __tmp__._0;
            _x279 = __tmp__._1;
        };
        var _x281:GoUInt64 = ((0 : GoUInt64));
        var _x282:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x282 = __tmp__._0;
            _x281 = __tmp__._1;
        };
        var _x283:GoUInt64 = ((0 : GoUInt64));
        var _x284:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x284 = __tmp__._0;
            _x283 = __tmp__._1;
        };
        var _x285:GoUInt64 = ((0 : GoUInt64));
        var _x286:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x286 = __tmp__._0;
            _x285 = __tmp__._1;
        };
        var _x287:GoUInt64 = ((0 : GoUInt64));
        var _x288:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x288 = __tmp__._0;
            _x287 = __tmp__._1;
        };
        var _x289:GoUInt64 = ((0 : GoUInt64));
        var _x290:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x290 = __tmp__._0;
            _x289 = __tmp__._1;
        };
        var _x291:GoUInt64 = ((0 : GoUInt64));
        var _x292:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x292 = __tmp__._0;
            _x291 = __tmp__._1;
        };
        var _x293:GoUInt64 = ((0 : GoUInt64));
        var _x294:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x294 = __tmp__._0;
            _x293 = __tmp__._1;
        };
        var _x295:GoUInt64 = ((0 : GoUInt64));
        var _x296:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x247, (("18446744073709551615" : GoUInt64)));
            _x296 = __tmp__._0;
            _x295 = __tmp__._1;
        };
        var _x297:GoUInt64 = ((0 : GoUInt64));
        var _x298:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x296, _x293, ((((0 : GoUInt64)) : GoUInt64)));
            _x297 = __tmp__._0;
            _x298 = __tmp__._1;
        };
        var _x299:GoUInt64 = ((0 : GoUInt64));
        var _x300:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x294, _x291, ((((_x298 : T_p521Uint1)) : GoUInt64)));
            _x299 = __tmp__._0;
            _x300 = __tmp__._1;
        };
        var _x301:GoUInt64 = ((0 : GoUInt64));
        var _x302:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x292, _x289, ((((_x300 : T_p521Uint1)) : GoUInt64)));
            _x301 = __tmp__._0;
            _x302 = __tmp__._1;
        };
        var _x303:GoUInt64 = ((0 : GoUInt64));
        var _x304:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x290, _x287, ((((_x302 : T_p521Uint1)) : GoUInt64)));
            _x303 = __tmp__._0;
            _x304 = __tmp__._1;
        };
        var _x305:GoUInt64 = ((0 : GoUInt64));
        var _x306:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x288, _x285, ((((_x304 : T_p521Uint1)) : GoUInt64)));
            _x305 = __tmp__._0;
            _x306 = __tmp__._1;
        };
        var _x307:GoUInt64 = ((0 : GoUInt64));
        var _x308:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x286, _x283, ((((_x306 : T_p521Uint1)) : GoUInt64)));
            _x307 = __tmp__._0;
            _x308 = __tmp__._1;
        };
        var _x309:GoUInt64 = ((0 : GoUInt64));
        var _x310:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x284, _x281, ((((_x308 : T_p521Uint1)) : GoUInt64)));
            _x309 = __tmp__._0;
            _x310 = __tmp__._1;
        };
        var _x311:GoUInt64 = ((0 : GoUInt64));
        var _x312:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x282, _x279, ((((_x310 : T_p521Uint1)) : GoUInt64)));
            _x311 = __tmp__._0;
            _x312 = __tmp__._1;
        };
        var _x314:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x247, _x295, ((((0 : GoUInt64)) : GoUInt64)));
            _x314 = __tmp__._1;
        };
        var _x315:GoUInt64 = ((0 : GoUInt64));
        var _x316:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x265, _x297, ((((_x314 : T_p521Uint1)) : GoUInt64)));
            _x315 = __tmp__._0;
            _x316 = __tmp__._1;
        };
        var _x317:GoUInt64 = ((0 : GoUInt64));
        var _x318:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x267, _x299, ((((_x316 : T_p521Uint1)) : GoUInt64)));
            _x317 = __tmp__._0;
            _x318 = __tmp__._1;
        };
        var _x319:GoUInt64 = ((0 : GoUInt64));
        var _x320:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x269, _x301, ((((_x318 : T_p521Uint1)) : GoUInt64)));
            _x319 = __tmp__._0;
            _x320 = __tmp__._1;
        };
        var _x321:GoUInt64 = ((0 : GoUInt64));
        var _x322:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x271, _x303, ((((_x320 : T_p521Uint1)) : GoUInt64)));
            _x321 = __tmp__._0;
            _x322 = __tmp__._1;
        };
        var _x323:GoUInt64 = ((0 : GoUInt64));
        var _x324:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x273, _x305, ((((_x322 : T_p521Uint1)) : GoUInt64)));
            _x323 = __tmp__._0;
            _x324 = __tmp__._1;
        };
        var _x325:GoUInt64 = ((0 : GoUInt64));
        var _x326:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x275, _x307, ((((_x324 : T_p521Uint1)) : GoUInt64)));
            _x325 = __tmp__._0;
            _x326 = __tmp__._1;
        };
        var _x327:GoUInt64 = ((0 : GoUInt64));
        var _x328:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x277, _x309, ((((_x326 : T_p521Uint1)) : GoUInt64)));
            _x327 = __tmp__._0;
            _x328 = __tmp__._1;
        };
        var _x329:GoUInt64 = ((0 : GoUInt64));
        var _x330:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x278 : T_p521Uint1)) : GoUInt64)) + (((((_x262 : T_p521Uint1)) : GoUInt64)) + (((((_x244 : T_p521Uint1)) : GoUInt64)) + _x212))), _x311, ((((_x328 : T_p521Uint1)) : GoUInt64)));
            _x329 = __tmp__._0;
            _x330 = __tmp__._1;
        };
        var _x331:GoUInt64 = ((0 : GoUInt64));
        var _x332:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x332 = __tmp__._0;
            _x331 = __tmp__._1;
        };
        var _x333:GoUInt64 = ((0 : GoUInt64));
        var _x334:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x317, _x331, ((((0 : GoUInt64)) : GoUInt64)));
            _x333 = __tmp__._0;
            _x334 = __tmp__._1;
        };
        var _x335:GoUInt64 = ((0 : GoUInt64));
        var _x336:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x319, _x332, ((((_x334 : T_p521Uint1)) : GoUInt64)));
            _x335 = __tmp__._0;
            _x336 = __tmp__._1;
        };
        var _x337:GoUInt64 = ((0 : GoUInt64));
        var _x338:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x321, ((((0 : GoUInt64)) : GoUInt64)), ((((_x336 : T_p521Uint1)) : GoUInt64)));
            _x337 = __tmp__._0;
            _x338 = __tmp__._1;
        };
        var _x339:GoUInt64 = ((0 : GoUInt64));
        var _x340:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x323, ((((0 : GoUInt64)) : GoUInt64)), ((((_x338 : T_p521Uint1)) : GoUInt64)));
            _x339 = __tmp__._0;
            _x340 = __tmp__._1;
        };
        var _x341:GoUInt64 = ((0 : GoUInt64));
        var _x342:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x325, ((((0 : GoUInt64)) : GoUInt64)), ((((_x340 : T_p521Uint1)) : GoUInt64)));
            _x341 = __tmp__._0;
            _x342 = __tmp__._1;
        };
        var _x343:GoUInt64 = ((0 : GoUInt64));
        var _x344:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x327, ((((0 : GoUInt64)) : GoUInt64)), ((((_x342 : T_p521Uint1)) : GoUInt64)));
            _x343 = __tmp__._0;
            _x344 = __tmp__._1;
        };
        var _x345:GoUInt64 = ((0 : GoUInt64));
        var _x346:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x329, ((((0 : GoUInt64)) : GoUInt64)), ((((_x344 : T_p521Uint1)) : GoUInt64)));
            _x345 = __tmp__._0;
            _x346 = __tmp__._1;
        };
        var _x347:GoUInt64 = ((0 : GoUInt64));
        var _x348:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, ((511 : GoUInt64)));
            _x348 = __tmp__._0;
            _x347 = __tmp__._1;
        };
        var _x349:GoUInt64 = ((0 : GoUInt64));
        var _x350:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x350 = __tmp__._0;
            _x349 = __tmp__._1;
        };
        var _x351:GoUInt64 = ((0 : GoUInt64));
        var _x352:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x352 = __tmp__._0;
            _x351 = __tmp__._1;
        };
        var _x353:GoUInt64 = ((0 : GoUInt64));
        var _x354:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x354 = __tmp__._0;
            _x353 = __tmp__._1;
        };
        var _x355:GoUInt64 = ((0 : GoUInt64));
        var _x356:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x356 = __tmp__._0;
            _x355 = __tmp__._1;
        };
        var _x357:GoUInt64 = ((0 : GoUInt64));
        var _x358:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x358 = __tmp__._0;
            _x357 = __tmp__._1;
        };
        var _x359:GoUInt64 = ((0 : GoUInt64));
        var _x360:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x360 = __tmp__._0;
            _x359 = __tmp__._1;
        };
        var _x361:GoUInt64 = ((0 : GoUInt64));
        var _x362:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x362 = __tmp__._0;
            _x361 = __tmp__._1;
        };
        var _x363:GoUInt64 = ((0 : GoUInt64));
        var _x364:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x315, (("18446744073709551615" : GoUInt64)));
            _x364 = __tmp__._0;
            _x363 = __tmp__._1;
        };
        var _x365:GoUInt64 = ((0 : GoUInt64));
        var _x366:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x364, _x361, ((((0 : GoUInt64)) : GoUInt64)));
            _x365 = __tmp__._0;
            _x366 = __tmp__._1;
        };
        var _x367:GoUInt64 = ((0 : GoUInt64));
        var _x368:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x362, _x359, ((((_x366 : T_p521Uint1)) : GoUInt64)));
            _x367 = __tmp__._0;
            _x368 = __tmp__._1;
        };
        var _x369:GoUInt64 = ((0 : GoUInt64));
        var _x370:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x360, _x357, ((((_x368 : T_p521Uint1)) : GoUInt64)));
            _x369 = __tmp__._0;
            _x370 = __tmp__._1;
        };
        var _x371:GoUInt64 = ((0 : GoUInt64));
        var _x372:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x358, _x355, ((((_x370 : T_p521Uint1)) : GoUInt64)));
            _x371 = __tmp__._0;
            _x372 = __tmp__._1;
        };
        var _x373:GoUInt64 = ((0 : GoUInt64));
        var _x374:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x356, _x353, ((((_x372 : T_p521Uint1)) : GoUInt64)));
            _x373 = __tmp__._0;
            _x374 = __tmp__._1;
        };
        var _x375:GoUInt64 = ((0 : GoUInt64));
        var _x376:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x354, _x351, ((((_x374 : T_p521Uint1)) : GoUInt64)));
            _x375 = __tmp__._0;
            _x376 = __tmp__._1;
        };
        var _x377:GoUInt64 = ((0 : GoUInt64));
        var _x378:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x352, _x349, ((((_x376 : T_p521Uint1)) : GoUInt64)));
            _x377 = __tmp__._0;
            _x378 = __tmp__._1;
        };
        var _x379:GoUInt64 = ((0 : GoUInt64));
        var _x380:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x350, _x347, ((((_x378 : T_p521Uint1)) : GoUInt64)));
            _x379 = __tmp__._0;
            _x380 = __tmp__._1;
        };
        var _x382:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x315, _x363, ((((0 : GoUInt64)) : GoUInt64)));
            _x382 = __tmp__._1;
        };
        var _x383:GoUInt64 = ((0 : GoUInt64));
        var _x384:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x333, _x365, ((((_x382 : T_p521Uint1)) : GoUInt64)));
            _x383 = __tmp__._0;
            _x384 = __tmp__._1;
        };
        var _x385:GoUInt64 = ((0 : GoUInt64));
        var _x386:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x335, _x367, ((((_x384 : T_p521Uint1)) : GoUInt64)));
            _x385 = __tmp__._0;
            _x386 = __tmp__._1;
        };
        var _x387:GoUInt64 = ((0 : GoUInt64));
        var _x388:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x337, _x369, ((((_x386 : T_p521Uint1)) : GoUInt64)));
            _x387 = __tmp__._0;
            _x388 = __tmp__._1;
        };
        var _x389:GoUInt64 = ((0 : GoUInt64));
        var _x390:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x339, _x371, ((((_x388 : T_p521Uint1)) : GoUInt64)));
            _x389 = __tmp__._0;
            _x390 = __tmp__._1;
        };
        var _x391:GoUInt64 = ((0 : GoUInt64));
        var _x392:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x341, _x373, ((((_x390 : T_p521Uint1)) : GoUInt64)));
            _x391 = __tmp__._0;
            _x392 = __tmp__._1;
        };
        var _x393:GoUInt64 = ((0 : GoUInt64));
        var _x394:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x343, _x375, ((((_x392 : T_p521Uint1)) : GoUInt64)));
            _x393 = __tmp__._0;
            _x394 = __tmp__._1;
        };
        var _x395:GoUInt64 = ((0 : GoUInt64));
        var _x396:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x345, _x377, ((((_x394 : T_p521Uint1)) : GoUInt64)));
            _x395 = __tmp__._0;
            _x396 = __tmp__._1;
        };
        var _x397:GoUInt64 = ((0 : GoUInt64));
        var _x398:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x346 : T_p521Uint1)) : GoUInt64)) + (((((_x330 : T_p521Uint1)) : GoUInt64)) + (((((_x312 : T_p521Uint1)) : GoUInt64)) + _x280))), _x379, ((((_x396 : T_p521Uint1)) : GoUInt64)));
            _x397 = __tmp__._0;
            _x398 = __tmp__._1;
        };
        var _x399:GoUInt64 = ((0 : GoUInt64));
        var _x400:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x400 = __tmp__._0;
            _x399 = __tmp__._1;
        };
        var _x401:GoUInt64 = ((0 : GoUInt64));
        var _x402:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x385, _x399, ((((0 : GoUInt64)) : GoUInt64)));
            _x401 = __tmp__._0;
            _x402 = __tmp__._1;
        };
        var _x403:GoUInt64 = ((0 : GoUInt64));
        var _x404:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x387, _x400, ((((_x402 : T_p521Uint1)) : GoUInt64)));
            _x403 = __tmp__._0;
            _x404 = __tmp__._1;
        };
        var _x405:GoUInt64 = ((0 : GoUInt64));
        var _x406:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x389, ((((0 : GoUInt64)) : GoUInt64)), ((((_x404 : T_p521Uint1)) : GoUInt64)));
            _x405 = __tmp__._0;
            _x406 = __tmp__._1;
        };
        var _x407:GoUInt64 = ((0 : GoUInt64));
        var _x408:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x391, ((((0 : GoUInt64)) : GoUInt64)), ((((_x406 : T_p521Uint1)) : GoUInt64)));
            _x407 = __tmp__._0;
            _x408 = __tmp__._1;
        };
        var _x409:GoUInt64 = ((0 : GoUInt64));
        var _x410:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x393, ((((0 : GoUInt64)) : GoUInt64)), ((((_x408 : T_p521Uint1)) : GoUInt64)));
            _x409 = __tmp__._0;
            _x410 = __tmp__._1;
        };
        var _x411:GoUInt64 = ((0 : GoUInt64));
        var _x412:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x395, ((((0 : GoUInt64)) : GoUInt64)), ((((_x410 : T_p521Uint1)) : GoUInt64)));
            _x411 = __tmp__._0;
            _x412 = __tmp__._1;
        };
        var _x413:GoUInt64 = ((0 : GoUInt64));
        var _x414:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x397, ((((0 : GoUInt64)) : GoUInt64)), ((((_x412 : T_p521Uint1)) : GoUInt64)));
            _x413 = __tmp__._0;
            _x414 = __tmp__._1;
        };
        var _x415:GoUInt64 = ((0 : GoUInt64));
        var _x416:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, ((511 : GoUInt64)));
            _x416 = __tmp__._0;
            _x415 = __tmp__._1;
        };
        var _x417:GoUInt64 = ((0 : GoUInt64));
        var _x418:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x418 = __tmp__._0;
            _x417 = __tmp__._1;
        };
        var _x419:GoUInt64 = ((0 : GoUInt64));
        var _x420:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x420 = __tmp__._0;
            _x419 = __tmp__._1;
        };
        var _x421:GoUInt64 = ((0 : GoUInt64));
        var _x422:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x422 = __tmp__._0;
            _x421 = __tmp__._1;
        };
        var _x423:GoUInt64 = ((0 : GoUInt64));
        var _x424:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x424 = __tmp__._0;
            _x423 = __tmp__._1;
        };
        var _x425:GoUInt64 = ((0 : GoUInt64));
        var _x426:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x426 = __tmp__._0;
            _x425 = __tmp__._1;
        };
        var _x427:GoUInt64 = ((0 : GoUInt64));
        var _x428:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x428 = __tmp__._0;
            _x427 = __tmp__._1;
        };
        var _x429:GoUInt64 = ((0 : GoUInt64));
        var _x430:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x430 = __tmp__._0;
            _x429 = __tmp__._1;
        };
        var _x431:GoUInt64 = ((0 : GoUInt64));
        var _x432:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x383, (("18446744073709551615" : GoUInt64)));
            _x432 = __tmp__._0;
            _x431 = __tmp__._1;
        };
        var _x433:GoUInt64 = ((0 : GoUInt64));
        var _x434:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x432, _x429, ((((0 : GoUInt64)) : GoUInt64)));
            _x433 = __tmp__._0;
            _x434 = __tmp__._1;
        };
        var _x435:GoUInt64 = ((0 : GoUInt64));
        var _x436:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x430, _x427, ((((_x434 : T_p521Uint1)) : GoUInt64)));
            _x435 = __tmp__._0;
            _x436 = __tmp__._1;
        };
        var _x437:GoUInt64 = ((0 : GoUInt64));
        var _x438:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x428, _x425, ((((_x436 : T_p521Uint1)) : GoUInt64)));
            _x437 = __tmp__._0;
            _x438 = __tmp__._1;
        };
        var _x439:GoUInt64 = ((0 : GoUInt64));
        var _x440:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x426, _x423, ((((_x438 : T_p521Uint1)) : GoUInt64)));
            _x439 = __tmp__._0;
            _x440 = __tmp__._1;
        };
        var _x441:GoUInt64 = ((0 : GoUInt64));
        var _x442:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x424, _x421, ((((_x440 : T_p521Uint1)) : GoUInt64)));
            _x441 = __tmp__._0;
            _x442 = __tmp__._1;
        };
        var _x443:GoUInt64 = ((0 : GoUInt64));
        var _x444:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x422, _x419, ((((_x442 : T_p521Uint1)) : GoUInt64)));
            _x443 = __tmp__._0;
            _x444 = __tmp__._1;
        };
        var _x445:GoUInt64 = ((0 : GoUInt64));
        var _x446:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x420, _x417, ((((_x444 : T_p521Uint1)) : GoUInt64)));
            _x445 = __tmp__._0;
            _x446 = __tmp__._1;
        };
        var _x447:GoUInt64 = ((0 : GoUInt64));
        var _x448:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x418, _x415, ((((_x446 : T_p521Uint1)) : GoUInt64)));
            _x447 = __tmp__._0;
            _x448 = __tmp__._1;
        };
        var _x450:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x383, _x431, ((((0 : GoUInt64)) : GoUInt64)));
            _x450 = __tmp__._1;
        };
        var _x451:GoUInt64 = ((0 : GoUInt64));
        var _x452:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x401, _x433, ((((_x450 : T_p521Uint1)) : GoUInt64)));
            _x451 = __tmp__._0;
            _x452 = __tmp__._1;
        };
        var _x453:GoUInt64 = ((0 : GoUInt64));
        var _x454:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x403, _x435, ((((_x452 : T_p521Uint1)) : GoUInt64)));
            _x453 = __tmp__._0;
            _x454 = __tmp__._1;
        };
        var _x455:GoUInt64 = ((0 : GoUInt64));
        var _x456:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x405, _x437, ((((_x454 : T_p521Uint1)) : GoUInt64)));
            _x455 = __tmp__._0;
            _x456 = __tmp__._1;
        };
        var _x457:GoUInt64 = ((0 : GoUInt64));
        var _x458:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x407, _x439, ((((_x456 : T_p521Uint1)) : GoUInt64)));
            _x457 = __tmp__._0;
            _x458 = __tmp__._1;
        };
        var _x459:GoUInt64 = ((0 : GoUInt64));
        var _x460:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x409, _x441, ((((_x458 : T_p521Uint1)) : GoUInt64)));
            _x459 = __tmp__._0;
            _x460 = __tmp__._1;
        };
        var _x461:GoUInt64 = ((0 : GoUInt64));
        var _x462:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x411, _x443, ((((_x460 : T_p521Uint1)) : GoUInt64)));
            _x461 = __tmp__._0;
            _x462 = __tmp__._1;
        };
        var _x463:GoUInt64 = ((0 : GoUInt64));
        var _x464:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x413, _x445, ((((_x462 : T_p521Uint1)) : GoUInt64)));
            _x463 = __tmp__._0;
            _x464 = __tmp__._1;
        };
        var _x465:GoUInt64 = ((0 : GoUInt64));
        var _x466:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x414 : T_p521Uint1)) : GoUInt64)) + (((((_x398 : T_p521Uint1)) : GoUInt64)) + (((((_x380 : T_p521Uint1)) : GoUInt64)) + _x348))), _x447, ((((_x464 : T_p521Uint1)) : GoUInt64)));
            _x465 = __tmp__._0;
            _x466 = __tmp__._1;
        };
        var _x467:GoUInt64 = ((0 : GoUInt64));
        var _x468:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64((_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64))), (("70368744177664" : GoUInt64)));
            _x468 = __tmp__._0;
            _x467 = __tmp__._1;
        };
        var _x469:GoUInt64 = ((0 : GoUInt64));
        var _x470:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x453, _x467, ((((0 : GoUInt64)) : GoUInt64)));
            _x469 = __tmp__._0;
            _x470 = __tmp__._1;
        };
        var _x471:GoUInt64 = ((0 : GoUInt64));
        var _x472:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x455, _x468, ((((_x470 : T_p521Uint1)) : GoUInt64)));
            _x471 = __tmp__._0;
            _x472 = __tmp__._1;
        };
        var _x473:GoUInt64 = ((0 : GoUInt64));
        var _x474:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x457, ((((0 : GoUInt64)) : GoUInt64)), ((((_x472 : T_p521Uint1)) : GoUInt64)));
            _x473 = __tmp__._0;
            _x474 = __tmp__._1;
        };
        var _x475:GoUInt64 = ((0 : GoUInt64));
        var _x476:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x459, ((((0 : GoUInt64)) : GoUInt64)), ((((_x474 : T_p521Uint1)) : GoUInt64)));
            _x475 = __tmp__._0;
            _x476 = __tmp__._1;
        };
        var _x477:GoUInt64 = ((0 : GoUInt64));
        var _x478:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x461, ((((0 : GoUInt64)) : GoUInt64)), ((((_x476 : T_p521Uint1)) : GoUInt64)));
            _x477 = __tmp__._0;
            _x478 = __tmp__._1;
        };
        var _x479:GoUInt64 = ((0 : GoUInt64));
        var _x480:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x463, ((((0 : GoUInt64)) : GoUInt64)), ((((_x478 : T_p521Uint1)) : GoUInt64)));
            _x479 = __tmp__._0;
            _x480 = __tmp__._1;
        };
        var _x481:GoUInt64 = ((0 : GoUInt64));
        var _x482:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x465, ((((0 : GoUInt64)) : GoUInt64)), ((((_x480 : T_p521Uint1)) : GoUInt64)));
            _x481 = __tmp__._0;
            _x482 = __tmp__._1;
        };
        var _x483:GoUInt64 = ((0 : GoUInt64));
        var _x484:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, ((511 : GoUInt64)));
            _x484 = __tmp__._0;
            _x483 = __tmp__._1;
        };
        var _x485:GoUInt64 = ((0 : GoUInt64));
        var _x486:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x486 = __tmp__._0;
            _x485 = __tmp__._1;
        };
        var _x487:GoUInt64 = ((0 : GoUInt64));
        var _x488:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x488 = __tmp__._0;
            _x487 = __tmp__._1;
        };
        var _x489:GoUInt64 = ((0 : GoUInt64));
        var _x490:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x490 = __tmp__._0;
            _x489 = __tmp__._1;
        };
        var _x491:GoUInt64 = ((0 : GoUInt64));
        var _x492:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x492 = __tmp__._0;
            _x491 = __tmp__._1;
        };
        var _x493:GoUInt64 = ((0 : GoUInt64));
        var _x494:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x494 = __tmp__._0;
            _x493 = __tmp__._1;
        };
        var _x495:GoUInt64 = ((0 : GoUInt64));
        var _x496:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x496 = __tmp__._0;
            _x495 = __tmp__._1;
        };
        var _x497:GoUInt64 = ((0 : GoUInt64));
        var _x498:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x498 = __tmp__._0;
            _x497 = __tmp__._1;
        };
        var _x499:GoUInt64 = ((0 : GoUInt64));
        var _x500:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_x451, (("18446744073709551615" : GoUInt64)));
            _x500 = __tmp__._0;
            _x499 = __tmp__._1;
        };
        var _x501:GoUInt64 = ((0 : GoUInt64));
        var _x502:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x500, _x497, ((((0 : GoUInt64)) : GoUInt64)));
            _x501 = __tmp__._0;
            _x502 = __tmp__._1;
        };
        var _x503:GoUInt64 = ((0 : GoUInt64));
        var _x504:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x498, _x495, ((((_x502 : T_p521Uint1)) : GoUInt64)));
            _x503 = __tmp__._0;
            _x504 = __tmp__._1;
        };
        var _x505:GoUInt64 = ((0 : GoUInt64));
        var _x506:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x496, _x493, ((((_x504 : T_p521Uint1)) : GoUInt64)));
            _x505 = __tmp__._0;
            _x506 = __tmp__._1;
        };
        var _x507:GoUInt64 = ((0 : GoUInt64));
        var _x508:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x494, _x491, ((((_x506 : T_p521Uint1)) : GoUInt64)));
            _x507 = __tmp__._0;
            _x508 = __tmp__._1;
        };
        var _x509:GoUInt64 = ((0 : GoUInt64));
        var _x510:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x492, _x489, ((((_x508 : T_p521Uint1)) : GoUInt64)));
            _x509 = __tmp__._0;
            _x510 = __tmp__._1;
        };
        var _x511:GoUInt64 = ((0 : GoUInt64));
        var _x512:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x490, _x487, ((((_x510 : T_p521Uint1)) : GoUInt64)));
            _x511 = __tmp__._0;
            _x512 = __tmp__._1;
        };
        var _x513:GoUInt64 = ((0 : GoUInt64));
        var _x514:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x488, _x485, ((((_x512 : T_p521Uint1)) : GoUInt64)));
            _x513 = __tmp__._0;
            _x514 = __tmp__._1;
        };
        var _x515:GoUInt64 = ((0 : GoUInt64));
        var _x516:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x486, _x483, ((((_x514 : T_p521Uint1)) : GoUInt64)));
            _x515 = __tmp__._0;
            _x516 = __tmp__._1;
        };
        var _x518:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x451, _x499, ((((0 : GoUInt64)) : GoUInt64)));
            _x518 = __tmp__._1;
        };
        var _x519:GoUInt64 = ((0 : GoUInt64));
        var _x520:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x469, _x501, ((((_x518 : T_p521Uint1)) : GoUInt64)));
            _x519 = __tmp__._0;
            _x520 = __tmp__._1;
        };
        var _x521:GoUInt64 = ((0 : GoUInt64));
        var _x522:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x471, _x503, ((((_x520 : T_p521Uint1)) : GoUInt64)));
            _x521 = __tmp__._0;
            _x522 = __tmp__._1;
        };
        var _x523:GoUInt64 = ((0 : GoUInt64));
        var _x524:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x473, _x505, ((((_x522 : T_p521Uint1)) : GoUInt64)));
            _x523 = __tmp__._0;
            _x524 = __tmp__._1;
        };
        var _x525:GoUInt64 = ((0 : GoUInt64));
        var _x526:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x475, _x507, ((((_x524 : T_p521Uint1)) : GoUInt64)));
            _x525 = __tmp__._0;
            _x526 = __tmp__._1;
        };
        var _x527:GoUInt64 = ((0 : GoUInt64));
        var _x528:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x477, _x509, ((((_x526 : T_p521Uint1)) : GoUInt64)));
            _x527 = __tmp__._0;
            _x528 = __tmp__._1;
        };
        var _x529:GoUInt64 = ((0 : GoUInt64));
        var _x530:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x479, _x511, ((((_x528 : T_p521Uint1)) : GoUInt64)));
            _x529 = __tmp__._0;
            _x530 = __tmp__._1;
        };
        var _x531:GoUInt64 = ((0 : GoUInt64));
        var _x532:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64(_x481, _x513, ((((_x530 : T_p521Uint1)) : GoUInt64)));
            _x531 = __tmp__._0;
            _x532 = __tmp__._1;
        };
        var _x533:GoUInt64 = ((0 : GoUInt64));
        var _x534:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.add64((((((_x482 : T_p521Uint1)) : GoUInt64)) + (((((_x466 : T_p521Uint1)) : GoUInt64)) + (((((_x448 : T_p521Uint1)) : GoUInt64)) + _x416))), _x515, ((((_x532 : T_p521Uint1)) : GoUInt64)));
            _x533 = __tmp__._0;
            _x534 = __tmp__._1;
        };
        var _x535:GoUInt64 = (((((_x534 : T_p521Uint1)) : GoUInt64)) + (((((_x516 : T_p521Uint1)) : GoUInt64)) + _x484));
        var _x536:GoUInt64 = ((0 : GoUInt64));
        var _x537:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x519, (("18446744073709551615" : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)));
            _x536 = __tmp__._0;
            _x537 = __tmp__._1;
        };
        var _x538:GoUInt64 = ((0 : GoUInt64));
        var _x539:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x521, (("18446744073709551615" : GoUInt64)), ((((_x537 : T_p521Uint1)) : GoUInt64)));
            _x538 = __tmp__._0;
            _x539 = __tmp__._1;
        };
        var _x540:GoUInt64 = ((0 : GoUInt64));
        var _x541:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x523, (("18446744073709551615" : GoUInt64)), ((((_x539 : T_p521Uint1)) : GoUInt64)));
            _x540 = __tmp__._0;
            _x541 = __tmp__._1;
        };
        var _x542:GoUInt64 = ((0 : GoUInt64));
        var _x543:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x525, (("18446744073709551615" : GoUInt64)), ((((_x541 : T_p521Uint1)) : GoUInt64)));
            _x542 = __tmp__._0;
            _x543 = __tmp__._1;
        };
        var _x544:GoUInt64 = ((0 : GoUInt64));
        var _x545:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x527, (("18446744073709551615" : GoUInt64)), ((((_x543 : T_p521Uint1)) : GoUInt64)));
            _x544 = __tmp__._0;
            _x545 = __tmp__._1;
        };
        var _x546:GoUInt64 = ((0 : GoUInt64));
        var _x547:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x529, (("18446744073709551615" : GoUInt64)), ((((_x545 : T_p521Uint1)) : GoUInt64)));
            _x546 = __tmp__._0;
            _x547 = __tmp__._1;
        };
        var _x548:GoUInt64 = ((0 : GoUInt64));
        var _x549:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x531, (("18446744073709551615" : GoUInt64)), ((((_x547 : T_p521Uint1)) : GoUInt64)));
            _x548 = __tmp__._0;
            _x549 = __tmp__._1;
        };
        var _x550:GoUInt64 = ((0 : GoUInt64));
        var _x551:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x533, (("18446744073709551615" : GoUInt64)), ((((_x549 : T_p521Uint1)) : GoUInt64)));
            _x550 = __tmp__._0;
            _x551 = __tmp__._1;
        };
        var _x552:GoUInt64 = ((0 : GoUInt64));
        var _x553:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(_x535, ((511 : GoUInt64)), ((((_x551 : T_p521Uint1)) : GoUInt64)));
            _x552 = __tmp__._0;
            _x553 = __tmp__._1;
        };
        var _x555:GoUInt64 = ((0 : GoUInt64));
        {
            var __tmp__ = stdgo.math.bits.Bits.sub64(((((0 : GoUInt64)) : GoUInt64)), ((((0 : GoUInt64)) : GoUInt64)), ((((_x553 : T_p521Uint1)) : GoUInt64)));
            _x555 = __tmp__._1;
        };
        var _x556:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x556), ((_x555 : T_p521Uint1)), _x536, _x519);
        var _x557:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x557), ((_x555 : T_p521Uint1)), _x538, _x521);
        var _x558:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x558), ((_x555 : T_p521Uint1)), _x540, _x523);
        var _x559:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x559), ((_x555 : T_p521Uint1)), _x542, _x525);
        var _x560:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x560), ((_x555 : T_p521Uint1)), _x544, _x527);
        var _x561:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x561), ((_x555 : T_p521Uint1)), _x546, _x529);
        var _x562:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x562), ((_x555 : T_p521Uint1)), _x548, _x531);
        var _x563:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x563), ((_x555 : T_p521Uint1)), _x550, _x533);
        var _x564:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x564), ((_x555 : T_p521Uint1)), _x552, _x535);
        if (_out1 != null) _out1[((0 : GoInt))] = _x556;
        if (_out1 != null) _out1[((1 : GoInt))] = _x557;
        if (_out1 != null) _out1[((2 : GoInt))] = _x558;
        if (_out1 != null) _out1[((3 : GoInt))] = _x559;
        if (_out1 != null) _out1[((4 : GoInt))] = _x560;
        if (_out1 != null) _out1[((5 : GoInt))] = _x561;
        if (_out1 != null) _out1[((6 : GoInt))] = _x562;
        if (_out1 != null) _out1[((7 : GoInt))] = _x563;
        if (_out1 != null) _out1[((8 : GoInt))] = _x564;
    }
/**
    // p521Selectznz is a multi-limb conditional select.
    //
    // Postconditions:
    //   eval out1 = (if arg1 = 0 then eval arg2 else eval arg3)
    //
    // Input Bounds:
    //   arg1: [0x0 ~> 0x1]
    //   arg2: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    //   arg3: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff]]
**/
function _p521Selectznz(_out1:GoArray<GoUInt64>, _arg1:T_p521Uint1, _arg2:GoArray<GoUInt64>, _arg3:GoArray<GoUInt64>):Void {
        var _x1:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x1), _arg1, (_arg2 != null ? _arg2[((0 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((0 : GoInt))] : ((0 : GoUInt64))));
        var _x2:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x2), _arg1, (_arg2 != null ? _arg2[((1 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((1 : GoInt))] : ((0 : GoUInt64))));
        var _x3:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x3), _arg1, (_arg2 != null ? _arg2[((2 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((2 : GoInt))] : ((0 : GoUInt64))));
        var _x4:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x4), _arg1, (_arg2 != null ? _arg2[((3 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((3 : GoInt))] : ((0 : GoUInt64))));
        var _x5:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x5), _arg1, (_arg2 != null ? _arg2[((4 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((4 : GoInt))] : ((0 : GoUInt64))));
        var _x6:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x6), _arg1, (_arg2 != null ? _arg2[((5 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((5 : GoInt))] : ((0 : GoUInt64))));
        var _x7:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x7), _arg1, (_arg2 != null ? _arg2[((6 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((6 : GoInt))] : ((0 : GoUInt64))));
        var _x8:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x8), _arg1, (_arg2 != null ? _arg2[((7 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((7 : GoInt))] : ((0 : GoUInt64))));
        var _x9:GoUInt64 = ((0 : GoUInt64));
        _p521CmovznzU64(Go.pointer(_x9), _arg1, (_arg2 != null ? _arg2[((8 : GoInt))] : ((0 : GoUInt64))), (_arg3 != null ? _arg3[((8 : GoInt))] : ((0 : GoUInt64))));
        if (_out1 != null) _out1[((0 : GoInt))] = _x1;
        if (_out1 != null) _out1[((1 : GoInt))] = _x2;
        if (_out1 != null) _out1[((2 : GoInt))] = _x3;
        if (_out1 != null) _out1[((3 : GoInt))] = _x4;
        if (_out1 != null) _out1[((4 : GoInt))] = _x5;
        if (_out1 != null) _out1[((5 : GoInt))] = _x6;
        if (_out1 != null) _out1[((6 : GoInt))] = _x7;
        if (_out1 != null) _out1[((7 : GoInt))] = _x8;
        if (_out1 != null) _out1[((8 : GoInt))] = _x9;
    }
/**
    // p521ToBytes serializes a field element NOT in the Montgomery domain to bytes in little-endian order.
    //
    // Preconditions:
    //   0 ≤ eval arg1 < m
    // Postconditions:
    //   out1 = map (λ x, ⌊((eval arg1 mod m) mod 2^(8 * (x + 1))) / 2^(8 * x)⌋) [0..65]
    //
    // Input Bounds:
    //   arg1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0x1ff]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0x1]]
**/
function _p521ToBytes(_out1:GoArray<GoUInt8>, _arg1:GoArray<GoUInt64>):Void {
        var _x1:GoUInt64 = (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt64)));
        var _x2:GoUInt64 = (_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt64)));
        var _x3:GoUInt64 = (_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt64)));
        var _x4:GoUInt64 = (_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt64)));
        var _x5:GoUInt64 = (_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt64)));
        var _x6:GoUInt64 = (_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt64)));
        var _x7:GoUInt64 = (_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt64)));
        var _x8:GoUInt64 = (_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt64)));
        var _x9:GoUInt64 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt64)));
        var _x10:GoUInt8 = (((_x9 : GoUInt8)) & ((255 : GoUInt8)));
        var _x11:GoUInt64 = (_x9 >> ((8 : GoUnTypedInt)));
        var _x12:GoUInt8 = (((_x11 : GoUInt8)) & ((255 : GoUInt8)));
        var _x13:GoUInt64 = (_x11 >> ((8 : GoUnTypedInt)));
        var _x14:GoUInt8 = (((_x13 : GoUInt8)) & ((255 : GoUInt8)));
        var _x15:GoUInt64 = (_x13 >> ((8 : GoUnTypedInt)));
        var _x16:GoUInt8 = (((_x15 : GoUInt8)) & ((255 : GoUInt8)));
        var _x17:GoUInt64 = (_x15 >> ((8 : GoUnTypedInt)));
        var _x18:GoUInt8 = (((_x17 : GoUInt8)) & ((255 : GoUInt8)));
        var _x19:GoUInt64 = (_x17 >> ((8 : GoUnTypedInt)));
        var _x20:GoUInt8 = (((_x19 : GoUInt8)) & ((255 : GoUInt8)));
        var _x21:GoUInt64 = (_x19 >> ((8 : GoUnTypedInt)));
        var _x22:GoUInt8 = (((_x21 : GoUInt8)) & ((255 : GoUInt8)));
        var _x23:GoUInt8 = (((_x21 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x24:GoUInt8 = (((_x8 : GoUInt8)) & ((255 : GoUInt8)));
        var _x25:GoUInt64 = (_x8 >> ((8 : GoUnTypedInt)));
        var _x26:GoUInt8 = (((_x25 : GoUInt8)) & ((255 : GoUInt8)));
        var _x27:GoUInt64 = (_x25 >> ((8 : GoUnTypedInt)));
        var _x28:GoUInt8 = (((_x27 : GoUInt8)) & ((255 : GoUInt8)));
        var _x29:GoUInt64 = (_x27 >> ((8 : GoUnTypedInt)));
        var _x30:GoUInt8 = (((_x29 : GoUInt8)) & ((255 : GoUInt8)));
        var _x31:GoUInt64 = (_x29 >> ((8 : GoUnTypedInt)));
        var _x32:GoUInt8 = (((_x31 : GoUInt8)) & ((255 : GoUInt8)));
        var _x33:GoUInt64 = (_x31 >> ((8 : GoUnTypedInt)));
        var _x34:GoUInt8 = (((_x33 : GoUInt8)) & ((255 : GoUInt8)));
        var _x35:GoUInt64 = (_x33 >> ((8 : GoUnTypedInt)));
        var _x36:GoUInt8 = (((_x35 : GoUInt8)) & ((255 : GoUInt8)));
        var _x37:GoUInt8 = (((_x35 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x38:GoUInt8 = (((_x7 : GoUInt8)) & ((255 : GoUInt8)));
        var _x39:GoUInt64 = (_x7 >> ((8 : GoUnTypedInt)));
        var _x40:GoUInt8 = (((_x39 : GoUInt8)) & ((255 : GoUInt8)));
        var _x41:GoUInt64 = (_x39 >> ((8 : GoUnTypedInt)));
        var _x42:GoUInt8 = (((_x41 : GoUInt8)) & ((255 : GoUInt8)));
        var _x43:GoUInt64 = (_x41 >> ((8 : GoUnTypedInt)));
        var _x44:GoUInt8 = (((_x43 : GoUInt8)) & ((255 : GoUInt8)));
        var _x45:GoUInt64 = (_x43 >> ((8 : GoUnTypedInt)));
        var _x46:GoUInt8 = (((_x45 : GoUInt8)) & ((255 : GoUInt8)));
        var _x47:GoUInt64 = (_x45 >> ((8 : GoUnTypedInt)));
        var _x48:GoUInt8 = (((_x47 : GoUInt8)) & ((255 : GoUInt8)));
        var _x49:GoUInt64 = (_x47 >> ((8 : GoUnTypedInt)));
        var _x50:GoUInt8 = (((_x49 : GoUInt8)) & ((255 : GoUInt8)));
        var _x51:GoUInt8 = (((_x49 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x52:GoUInt8 = (((_x6 : GoUInt8)) & ((255 : GoUInt8)));
        var _x53:GoUInt64 = (_x6 >> ((8 : GoUnTypedInt)));
        var _x54:GoUInt8 = (((_x53 : GoUInt8)) & ((255 : GoUInt8)));
        var _x55:GoUInt64 = (_x53 >> ((8 : GoUnTypedInt)));
        var _x56:GoUInt8 = (((_x55 : GoUInt8)) & ((255 : GoUInt8)));
        var _x57:GoUInt64 = (_x55 >> ((8 : GoUnTypedInt)));
        var _x58:GoUInt8 = (((_x57 : GoUInt8)) & ((255 : GoUInt8)));
        var _x59:GoUInt64 = (_x57 >> ((8 : GoUnTypedInt)));
        var _x60:GoUInt8 = (((_x59 : GoUInt8)) & ((255 : GoUInt8)));
        var _x61:GoUInt64 = (_x59 >> ((8 : GoUnTypedInt)));
        var _x62:GoUInt8 = (((_x61 : GoUInt8)) & ((255 : GoUInt8)));
        var _x63:GoUInt64 = (_x61 >> ((8 : GoUnTypedInt)));
        var _x64:GoUInt8 = (((_x63 : GoUInt8)) & ((255 : GoUInt8)));
        var _x65:GoUInt8 = (((_x63 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x66:GoUInt8 = (((_x5 : GoUInt8)) & ((255 : GoUInt8)));
        var _x67:GoUInt64 = (_x5 >> ((8 : GoUnTypedInt)));
        var _x68:GoUInt8 = (((_x67 : GoUInt8)) & ((255 : GoUInt8)));
        var _x69:GoUInt64 = (_x67 >> ((8 : GoUnTypedInt)));
        var _x70:GoUInt8 = (((_x69 : GoUInt8)) & ((255 : GoUInt8)));
        var _x71:GoUInt64 = (_x69 >> ((8 : GoUnTypedInt)));
        var _x72:GoUInt8 = (((_x71 : GoUInt8)) & ((255 : GoUInt8)));
        var _x73:GoUInt64 = (_x71 >> ((8 : GoUnTypedInt)));
        var _x74:GoUInt8 = (((_x73 : GoUInt8)) & ((255 : GoUInt8)));
        var _x75:GoUInt64 = (_x73 >> ((8 : GoUnTypedInt)));
        var _x76:GoUInt8 = (((_x75 : GoUInt8)) & ((255 : GoUInt8)));
        var _x77:GoUInt64 = (_x75 >> ((8 : GoUnTypedInt)));
        var _x78:GoUInt8 = (((_x77 : GoUInt8)) & ((255 : GoUInt8)));
        var _x79:GoUInt8 = (((_x77 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x80:GoUInt8 = (((_x4 : GoUInt8)) & ((255 : GoUInt8)));
        var _x81:GoUInt64 = (_x4 >> ((8 : GoUnTypedInt)));
        var _x82:GoUInt8 = (((_x81 : GoUInt8)) & ((255 : GoUInt8)));
        var _x83:GoUInt64 = (_x81 >> ((8 : GoUnTypedInt)));
        var _x84:GoUInt8 = (((_x83 : GoUInt8)) & ((255 : GoUInt8)));
        var _x85:GoUInt64 = (_x83 >> ((8 : GoUnTypedInt)));
        var _x86:GoUInt8 = (((_x85 : GoUInt8)) & ((255 : GoUInt8)));
        var _x87:GoUInt64 = (_x85 >> ((8 : GoUnTypedInt)));
        var _x88:GoUInt8 = (((_x87 : GoUInt8)) & ((255 : GoUInt8)));
        var _x89:GoUInt64 = (_x87 >> ((8 : GoUnTypedInt)));
        var _x90:GoUInt8 = (((_x89 : GoUInt8)) & ((255 : GoUInt8)));
        var _x91:GoUInt64 = (_x89 >> ((8 : GoUnTypedInt)));
        var _x92:GoUInt8 = (((_x91 : GoUInt8)) & ((255 : GoUInt8)));
        var _x93:GoUInt8 = (((_x91 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x94:GoUInt8 = (((_x3 : GoUInt8)) & ((255 : GoUInt8)));
        var _x95:GoUInt64 = (_x3 >> ((8 : GoUnTypedInt)));
        var _x96:GoUInt8 = (((_x95 : GoUInt8)) & ((255 : GoUInt8)));
        var _x97:GoUInt64 = (_x95 >> ((8 : GoUnTypedInt)));
        var _x98:GoUInt8 = (((_x97 : GoUInt8)) & ((255 : GoUInt8)));
        var _x99:GoUInt64 = (_x97 >> ((8 : GoUnTypedInt)));
        var _x100:GoUInt8 = (((_x99 : GoUInt8)) & ((255 : GoUInt8)));
        var _x101:GoUInt64 = (_x99 >> ((8 : GoUnTypedInt)));
        var _x102:GoUInt8 = (((_x101 : GoUInt8)) & ((255 : GoUInt8)));
        var _x103:GoUInt64 = (_x101 >> ((8 : GoUnTypedInt)));
        var _x104:GoUInt8 = (((_x103 : GoUInt8)) & ((255 : GoUInt8)));
        var _x105:GoUInt64 = (_x103 >> ((8 : GoUnTypedInt)));
        var _x106:GoUInt8 = (((_x105 : GoUInt8)) & ((255 : GoUInt8)));
        var _x107:GoUInt8 = (((_x105 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x108:GoUInt8 = (((_x2 : GoUInt8)) & ((255 : GoUInt8)));
        var _x109:GoUInt64 = (_x2 >> ((8 : GoUnTypedInt)));
        var _x110:GoUInt8 = (((_x109 : GoUInt8)) & ((255 : GoUInt8)));
        var _x111:GoUInt64 = (_x109 >> ((8 : GoUnTypedInt)));
        var _x112:GoUInt8 = (((_x111 : GoUInt8)) & ((255 : GoUInt8)));
        var _x113:GoUInt64 = (_x111 >> ((8 : GoUnTypedInt)));
        var _x114:GoUInt8 = (((_x113 : GoUInt8)) & ((255 : GoUInt8)));
        var _x115:GoUInt64 = (_x113 >> ((8 : GoUnTypedInt)));
        var _x116:GoUInt8 = (((_x115 : GoUInt8)) & ((255 : GoUInt8)));
        var _x117:GoUInt64 = (_x115 >> ((8 : GoUnTypedInt)));
        var _x118:GoUInt8 = (((_x117 : GoUInt8)) & ((255 : GoUInt8)));
        var _x119:GoUInt64 = (_x117 >> ((8 : GoUnTypedInt)));
        var _x120:GoUInt8 = (((_x119 : GoUInt8)) & ((255 : GoUInt8)));
        var _x121:GoUInt8 = (((_x119 >> ((8 : GoUnTypedInt))) : GoUInt8));
        var _x122:GoUInt8 = (((_x1 : GoUInt8)) & ((255 : GoUInt8)));
        var _x123:T_p521Uint1 = (((_x1 >> ((8 : GoUnTypedInt))) : T_p521Uint1));
        if (_out1 != null) _out1[((0 : GoInt))] = _x10;
        if (_out1 != null) _out1[((1 : GoInt))] = _x12;
        if (_out1 != null) _out1[((2 : GoInt))] = _x14;
        if (_out1 != null) _out1[((3 : GoInt))] = _x16;
        if (_out1 != null) _out1[((4 : GoInt))] = _x18;
        if (_out1 != null) _out1[((5 : GoInt))] = _x20;
        if (_out1 != null) _out1[((6 : GoInt))] = _x22;
        if (_out1 != null) _out1[((7 : GoInt))] = _x23;
        if (_out1 != null) _out1[((8 : GoInt))] = _x24;
        if (_out1 != null) _out1[((9 : GoInt))] = _x26;
        if (_out1 != null) _out1[((10 : GoInt))] = _x28;
        if (_out1 != null) _out1[((11 : GoInt))] = _x30;
        if (_out1 != null) _out1[((12 : GoInt))] = _x32;
        if (_out1 != null) _out1[((13 : GoInt))] = _x34;
        if (_out1 != null) _out1[((14 : GoInt))] = _x36;
        if (_out1 != null) _out1[((15 : GoInt))] = _x37;
        if (_out1 != null) _out1[((16 : GoInt))] = _x38;
        if (_out1 != null) _out1[((17 : GoInt))] = _x40;
        if (_out1 != null) _out1[((18 : GoInt))] = _x42;
        if (_out1 != null) _out1[((19 : GoInt))] = _x44;
        if (_out1 != null) _out1[((20 : GoInt))] = _x46;
        if (_out1 != null) _out1[((21 : GoInt))] = _x48;
        if (_out1 != null) _out1[((22 : GoInt))] = _x50;
        if (_out1 != null) _out1[((23 : GoInt))] = _x51;
        if (_out1 != null) _out1[((24 : GoInt))] = _x52;
        if (_out1 != null) _out1[((25 : GoInt))] = _x54;
        if (_out1 != null) _out1[((26 : GoInt))] = _x56;
        if (_out1 != null) _out1[((27 : GoInt))] = _x58;
        if (_out1 != null) _out1[((28 : GoInt))] = _x60;
        if (_out1 != null) _out1[((29 : GoInt))] = _x62;
        if (_out1 != null) _out1[((30 : GoInt))] = _x64;
        if (_out1 != null) _out1[((31 : GoInt))] = _x65;
        if (_out1 != null) _out1[((32 : GoInt))] = _x66;
        if (_out1 != null) _out1[((33 : GoInt))] = _x68;
        if (_out1 != null) _out1[((34 : GoInt))] = _x70;
        if (_out1 != null) _out1[((35 : GoInt))] = _x72;
        if (_out1 != null) _out1[((36 : GoInt))] = _x74;
        if (_out1 != null) _out1[((37 : GoInt))] = _x76;
        if (_out1 != null) _out1[((38 : GoInt))] = _x78;
        if (_out1 != null) _out1[((39 : GoInt))] = _x79;
        if (_out1 != null) _out1[((40 : GoInt))] = _x80;
        if (_out1 != null) _out1[((41 : GoInt))] = _x82;
        if (_out1 != null) _out1[((42 : GoInt))] = _x84;
        if (_out1 != null) _out1[((43 : GoInt))] = _x86;
        if (_out1 != null) _out1[((44 : GoInt))] = _x88;
        if (_out1 != null) _out1[((45 : GoInt))] = _x90;
        if (_out1 != null) _out1[((46 : GoInt))] = _x92;
        if (_out1 != null) _out1[((47 : GoInt))] = _x93;
        if (_out1 != null) _out1[((48 : GoInt))] = _x94;
        if (_out1 != null) _out1[((49 : GoInt))] = _x96;
        if (_out1 != null) _out1[((50 : GoInt))] = _x98;
        if (_out1 != null) _out1[((51 : GoInt))] = _x100;
        if (_out1 != null) _out1[((52 : GoInt))] = _x102;
        if (_out1 != null) _out1[((53 : GoInt))] = _x104;
        if (_out1 != null) _out1[((54 : GoInt))] = _x106;
        if (_out1 != null) _out1[((55 : GoInt))] = _x107;
        if (_out1 != null) _out1[((56 : GoInt))] = _x108;
        if (_out1 != null) _out1[((57 : GoInt))] = _x110;
        if (_out1 != null) _out1[((58 : GoInt))] = _x112;
        if (_out1 != null) _out1[((59 : GoInt))] = _x114;
        if (_out1 != null) _out1[((60 : GoInt))] = _x116;
        if (_out1 != null) _out1[((61 : GoInt))] = _x118;
        if (_out1 != null) _out1[((62 : GoInt))] = _x120;
        if (_out1 != null) _out1[((63 : GoInt))] = _x121;
        if (_out1 != null) _out1[((64 : GoInt))] = _x122;
        if (_out1 != null) _out1[((65 : GoInt))] = ((_x123 : GoUInt8));
    }
/**
    // p521FromBytes deserializes a field element NOT in the Montgomery domain from bytes in little-endian order.
    //
    // Preconditions:
    //   0 ≤ bytes_eval arg1 < m
    // Postconditions:
    //   eval out1 mod m = bytes_eval arg1 mod m
    //   0 ≤ eval out1 < m
    //
    // Input Bounds:
    //   arg1: [[0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0xff], [0x0 ~> 0x1]]
    // Output Bounds:
    //   out1: [[0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0xffffffffffffffff], [0x0 ~> 0x1ff]]
**/
function _p521FromBytes(_out1:GoArray<GoUInt64>, _arg1:GoArray<GoUInt8>):Void {
        var _x1:GoUInt64 = ((((((_arg1 != null ? _arg1[((65 : GoInt))] : ((0 : GoUInt8))) : T_p521Uint1)) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x2:GoUInt8 = (_arg1 != null ? _arg1[((64 : GoInt))] : ((0 : GoUInt8)));
        var _x3:GoUInt64 = ((((_arg1 != null ? _arg1[((63 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x4:GoUInt64 = ((((_arg1 != null ? _arg1[((62 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x5:GoUInt64 = ((((_arg1 != null ? _arg1[((61 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x6:GoUInt64 = ((((_arg1 != null ? _arg1[((60 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x7:GoUInt64 = ((((_arg1 != null ? _arg1[((59 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x8:GoUInt64 = ((((_arg1 != null ? _arg1[((58 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x9:GoUInt64 = ((((_arg1 != null ? _arg1[((57 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x10:GoUInt8 = (_arg1 != null ? _arg1[((56 : GoInt))] : ((0 : GoUInt8)));
        var _x11:GoUInt64 = ((((_arg1 != null ? _arg1[((55 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x12:GoUInt64 = ((((_arg1 != null ? _arg1[((54 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x13:GoUInt64 = ((((_arg1 != null ? _arg1[((53 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x14:GoUInt64 = ((((_arg1 != null ? _arg1[((52 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x15:GoUInt64 = ((((_arg1 != null ? _arg1[((51 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x16:GoUInt64 = ((((_arg1 != null ? _arg1[((50 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x17:GoUInt64 = ((((_arg1 != null ? _arg1[((49 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x18:GoUInt8 = (_arg1 != null ? _arg1[((48 : GoInt))] : ((0 : GoUInt8)));
        var _x19:GoUInt64 = ((((_arg1 != null ? _arg1[((47 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x20:GoUInt64 = ((((_arg1 != null ? _arg1[((46 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x21:GoUInt64 = ((((_arg1 != null ? _arg1[((45 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x22:GoUInt64 = ((((_arg1 != null ? _arg1[((44 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x23:GoUInt64 = ((((_arg1 != null ? _arg1[((43 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x24:GoUInt64 = ((((_arg1 != null ? _arg1[((42 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x25:GoUInt64 = ((((_arg1 != null ? _arg1[((41 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x26:GoUInt8 = (_arg1 != null ? _arg1[((40 : GoInt))] : ((0 : GoUInt8)));
        var _x27:GoUInt64 = ((((_arg1 != null ? _arg1[((39 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x28:GoUInt64 = ((((_arg1 != null ? _arg1[((38 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x29:GoUInt64 = ((((_arg1 != null ? _arg1[((37 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x30:GoUInt64 = ((((_arg1 != null ? _arg1[((36 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x31:GoUInt64 = ((((_arg1 != null ? _arg1[((35 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x32:GoUInt64 = ((((_arg1 != null ? _arg1[((34 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x33:GoUInt64 = ((((_arg1 != null ? _arg1[((33 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x34:GoUInt8 = (_arg1 != null ? _arg1[((32 : GoInt))] : ((0 : GoUInt8)));
        var _x35:GoUInt64 = ((((_arg1 != null ? _arg1[((31 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x36:GoUInt64 = ((((_arg1 != null ? _arg1[((30 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x37:GoUInt64 = ((((_arg1 != null ? _arg1[((29 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x38:GoUInt64 = ((((_arg1 != null ? _arg1[((28 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x39:GoUInt64 = ((((_arg1 != null ? _arg1[((27 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x40:GoUInt64 = ((((_arg1 != null ? _arg1[((26 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x41:GoUInt64 = ((((_arg1 != null ? _arg1[((25 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x42:GoUInt8 = (_arg1 != null ? _arg1[((24 : GoInt))] : ((0 : GoUInt8)));
        var _x43:GoUInt64 = ((((_arg1 != null ? _arg1[((23 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x44:GoUInt64 = ((((_arg1 != null ? _arg1[((22 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x45:GoUInt64 = ((((_arg1 != null ? _arg1[((21 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x46:GoUInt64 = ((((_arg1 != null ? _arg1[((20 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x47:GoUInt64 = ((((_arg1 != null ? _arg1[((19 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x48:GoUInt64 = ((((_arg1 != null ? _arg1[((18 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x49:GoUInt64 = ((((_arg1 != null ? _arg1[((17 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x50:GoUInt8 = (_arg1 != null ? _arg1[((16 : GoInt))] : ((0 : GoUInt8)));
        var _x51:GoUInt64 = ((((_arg1 != null ? _arg1[((15 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x52:GoUInt64 = ((((_arg1 != null ? _arg1[((14 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x53:GoUInt64 = ((((_arg1 != null ? _arg1[((13 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x54:GoUInt64 = ((((_arg1 != null ? _arg1[((12 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x55:GoUInt64 = ((((_arg1 != null ? _arg1[((11 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x56:GoUInt64 = ((((_arg1 != null ? _arg1[((10 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x57:GoUInt64 = ((((_arg1 != null ? _arg1[((9 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x58:GoUInt8 = (_arg1 != null ? _arg1[((8 : GoInt))] : ((0 : GoUInt8)));
        var _x59:GoUInt64 = ((((_arg1 != null ? _arg1[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        var _x60:GoUInt64 = ((((_arg1 != null ? _arg1[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)));
        var _x61:GoUInt64 = ((((_arg1 != null ? _arg1[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)));
        var _x62:GoUInt64 = ((((_arg1 != null ? _arg1[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)));
        var _x63:GoUInt64 = ((((_arg1 != null ? _arg1[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)));
        var _x64:GoUInt64 = ((((_arg1 != null ? _arg1[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)));
        var _x65:GoUInt64 = ((((_arg1 != null ? _arg1[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)));
        var _x66:GoUInt8 = (_arg1 != null ? _arg1[((0 : GoInt))] : ((0 : GoUInt8)));
        var _x67:GoUInt64 = (_x65 + ((_x66 : GoUInt64)));
        var _x68:GoUInt64 = (_x64 + _x67);
        var _x69:GoUInt64 = (_x63 + _x68);
        var _x70:GoUInt64 = (_x62 + _x69);
        var _x71:GoUInt64 = (_x61 + _x70);
        var _x72:GoUInt64 = (_x60 + _x71);
        var _x73:GoUInt64 = (_x59 + _x72);
        var _x74:GoUInt64 = (_x57 + ((_x58 : GoUInt64)));
        var _x75:GoUInt64 = (_x56 + _x74);
        var _x76:GoUInt64 = (_x55 + _x75);
        var _x77:GoUInt64 = (_x54 + _x76);
        var _x78:GoUInt64 = (_x53 + _x77);
        var _x79:GoUInt64 = (_x52 + _x78);
        var _x80:GoUInt64 = (_x51 + _x79);
        var _x81:GoUInt64 = (_x49 + ((_x50 : GoUInt64)));
        var _x82:GoUInt64 = (_x48 + _x81);
        var _x83:GoUInt64 = (_x47 + _x82);
        var _x84:GoUInt64 = (_x46 + _x83);
        var _x85:GoUInt64 = (_x45 + _x84);
        var _x86:GoUInt64 = (_x44 + _x85);
        var _x87:GoUInt64 = (_x43 + _x86);
        var _x88:GoUInt64 = (_x41 + ((_x42 : GoUInt64)));
        var _x89:GoUInt64 = (_x40 + _x88);
        var _x90:GoUInt64 = (_x39 + _x89);
        var _x91:GoUInt64 = (_x38 + _x90);
        var _x92:GoUInt64 = (_x37 + _x91);
        var _x93:GoUInt64 = (_x36 + _x92);
        var _x94:GoUInt64 = (_x35 + _x93);
        var _x95:GoUInt64 = (_x33 + ((_x34 : GoUInt64)));
        var _x96:GoUInt64 = (_x32 + _x95);
        var _x97:GoUInt64 = (_x31 + _x96);
        var _x98:GoUInt64 = (_x30 + _x97);
        var _x99:GoUInt64 = (_x29 + _x98);
        var _x100:GoUInt64 = (_x28 + _x99);
        var _x101:GoUInt64 = (_x27 + _x100);
        var _x102:GoUInt64 = (_x25 + ((_x26 : GoUInt64)));
        var _x103:GoUInt64 = (_x24 + _x102);
        var _x104:GoUInt64 = (_x23 + _x103);
        var _x105:GoUInt64 = (_x22 + _x104);
        var _x106:GoUInt64 = (_x21 + _x105);
        var _x107:GoUInt64 = (_x20 + _x106);
        var _x108:GoUInt64 = (_x19 + _x107);
        var _x109:GoUInt64 = (_x17 + ((_x18 : GoUInt64)));
        var _x110:GoUInt64 = (_x16 + _x109);
        var _x111:GoUInt64 = (_x15 + _x110);
        var _x112:GoUInt64 = (_x14 + _x111);
        var _x113:GoUInt64 = (_x13 + _x112);
        var _x114:GoUInt64 = (_x12 + _x113);
        var _x115:GoUInt64 = (_x11 + _x114);
        var _x116:GoUInt64 = (_x9 + ((_x10 : GoUInt64)));
        var _x117:GoUInt64 = (_x8 + _x116);
        var _x118:GoUInt64 = (_x7 + _x117);
        var _x119:GoUInt64 = (_x6 + _x118);
        var _x120:GoUInt64 = (_x5 + _x119);
        var _x121:GoUInt64 = (_x4 + _x120);
        var _x122:GoUInt64 = (_x3 + _x121);
        var _x123:GoUInt64 = (_x1 + ((_x2 : GoUInt64)));
        if (_out1 != null) _out1[((0 : GoInt))] = _x73;
        if (_out1 != null) _out1[((1 : GoInt))] = _x80;
        if (_out1 != null) _out1[((2 : GoInt))] = _x87;
        if (_out1 != null) _out1[((3 : GoInt))] = _x94;
        if (_out1 != null) _out1[((4 : GoInt))] = _x101;
        if (_out1 != null) _out1[((5 : GoInt))] = _x108;
        if (_out1 != null) _out1[((6 : GoInt))] = _x115;
        if (_out1 != null) _out1[((7 : GoInt))] = _x122;
        if (_out1 != null) _out1[((8 : GoInt))] = _x123;
    }
@:keep class P224Element_static_extension {
    /**
        // Invert sets e = 1/x, and returns e.
        //
        // If x == 0, Invert returns e = 0.
    **/
    @:keep
    public static function invert( _e:P224Element, _x:P224Element):P224Element {
        var _z:Ref<P224Element> = new P224Element().set(_e);
        var _t0:Ref<P224Element> = new P224Element();
        var _t1:Ref<P224Element> = new P224Element();
        var _t2:Ref<P224Element> = new P224Element();
        _z.square(_x);
        _t0.mul(_x, _z);
        _z.square(_t0);
        _z.mul(_x, _z);
        _t1.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((3 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _t1.mul(_z, _t1);
        _t2.square(_t1);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((6 : GoInt)), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((2 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        _t1.square(_t0);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((3 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _z.mul(_z, _t1);
        _t1.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((14 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        _t1.square(_t0);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((17 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _z.mul(_z, _t1);
        _t1.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((48 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _z.mul(_z, _t1);
        _t1.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((31 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((97 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        return _e.set(_z);
    }
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public static function select( _v:P224Element, _a:P224Element, _b:P224Element, _cond:GoInt):P224Element {
        _p224Selectznz(((_v._x : T_p224UntypedFieldElement)), ((_cond : T_p224Uint1)), ((_b._x : T_p224UntypedFieldElement)), ((_a._x : T_p224UntypedFieldElement)));
        return _v;
    }
    /**
        // Square sets e = t * t, and returns e.
    **/
    @:keep
    public static function square( _e:P224Element, _t:P224Element):P224Element {
        _p224Square(_e._x, _t._x);
        return _e;
    }
    /**
        // Mul sets e = t1 * t2, and returns e.
    **/
    @:keep
    public static function mul( _e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        _p224Mul(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // Sub sets e = t1 - t2, and returns e.
    **/
    @:keep
    public static function sub( _e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        _p224Sub(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // Add sets e = t1 + t2, and returns e.
    **/
    @:keep
    public static function add( _e:P224Element, _t1:P224Element, _t2:P224Element):P224Element {
        _p224Add(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // SetBytes sets e = v, where v is a big-endian 28-byte encoding, and returns e.
        // If v is not 28 bytes or it encodes a value higher than 2^224 - 2^96 + 1,
        // SetBytes returns nil and an error, and e is unchanged.
    **/
    @:keep
    public static function setBytes( _e:P224Element, _v:Slice<GoByte>):{ var _0 : P224Element; var _1 : Error; } {
        if ((_v != null ? _v.length : ((0 : GoInt))) != ((28 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P224Element encoding" : GoString)))) };
        };
        for (_i => _ in _v) {
            if ((_v != null ? _v[_i] : ((0 : GoUInt8))) < (_p224MinusOneEncoding != null ? _p224MinusOneEncoding[_i] : ((0 : GoUInt8)))) {
                break;
            };
            if ((_v != null ? _v[_i] : ((0 : GoUInt8))) > (_p224MinusOneEncoding != null ? _p224MinusOneEncoding[_i] : ((0 : GoUInt8)))) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P224Element encoding" : GoString)))) };
            };
        };
        var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
        Go.copySlice(((_in.__slice__(0) : Slice<GoUInt8>)), _v);
        _p224InvertEndianness(((_in.__slice__(0) : Slice<GoUInt8>)));
        var _tmp:T_p224NonMontgomeryDomainFieldElement = new T_p224NonMontgomeryDomainFieldElement();
        _p224FromBytes(((_tmp : T_p224UntypedFieldElement)), _in);
        _p224ToMontgomery(_e._x, _tmp);
        return { _0 : _e, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _bytes( _e:P224Element, _out:GoArray<GoByte>):Slice<GoByte> {
        var _tmp:T_p224NonMontgomeryDomainFieldElement = new T_p224NonMontgomeryDomainFieldElement();
        _p224FromMontgomery(_tmp, _e._x);
        _p224ToBytes(_out, ((_tmp : T_p224UntypedFieldElement)));
        _p224InvertEndianness(((_out.__slice__(0) : Slice<GoUInt8>)));
        return ((_out.__slice__(0) : Slice<GoUInt8>));
    }
    /**
        // Bytes returns the 28-byte big-endian encoding of e.
    **/
    @:keep
    public static function bytes( _e:P224Element):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
        return _e._bytes(_out);
    }
    /**
        // Set sets e = t, and returns e.
    **/
    @:keep
    public static function set( _e:P224Element, _t:P224Element):P224Element {
        _e._x = (_t._x == null ? null : _t._x.__copy__());
        return _e;
    }
    /**
        // IsZero returns 1 if e == 0, and zero otherwise.
    **/
    @:keep
    public static function isZero( _e:P224Element):GoInt {
        var _eBytes = _e.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _p224ZeroEncoding);
    }
    /**
        // Equal returns 1 if e == t, and zero otherwise.
    **/
    @:keep
    public static function equal( _e:P224Element, _t:P224Element):GoInt {
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _tBytes);
    }
    /**
        // One sets e = 1, and returns e.
    **/
    @:keep
    public static function one( _e:P224Element):P224Element {
        _p224SetOne(_e._x);
        return _e;
    }
}
class P224Element_wrapper {
    /**
        // Invert sets e = 1/x, and returns e.
        //
        // If x == 0, Invert returns e = 0.
    **/
    @:keep
    public var invert : P224Element -> P224Element = null;
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public var select : (P224Element, P224Element, GoInt) -> P224Element = null;
    /**
        // Square sets e = t * t, and returns e.
    **/
    @:keep
    public var square : P224Element -> P224Element = null;
    /**
        // Mul sets e = t1 * t2, and returns e.
    **/
    @:keep
    public var mul : (P224Element, P224Element) -> P224Element = null;
    /**
        // Sub sets e = t1 - t2, and returns e.
    **/
    @:keep
    public var sub : (P224Element, P224Element) -> P224Element = null;
    /**
        // Add sets e = t1 + t2, and returns e.
    **/
    @:keep
    public var add : (P224Element, P224Element) -> P224Element = null;
    /**
        // SetBytes sets e = v, where v is a big-endian 28-byte encoding, and returns e.
        // If v is not 28 bytes or it encodes a value higher than 2^224 - 2^96 + 1,
        // SetBytes returns nil and an error, and e is unchanged.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : P224Element; var _1 : Error; } = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the 28-byte big-endian encoding of e.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // Set sets e = t, and returns e.
    **/
    @:keep
    public var set : P224Element -> P224Element = null;
    /**
        // IsZero returns 1 if e == 0, and zero otherwise.
    **/
    @:keep
    public var isZero : () -> GoInt = null;
    /**
        // Equal returns 1 if e == t, and zero otherwise.
    **/
    @:keep
    public var equal : P224Element -> GoInt = null;
    /**
        // One sets e = 1, and returns e.
    **/
    @:keep
    public var one : () -> P224Element = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : P224Element;
}
@:keep class P384Element_static_extension {
    /**
        // Invert sets e = 1/x, and returns e.
        //
        // If x == 0, Invert returns e = 0.
    **/
    @:keep
    public static function invert( _e:P384Element, _x:P384Element):P384Element {
        var _z:Ref<P384Element> = new P384Element().set(_e);
        var _t0:Ref<P384Element> = new P384Element();
        var _t1:Ref<P384Element> = new P384Element();
        var _t2:Ref<P384Element> = new P384Element();
        var _t3:Ref<P384Element> = new P384Element();
        _z.square(_x);
        _z.mul(_x, _z);
        _z.square(_z);
        _t1.mul(_x, _z);
        _z.square(_t1);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((3 : GoInt)), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_t1, _z);
        _t0.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((6 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _t0.mul(_z, _t0);
        _t2.square(_t0);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((12 : GoInt)), _s++, {
                _t2.square(_t2);
            });
        };
        _t0.mul(_t0, _t2);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((6 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        _t2.mul(_x, _t0);
        _t0.square(_t2);
        _t0.mul(_x, _t0);
        _t3.square(_t0);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((31 : GoInt)), _s++, {
                _t3.square(_t3);
            });
        };
        _t2.mul(_t2, _t3);
        _t3.square(_t2);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((63 : GoInt)), _s++, {
                _t3.square(_t3);
            });
        };
        _t2.mul(_t2, _t3);
        _t3.square(_t2);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((126 : GoInt)), _s++, {
                _t3.square(_t3);
            });
        };
        _t2.mul(_t2, _t3);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((3 : GoInt)), _s++, {
                _t2.square(_t2);
            });
        };
        _t1.mul(_t1, _t2);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((33 : GoInt)), _s++, {
                _t1.square(_t1);
            });
        };
        _t0.mul(_t0, _t1);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((94 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((2 : GoInt)), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_x, _z);
        return _e.set(_z);
    }
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public static function select( _v:P384Element, _a:P384Element, _b:P384Element, _cond:GoInt):P384Element {
        _p384Selectznz(((_v._x : T_p384UntypedFieldElement)), ((_cond : T_p384Uint1)), ((_b._x : T_p384UntypedFieldElement)), ((_a._x : T_p384UntypedFieldElement)));
        return _v;
    }
    /**
        // Square sets e = t * t, and returns e.
    **/
    @:keep
    public static function square( _e:P384Element, _t:P384Element):P384Element {
        _p384Square(_e._x, _t._x);
        return _e;
    }
    /**
        // Mul sets e = t1 * t2, and returns e.
    **/
    @:keep
    public static function mul( _e:P384Element, _t1:P384Element, _t2:P384Element):P384Element {
        _p384Mul(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // Sub sets e = t1 - t2, and returns e.
    **/
    @:keep
    public static function sub( _e:P384Element, _t1:P384Element, _t2:P384Element):P384Element {
        _p384Sub(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // Add sets e = t1 + t2, and returns e.
    **/
    @:keep
    public static function add( _e:P384Element, _t1:P384Element, _t2:P384Element):P384Element {
        _p384Add(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // SetBytes sets e = v, where v is a big-endian 48-byte encoding, and returns e.
        // If v is not 48 bytes or it encodes a value higher than 2^384 - 2^128 - 2^96 + 2^32 - 1,
        // SetBytes returns nil and an error, and e is unchanged.
    **/
    @:keep
    public static function setBytes( _e:P384Element, _v:Slice<GoByte>):{ var _0 : P384Element; var _1 : Error; } {
        if ((_v != null ? _v.length : ((0 : GoInt))) != ((48 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P384Element encoding" : GoString)))) };
        };
        for (_i => _ in _v) {
            if ((_v != null ? _v[_i] : ((0 : GoUInt8))) < (_p384MinusOneEncoding != null ? _p384MinusOneEncoding[_i] : ((0 : GoUInt8)))) {
                break;
            };
            if ((_v != null ? _v[_i] : ((0 : GoUInt8))) > (_p384MinusOneEncoding != null ? _p384MinusOneEncoding[_i] : ((0 : GoUInt8)))) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P384Element encoding" : GoString)))) };
            };
        };
        var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 48) ((0 : GoUInt8))]);
        Go.copySlice(((_in.__slice__(0) : Slice<GoUInt8>)), _v);
        _p384InvertEndianness(((_in.__slice__(0) : Slice<GoUInt8>)));
        var _tmp:T_p384NonMontgomeryDomainFieldElement = new T_p384NonMontgomeryDomainFieldElement();
        _p384FromBytes(((_tmp : T_p384UntypedFieldElement)), _in);
        _p384ToMontgomery(_e._x, _tmp);
        return { _0 : _e, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _bytes( _e:P384Element, _out:GoArray<GoByte>):Slice<GoByte> {
        var _tmp:T_p384NonMontgomeryDomainFieldElement = new T_p384NonMontgomeryDomainFieldElement();
        _p384FromMontgomery(_tmp, _e._x);
        _p384ToBytes(_out, ((_tmp : T_p384UntypedFieldElement)));
        _p384InvertEndianness(((_out.__slice__(0) : Slice<GoUInt8>)));
        return ((_out.__slice__(0) : Slice<GoUInt8>));
    }
    /**
        // Bytes returns the 48-byte big-endian encoding of e.
    **/
    @:keep
    public static function bytes( _e:P384Element):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 48) ((0 : GoUInt8))]);
        return _e._bytes(_out);
    }
    /**
        // Set sets e = t, and returns e.
    **/
    @:keep
    public static function set( _e:P384Element, _t:P384Element):P384Element {
        _e._x = (_t._x == null ? null : _t._x.__copy__());
        return _e;
    }
    /**
        // IsZero returns 1 if e == 0, and zero otherwise.
    **/
    @:keep
    public static function isZero( _e:P384Element):GoInt {
        var _eBytes = _e.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _p384ZeroEncoding);
    }
    /**
        // Equal returns 1 if e == t, and zero otherwise.
    **/
    @:keep
    public static function equal( _e:P384Element, _t:P384Element):GoInt {
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _tBytes);
    }
    /**
        // One sets e = 1, and returns e.
    **/
    @:keep
    public static function one( _e:P384Element):P384Element {
        _p384SetOne(_e._x);
        return _e;
    }
}
class P384Element_wrapper {
    /**
        // Invert sets e = 1/x, and returns e.
        //
        // If x == 0, Invert returns e = 0.
    **/
    @:keep
    public var invert : P384Element -> P384Element = null;
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public var select : (P384Element, P384Element, GoInt) -> P384Element = null;
    /**
        // Square sets e = t * t, and returns e.
    **/
    @:keep
    public var square : P384Element -> P384Element = null;
    /**
        // Mul sets e = t1 * t2, and returns e.
    **/
    @:keep
    public var mul : (P384Element, P384Element) -> P384Element = null;
    /**
        // Sub sets e = t1 - t2, and returns e.
    **/
    @:keep
    public var sub : (P384Element, P384Element) -> P384Element = null;
    /**
        // Add sets e = t1 + t2, and returns e.
    **/
    @:keep
    public var add : (P384Element, P384Element) -> P384Element = null;
    /**
        // SetBytes sets e = v, where v is a big-endian 48-byte encoding, and returns e.
        // If v is not 48 bytes or it encodes a value higher than 2^384 - 2^128 - 2^96 + 2^32 - 1,
        // SetBytes returns nil and an error, and e is unchanged.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : P384Element; var _1 : Error; } = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the 48-byte big-endian encoding of e.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // Set sets e = t, and returns e.
    **/
    @:keep
    public var set : P384Element -> P384Element = null;
    /**
        // IsZero returns 1 if e == 0, and zero otherwise.
    **/
    @:keep
    public var isZero : () -> GoInt = null;
    /**
        // Equal returns 1 if e == t, and zero otherwise.
    **/
    @:keep
    public var equal : P384Element -> GoInt = null;
    /**
        // One sets e = 1, and returns e.
    **/
    @:keep
    public var one : () -> P384Element = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : P384Element;
}
@:keep class P521Element_static_extension {
    /**
        // Invert sets e = 1/x, and returns e.
        //
        // If x == 0, Invert returns e = 0.
    **/
    @:keep
    public static function invert( _e:P521Element, _x:P521Element):P521Element {
        var _z:Ref<P521Element> = new P521Element().set(_e);
        var _t0:Ref<P521Element> = new P521Element();
        _z.square(_x);
        _z.mul(_x, _z);
        _t0.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((2 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((4 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((8 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((16 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        {
            var _s:GoInt = ((1 : GoInt));
            Go.cfor(_s < ((32 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        _t0.mul(_x, _t0);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((64 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        _t0.mul(_x, _t0);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((129 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        _t0.square(_z);
        _t0.mul(_x, _t0);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((259 : GoInt)), _s++, {
                _t0.square(_t0);
            });
        };
        _z.mul(_z, _t0);
        {
            var _s:GoInt = ((0 : GoInt));
            Go.cfor(_s < ((2 : GoInt)), _s++, {
                _z.square(_z);
            });
        };
        _z.mul(_x, _z);
        return _e.set(_z);
    }
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public static function select( _v:P521Element, _a:P521Element, _b:P521Element, _cond:GoInt):P521Element {
        _p521Selectznz(((_v._x : T_p521UntypedFieldElement)), ((_cond : T_p521Uint1)), ((_b._x : T_p521UntypedFieldElement)), ((_a._x : T_p521UntypedFieldElement)));
        return _v;
    }
    /**
        // Square sets e = t * t, and returns e.
    **/
    @:keep
    public static function square( _e:P521Element, _t:P521Element):P521Element {
        _p521Square(_e._x, _t._x);
        return _e;
    }
    /**
        // Mul sets e = t1 * t2, and returns e.
    **/
    @:keep
    public static function mul( _e:P521Element, _t1:P521Element, _t2:P521Element):P521Element {
        _p521Mul(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // Sub sets e = t1 - t2, and returns e.
    **/
    @:keep
    public static function sub( _e:P521Element, _t1:P521Element, _t2:P521Element):P521Element {
        _p521Sub(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // Add sets e = t1 + t2, and returns e.
    **/
    @:keep
    public static function add( _e:P521Element, _t1:P521Element, _t2:P521Element):P521Element {
        _p521Add(_e._x, _t1._x, _t2._x);
        return _e;
    }
    /**
        // SetBytes sets e = v, where v is a big-endian 66-byte encoding, and returns e.
        // If v is not 66 bytes or it encodes a value higher than 2^521 - 1,
        // SetBytes returns nil and an error, and e is unchanged.
    **/
    @:keep
    public static function setBytes( _e:P521Element, _v:Slice<GoByte>):{ var _0 : P521Element; var _1 : Error; } {
        if ((_v != null ? _v.length : ((0 : GoInt))) != ((66 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P521Element encoding" : GoString)))) };
        };
        for (_i => _ in _v) {
            if ((_v != null ? _v[_i] : ((0 : GoUInt8))) < (_p521MinusOneEncoding != null ? _p521MinusOneEncoding[_i] : ((0 : GoUInt8)))) {
                break;
            };
            if ((_v != null ? _v[_i] : ((0 : GoUInt8))) > (_p521MinusOneEncoding != null ? _p521MinusOneEncoding[_i] : ((0 : GoUInt8)))) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid P521Element encoding" : GoString)))) };
            };
        };
        var _in:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 66) ((0 : GoUInt8))]);
        Go.copySlice(((_in.__slice__(0) : Slice<GoUInt8>)), _v);
        _p521InvertEndianness(((_in.__slice__(0) : Slice<GoUInt8>)));
        var _tmp:T_p521NonMontgomeryDomainFieldElement = new T_p521NonMontgomeryDomainFieldElement();
        _p521FromBytes(((_tmp : T_p521UntypedFieldElement)), _in);
        _p521ToMontgomery(_e._x, _tmp);
        return { _0 : _e, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _bytes( _e:P521Element, _out:GoArray<GoByte>):Slice<GoByte> {
        var _tmp:T_p521NonMontgomeryDomainFieldElement = new T_p521NonMontgomeryDomainFieldElement();
        _p521FromMontgomery(_tmp, _e._x);
        _p521ToBytes(_out, ((_tmp : T_p521UntypedFieldElement)));
        _p521InvertEndianness(((_out.__slice__(0) : Slice<GoUInt8>)));
        return ((_out.__slice__(0) : Slice<GoUInt8>));
    }
    /**
        // Bytes returns the 66-byte big-endian encoding of e.
    **/
    @:keep
    public static function bytes( _e:P521Element):Slice<GoByte> {
        var _out:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 66) ((0 : GoUInt8))]);
        return _e._bytes(_out);
    }
    /**
        // Set sets e = t, and returns e.
    **/
    @:keep
    public static function set( _e:P521Element, _t:P521Element):P521Element {
        _e._x = (_t._x == null ? null : _t._x.__copy__());
        return _e;
    }
    /**
        // IsZero returns 1 if e == 0, and zero otherwise.
    **/
    @:keep
    public static function isZero( _e:P521Element):GoInt {
        var _eBytes = _e.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _p521ZeroEncoding);
    }
    /**
        // Equal returns 1 if e == t, and zero otherwise.
    **/
    @:keep
    public static function equal( _e:P521Element, _t:P521Element):GoInt {
        var _eBytes = _e.bytes();
        var _tBytes = _t.bytes();
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_eBytes, _tBytes);
    }
    /**
        // One sets e = 1, and returns e.
    **/
    @:keep
    public static function one( _e:P521Element):P521Element {
        _p521SetOne(_e._x);
        return _e;
    }
}
class P521Element_wrapper {
    /**
        // Invert sets e = 1/x, and returns e.
        //
        // If x == 0, Invert returns e = 0.
    **/
    @:keep
    public var invert : P521Element -> P521Element = null;
    /**
        // Select sets v to a if cond == 1, and to b if cond == 0.
    **/
    @:keep
    public var select : (P521Element, P521Element, GoInt) -> P521Element = null;
    /**
        // Square sets e = t * t, and returns e.
    **/
    @:keep
    public var square : P521Element -> P521Element = null;
    /**
        // Mul sets e = t1 * t2, and returns e.
    **/
    @:keep
    public var mul : (P521Element, P521Element) -> P521Element = null;
    /**
        // Sub sets e = t1 - t2, and returns e.
    **/
    @:keep
    public var sub : (P521Element, P521Element) -> P521Element = null;
    /**
        // Add sets e = t1 + t2, and returns e.
    **/
    @:keep
    public var add : (P521Element, P521Element) -> P521Element = null;
    /**
        // SetBytes sets e = v, where v is a big-endian 66-byte encoding, and returns e.
        // If v is not 66 bytes or it encodes a value higher than 2^521 - 1,
        // SetBytes returns nil and an error, and e is unchanged.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : P521Element; var _1 : Error; } = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the 66-byte big-endian encoding of e.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // Set sets e = t, and returns e.
    **/
    @:keep
    public var set : P521Element -> P521Element = null;
    /**
        // IsZero returns 1 if e == 0, and zero otherwise.
    **/
    @:keep
    public var isZero : () -> GoInt = null;
    /**
        // Equal returns 1 if e == t, and zero otherwise.
    **/
    @:keep
    public var equal : P521Element -> GoInt = null;
    /**
        // One sets e = 1, and returns e.
    **/
    @:keep
    public var one : () -> P521Element = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : P521Element;
}
