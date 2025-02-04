package stdgo._internal.net.http;
class T_http2sorter_asInterface {
    @:keep
    @:tdfield
    public dynamic function sortStrings(_ss:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value.sortStrings(_ss);
    @:keep
    @:tdfield
    public dynamic function keys(_h:stdgo._internal.net.http.Http_header.Header):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.keys(_h);
    @:keep
    @:tdfield
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return @:_0 __self__.value.less(_i, _j);
    @:keep
    @:tdfield
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void @:_0 __self__.value.swap(_i, _j);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2sorterpointer.T_http2sorterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
