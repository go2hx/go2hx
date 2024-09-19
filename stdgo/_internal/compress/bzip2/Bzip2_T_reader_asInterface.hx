package stdgo._internal.compress.bzip2;
class T_reader_asInterface {
    @:keep
    public dynamic function _readBlock():stdgo.Error return __self__.value._readBlock();
    @:keep
    public dynamic function _read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_buf);
    @:keep
    public dynamic function _readFromBlock(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return __self__.value._readFromBlock(_buf);
    @:keep
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    @:keep
    public dynamic function _setup(_needMagic:Bool):stdgo.Error return __self__.value._setup(_needMagic);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.bzip2.Bzip2_T_reader.T_reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
