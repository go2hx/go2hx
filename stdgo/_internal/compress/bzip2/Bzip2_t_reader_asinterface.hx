package stdgo._internal.compress.bzip2;
class T_reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readBlock():stdgo.Error return @:_0 __self__.value._readBlock();
    @:keep
    @:tdfield
    public dynamic function _read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._read(_buf);
    @:keep
    @:tdfield
    public dynamic function _readFromBlock(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value._readFromBlock(_buf);
    @:keep
    @:tdfield
    public dynamic function read(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_buf);
    @:keep
    @:tdfield
    public dynamic function _setup(_needMagic:Bool):stdgo.Error return @:_0 __self__.value._setup(_needMagic);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.bzip2.Bzip2_t_readerpointer.T_readerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
