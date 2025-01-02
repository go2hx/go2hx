package stdgo._internal.net.http;
class T_transferReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _parseTransferEncoding():stdgo.Error return @:_0 __self__.value._parseTransferEncoding();
    @:keep
    @:tdfield
    public dynamic function _protoAtLeast(_m:stdgo.GoInt, _n:stdgo.GoInt):Bool return @:_0 __self__.value._protoAtLeast(_m, _n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_transferReaderPointer.T_transferReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
