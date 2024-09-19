package stdgo._internal.net.http.httptest;
class ResponseRecorder_asInterface {
    @:keep
    public dynamic function result():stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> return __self__.value.result();
    @:keep
    public dynamic function flush():Void __self__.value.flush();
    @:keep
    public dynamic function writeHeader(_code:stdgo.GoInt):Void __self__.value.writeHeader(_code);
    @:keep
    public dynamic function writeString(_str:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_str);
    @:keep
    public dynamic function write(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_buf);
    @:keep
    public dynamic function _writeHeader(_b:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.GoString):Void __self__.value._writeHeader(_b, _str);
    @:keep
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}