package stdgo._internal.net.http;
class T_connReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    @:keep
    @:tdfield
    public dynamic function _closeNotify():Void @:_0 __self__.value._closeNotify();
    @:keep
    @:tdfield
    public dynamic function _handleReadError(__34297:stdgo.Error):Void @:_0 __self__.value._handleReadError(__34297);
    @:keep
    @:tdfield
    public dynamic function _hitReadLimit():Bool return @:_0 __self__.value._hitReadLimit();
    @:keep
    @:tdfield
    public dynamic function _setInfiniteReadLimit():Void @:_0 __self__.value._setInfiniteReadLimit();
    @:keep
    @:tdfield
    public dynamic function _setReadLimit(_remain:stdgo.GoInt64):Void @:_0 __self__.value._setReadLimit(_remain);
    @:keep
    @:tdfield
    public dynamic function _abortPendingRead():Void @:_0 __self__.value._abortPendingRead();
    @:keep
    @:tdfield
    public dynamic function _backgroundRead():Void @:_0 __self__.value._backgroundRead();
    @:keep
    @:tdfield
    public dynamic function _startBackgroundRead():Void @:_0 __self__.value._startBackgroundRead();
    @:keep
    @:tdfield
    public dynamic function _unlock():Void @:_0 __self__.value._unlock();
    @:keep
    @:tdfield
    public dynamic function _lock():Void @:_0 __self__.value._lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_connReaderPointer.T_connReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
