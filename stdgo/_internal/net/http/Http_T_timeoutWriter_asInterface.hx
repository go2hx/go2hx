package stdgo._internal.net.http;
class T_timeoutWriter_asInterface {
    @:keep
    public dynamic function writeHeader(_code:stdgo.GoInt):Void __self__.value.writeHeader(_code);
    @:keep
    public dynamic function _writeHeaderLocked(_code:stdgo.GoInt):Void __self__.value._writeHeaderLocked(_code);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return __self__.value.header();
    @:keep
    public dynamic function push(_target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>):stdgo.Error return __self__.value.push(_target, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
