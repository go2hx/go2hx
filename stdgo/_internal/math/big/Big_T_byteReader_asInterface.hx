package stdgo._internal.math.big;
class T_byteReader_asInterface {
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value.width();
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function token(_skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.token(_skipSpace, _f);
    @:embedded
    public dynamic function skipSpace():Void __self__.value.skipSpace();
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.big.Big_T_byteReader.T_byteReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
