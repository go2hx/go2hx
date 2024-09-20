package stdgo._internal.net.http;
class T_connReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function _closeNotify():Void __self__.value._closeNotify();
    @:keep
    public dynamic function _handleReadError(__34292:stdgo.Error):Void __self__.value._handleReadError(__34292);
    @:keep
    public dynamic function _hitReadLimit():Bool return __self__.value._hitReadLimit();
    @:keep
    public dynamic function _setInfiniteReadLimit():Void __self__.value._setInfiniteReadLimit();
    @:keep
    public dynamic function _setReadLimit(_remain:stdgo.GoInt64):Void __self__.value._setReadLimit(_remain);
    @:keep
    public dynamic function _abortPendingRead():Void __self__.value._abortPendingRead();
    @:keep
    public dynamic function _backgroundRead():Void __self__.value._backgroundRead();
    @:keep
    public dynamic function _startBackgroundRead():Void __self__.value._startBackgroundRead();
    @:keep
    public dynamic function _unlock():Void __self__.value._unlock();
    @:keep
    public dynamic function _lock():Void __self__.value._lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_connReader.T_connReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
