package stdgo._internal.hash.maphash;
class Hash_asInterface {
    @:keep
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize();
    @:keep
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    @:keep
    public dynamic function sum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.sum(_b);
    @:keep
    public dynamic function sum64():stdgo.GoUInt64 return __self__.value.sum64();
    @:keep
    public dynamic function _flush():Void __self__.value._flush();
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function setSeed(_seed:stdgo._internal.hash.maphash.Maphash_Seed.Seed):Void __self__.value.setSeed(_seed);
    @:keep
    public dynamic function seed():stdgo._internal.hash.maphash.Maphash_Seed.Seed return __self__.value.seed();
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function writeByte(_b:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_b);
    @:keep
    public dynamic function _initSeed():Void __self__.value._initSeed();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.hash.maphash.Maphash_Hash.Hash>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
