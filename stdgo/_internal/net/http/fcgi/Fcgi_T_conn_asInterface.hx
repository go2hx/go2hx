package stdgo._internal.net.http.fcgi;
class T_conn_asInterface {
    @:keep
    public dynamic function _writePairs(_recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16, _pairs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error return __self__.value._writePairs(_recType, _reqId, _pairs);
    @:keep
    public dynamic function _writeEndRequest(_reqId:stdgo.GoUInt16, _appStatus:stdgo.GoInt, _protocolStatus:stdgo.GoUInt8):stdgo.Error return __self__.value._writeEndRequest(_reqId, _appStatus, _protocolStatus);
    @:keep
    public dynamic function _writeRecord(_recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._writeRecord(_recType, _reqId, _b);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
