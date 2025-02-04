package stdgo._internal.net.http.fcgi;
class T_conn_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writePairs(_recType:stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType, _reqId:stdgo.GoUInt16, _pairs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error return @:_0 __self__.value._writePairs(_recType, _reqId, _pairs);
    @:keep
    @:tdfield
    public dynamic function _writeEndRequest(_reqId:stdgo.GoUInt16, _appStatus:stdgo.GoInt, _protocolStatus:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value._writeEndRequest(_reqId, _appStatus, _protocolStatus);
    @:keep
    @:tdfield
    public dynamic function _writeRecord(_recType:stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType, _reqId:stdgo.GoUInt16, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeRecord(_recType, _reqId, _b);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.fcgi.Fcgi_t_connpointer.T_connPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
