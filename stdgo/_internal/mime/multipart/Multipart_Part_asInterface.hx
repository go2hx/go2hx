package stdgo._internal.mime.multipart;
class Part_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_d);
    @:keep
    public dynamic function _populateHeaders(_maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):stdgo.Error return __self__.value._populateHeaders(_maxMIMEHeaderSize, _maxMIMEHeaders);
    @:keep
    public dynamic function _parseContentDisposition():Void __self__.value._parseContentDisposition();
    @:keep
    public dynamic function fileName():stdgo.GoString return __self__.value.fileName();
    @:keep
    public dynamic function formName():stdgo.GoString return __self__.value.formName();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.mime.multipart.Multipart_Part.Part>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
