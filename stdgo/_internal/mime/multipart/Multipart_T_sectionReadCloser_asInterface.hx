package stdgo._internal.mime.multipart;
class T_sectionReadCloser_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:embedded
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:embedded
    public dynamic function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_p, _off);
    @:embedded
    public dynamic function read(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_d);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
