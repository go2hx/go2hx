package stdgo._internal.net.http;
class T_connLRU_asInterface {
    @:keep
    @:tdfield
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    @:keep
    @:tdfield
    public dynamic function _remove(_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void @:_0 __self__.value._remove(_pc);
    @:keep
    @:tdfield
    public dynamic function _removeOldest():stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> return @:_0 __self__.value._removeOldest();
    @:keep
    @:tdfield
    public dynamic function _add(_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void @:_0 __self__.value._add(_pc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_connLRUPointer.T_connLRUPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
