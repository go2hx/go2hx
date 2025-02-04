package stdgo._internal.math.big;
class T_byteReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function unreadByte():stdgo.Error return @:_0 __self__.value.unreadByte();
    @:keep
    @:tdfield
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value.readByte();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value.width();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function token(_0:Bool, _1:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.token(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function skipSpace():Void @:_0 __self__.value.skipSpace();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t_bytereaderpointer.T_byteReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
