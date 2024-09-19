package stdgo._internal.net.http;
class T_wantConn_asInterface {
    @:keep
    public dynamic function _cancel(_t:stdgo.Ref<stdgo._internal.net.http.Http_Transport.Transport>, _err:stdgo.Error):Void __self__.value._cancel(_t, _err);
    @:keep
    public dynamic function _tryDeliver(_pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, _err:stdgo.Error):Bool return __self__.value._tryDeliver(_pc, _err);
    @:keep
    public dynamic function _waiting():Bool return __self__.value._waiting();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
