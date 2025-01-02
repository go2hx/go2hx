package stdgo._internal.net.http;
class T__struct_2_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function writeTo(_0:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_0);
    @:embedded
    @:localembedfields
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T__struct_2Pointer.T__struct_2Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
