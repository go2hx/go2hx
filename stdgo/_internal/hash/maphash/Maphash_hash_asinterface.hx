package stdgo._internal.hash.maphash;
class Hash_asInterface {
    @:keep
    @:tdfield
    public dynamic function blockSize():stdgo.GoInt return @:_0 __self__.value.blockSize();
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function sum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.sum(_b);
    @:keep
    @:tdfield
    public dynamic function sum64():stdgo.GoUInt64 return @:_0 __self__.value.sum64();
    @:keep
    @:tdfield
    public dynamic function _flush():Void @:_0 __self__.value._flush();
    @:keep
    @:tdfield
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    @:tdfield
    public dynamic function setSeed(_seed:stdgo._internal.hash.maphash.Maphash_seed.Seed):Void @:_0 __self__.value.setSeed(_seed);
    @:keep
    @:tdfield
    public dynamic function seed():stdgo._internal.hash.maphash.Maphash_seed.Seed return @:_0 __self__.value.seed();
    @:keep
    @:tdfield
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_s);
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function writeByte(_b:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value.writeByte(_b);
    @:keep
    @:tdfield
    public dynamic function _initSeed():Void @:_0 __self__.value._initSeed();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.hash.maphash.Maphash_hashpointer.HashPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
