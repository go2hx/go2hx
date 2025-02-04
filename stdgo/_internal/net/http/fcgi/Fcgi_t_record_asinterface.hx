package stdgo._internal.net.http.fcgi;
class T_record_asInterface {
    @:keep
    @:tdfield
    public dynamic function _content():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._content();
    @:keep
    @:tdfield
    public dynamic function _read(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Error return @:_0 __self__.value._read(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.fcgi.Fcgi_t_recordpointer.T_recordPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
