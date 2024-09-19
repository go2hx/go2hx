package stdgo._internal.net.http;
class T_connLRU_asInterface {
    @:keep
    public dynamic function _len():stdgo.GoInt return __self__.value._len();
    @:keep
    public dynamic function _remove(_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void __self__.value._remove(_pc);
    @:keep
    public dynamic function _removeOldest():stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> return __self__.value._removeOldest();
    @:keep
    public dynamic function _add(_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void __self__.value._add(_pc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
