package stdgo._internal.net.http;
class T_chunkWriter_asInterface {
    @:keep
    public dynamic function _writeHeader(_p:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._writeHeader(_p);
    @:keep
    public dynamic function _close():Void __self__.value._close();
    @:keep
    public dynamic function _flush():stdgo.Error return __self__.value._flush();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
