package stdgo._internal.io;
class PipeReader_asInterface {
    @:keep
    public dynamic function closeWithError(_err:stdgo.Error):stdgo.Error return __self__.value.closeWithError(_err);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.io.Io_PipeReader.PipeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
