package stdgo._internal.net.http;
class T_body_asInterface {
    @:keep
    public dynamic function _registerOnHitEOF(_fn:() -> Void):Void __self__.value._registerOnHitEOF(_fn);
    @:keep
    public dynamic function _bodyRemains():Bool return __self__.value._bodyRemains();
    @:keep
    public dynamic function _didEarlyClose():Bool return __self__.value._didEarlyClose();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function _unreadDataSizeLocked():stdgo.GoInt64 return __self__.value._unreadDataSizeLocked();
    @:keep
    public dynamic function _readTrailer():stdgo.Error return __self__.value._readTrailer();
    @:keep
    public dynamic function _readLocked(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._readLocked(_p);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_body.T_body>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
