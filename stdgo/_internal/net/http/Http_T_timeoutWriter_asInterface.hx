package stdgo._internal.net.http;
class T_timeoutWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function writeHeader(_code:stdgo.GoInt):Void @:_0 __self__.value.writeHeader(_code);
    @:keep
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    @:tdfield
    public dynamic function header():stdgo._internal.net.http.Http_Header.Header return @:_0 __self__.value.header();
    @:keep
    @:tdfield
    public dynamic function push(_target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>):stdgo.Error return @:_0 __self__.value.push(_target, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_timeoutWriterPointer.T_timeoutWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
