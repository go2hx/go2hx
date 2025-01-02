package stdgo._internal.net.http;
class T_wantConnQueue_asInterface {
    @:keep
    @:tdfield
    public dynamic function _cleanFront():Bool return @:_0 __self__.value._cleanFront();
    @:keep
    @:tdfield
    public dynamic function _peekFront():stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> return @:_0 __self__.value._peekFront();
    @:keep
    @:tdfield
    public dynamic function _popFront():stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> return @:_0 __self__.value._popFront();
    @:keep
    @:tdfield
    public dynamic function _pushBack(_w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void @:_0 __self__.value._pushBack(_w);
    @:keep
    @:tdfield
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_wantConnQueuePointer.T_wantConnQueuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
