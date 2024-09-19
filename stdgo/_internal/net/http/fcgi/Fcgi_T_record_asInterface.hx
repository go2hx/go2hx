package stdgo._internal.net.http.fcgi;
class T_record_asInterface {
    @:keep
    public dynamic function _content():stdgo.Slice<stdgo.GoUInt8> return __self__.value._content();
    @:keep
    public dynamic function _read(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error return __self__.value._read(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.fcgi.Fcgi_T_record.T_record>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
