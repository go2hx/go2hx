package stdgo._internal.net.http.fcgi;
class T_child_asInterface {
    @:keep
    public dynamic function _cleanUp():Void __self__.value._cleanUp();
    @:keep
    public dynamic function _serveRequest(_req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>, _body:stdgo._internal.io.Io_ReadCloser.ReadCloser):Void __self__.value._serveRequest(_req, _body);
    @:keep
    public dynamic function _handleRecord(_rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>):stdgo.Error return __self__.value._handleRecord(_rec);
    @:keep
    public dynamic function _serve():Void __self__.value._serve();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
