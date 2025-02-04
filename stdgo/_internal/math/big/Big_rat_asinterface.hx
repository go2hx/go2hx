package stdgo._internal.math.big;
class Rat_asInterface {
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_text);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function gobDecode(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.gobDecode(_buf);
    @:keep
    @:tdfield
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.gobEncode();
    @:keep
    @:tdfield
    public dynamic function floatString(_prec:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value.floatString(_prec);
    @:keep
    @:tdfield
    public dynamic function ratString():stdgo.GoString return @:_0 __self__.value.ratString();
    @:keep
    @:tdfield
    public dynamic function _marshal():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._marshal();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function setString(_s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>; var _1 : Bool; } return @:_0 __self__.value.setString(_s);
    @:keep
    @:tdfield
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error return @:_0 __self__.value.scan(_s, _ch);
    @:keep
    @:tdfield
    public dynamic function quo(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.quo(_x, _y);
    @:keep
    @:tdfield
    public dynamic function mul(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.mul(_x, _y);
    @:keep
    @:tdfield
    public dynamic function sub(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.sub(_x, _y);
    @:keep
    @:tdfield
    public dynamic function add(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.add(_x, _y);
    @:keep
    @:tdfield
    public dynamic function cmp(_y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoInt return @:_0 __self__.value.cmp(_y);
    @:keep
    @:tdfield
    public dynamic function _norm():stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value._norm();
    @:keep
    @:tdfield
    public dynamic function denom():stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.denom();
    @:keep
    @:tdfield
    public dynamic function num():stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value.num();
    @:keep
    @:tdfield
    public dynamic function isInt():Bool return @:_0 __self__.value.isInt();
    @:keep
    @:tdfield
    public dynamic function sign():stdgo.GoInt return @:_0 __self__.value.sign();
    @:keep
    @:tdfield
    public dynamic function inv(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.inv(_x);
    @:keep
    @:tdfield
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.neg(_x);
    @:keep
    @:tdfield
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.abs(_x);
    @:keep
    @:tdfield
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.set(_x);
    @:keep
    @:tdfield
    public dynamic function setUint64(_x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.setUint64(_x);
    @:keep
    @:tdfield
    public dynamic function setInt64(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.setInt64(_x);
    @:keep
    @:tdfield
    public dynamic function setInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.setInt(_x);
    @:keep
    @:tdfield
    public dynamic function setFrac64(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.setFrac64(_a, _b);
    @:keep
    @:tdfield
    public dynamic function setFrac(_a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.setFrac(_a, _b);
    @:keep
    @:tdfield
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return @:_0 __self__.value.float64();
    @:keep
    @:tdfield
    public dynamic function float32():{ var _0 : stdgo.GoFloat32; var _1 : Bool; } return @:_0 __self__.value.float32();
    @:keep
    @:tdfield
    public dynamic function setFloat64(_f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value.setFloat64(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_ratpointer.RatPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
