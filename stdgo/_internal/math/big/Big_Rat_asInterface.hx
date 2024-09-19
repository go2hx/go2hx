package stdgo._internal.math.big;
class Rat_asInterface {
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function gobDecode(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.gobDecode(_buf);
    @:keep
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.gobEncode();
    @:keep
    public dynamic function floatString(_prec:stdgo.GoInt):stdgo.GoString return __self__.value.floatString(_prec);
    @:keep
    public dynamic function ratString():stdgo.GoString return __self__.value.ratString();
    @:keep
    public dynamic function _marshal():stdgo.Slice<stdgo.GoUInt8> return __self__.value._marshal();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function setString(_s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>; var _1 : Bool; } return __self__.value.setString(_s);
    @:keep
    public dynamic function scan(_s:stdgo._internal.fmt.Fmt_ScanState.ScanState, _ch:stdgo.GoInt32):stdgo.Error return __self__.value.scan(_s, _ch);
    @:keep
    public dynamic function quo(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.quo(_x, _y);
    @:keep
    public dynamic function mul(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.mul(_x, _y);
    @:keep
    public dynamic function sub(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.sub(_x, _y);
    @:keep
    public dynamic function add(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.add(_x, _y);
    @:keep
    public dynamic function cmp(_y:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.GoInt return __self__.value.cmp(_y);
    @:keep
    public dynamic function _norm():stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value._norm();
    @:keep
    public dynamic function denom():stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.denom();
    @:keep
    public dynamic function num():stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> return __self__.value.num();
    @:keep
    public dynamic function isInt():Bool return __self__.value.isInt();
    @:keep
    public dynamic function sign():stdgo.GoInt return __self__.value.sign();
    @:keep
    public dynamic function inv(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.inv(_x);
    @:keep
    public dynamic function neg(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.neg(_x);
    @:keep
    public dynamic function abs(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.abs(_x);
    @:keep
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.set(_x);
    @:keep
    public dynamic function setUint64(_x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.setUint64(_x);
    @:keep
    public dynamic function setInt64(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.setInt64(_x);
    @:keep
    public dynamic function setInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.setInt(_x);
    @:keep
    public dynamic function setFrac64(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.setFrac64(_a, _b);
    @:keep
    public dynamic function setFrac(_a:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.setFrac(_a, _b);
    @:keep
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : Bool; } return __self__.value.float64();
    @:keep
    public dynamic function float32():{ var _0 : stdgo.GoFloat32; var _1 : Bool; } return __self__.value.float32();
    @:keep
    public dynamic function setFloat64(_f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value.setFloat64(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.big.Big_Rat.Rat>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
