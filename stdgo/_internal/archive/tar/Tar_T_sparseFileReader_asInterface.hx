package stdgo._internal.archive.tar;
class T_sparseFileReader_asInterface {
    @:keep
    public dynamic function _physicalRemaining():stdgo.GoInt64 return __self__.value._physicalRemaining();
    @:keep
    public dynamic function _logicalRemaining():stdgo.GoInt64 return __self__.value._logicalRemaining();
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.archive.tar.Tar_T_sparseFileReader.T_sparseFileReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
