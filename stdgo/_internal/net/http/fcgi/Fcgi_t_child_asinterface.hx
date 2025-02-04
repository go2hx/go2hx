package stdgo._internal.net.http.fcgi;
class T_child_asInterface {
    @:keep
    @:tdfield
    public dynamic function _cleanUp():Void @:_0 __self__.value._cleanUp();
    @:keep
    @:tdfield
    public dynamic function _serveRequest(_req:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>, _body:stdgo._internal.io.Io_readcloser.ReadCloser):Void @:_0 __self__.value._serveRequest(_req, _body);
    @:keep
    @:tdfield
    public dynamic function _handleRecord(_rec:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_record.T_record>):stdgo.Error return @:_0 __self__.value._handleRecord(_rec);
    @:keep
    @:tdfield
    public dynamic function _serve():Void @:_0 __self__.value._serve();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.fcgi.Fcgi_t_childpointer.T_childPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
