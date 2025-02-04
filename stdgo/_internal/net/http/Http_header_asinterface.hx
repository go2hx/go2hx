package stdgo._internal.net.http;
class Header_asInterface {
    @:keep
    @:tdfield
    public dynamic function writeSubset(_w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error return @:_0 __self__.value.writeSubset(_w, _exclude);
    @:keep
    @:tdfield
    public dynamic function clone():stdgo._internal.net.http.Http_header.Header return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    @:tdfield
    public dynamic function del(_key:stdgo.GoString):Void @:_0 __self__.value.del(_key);
    @:keep
    @:tdfield
    public dynamic function values(_key:stdgo.GoString):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.values(_key);
    @:keep
    @:tdfield
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.get(_key);
    @:keep
    @:tdfield
    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value.set(_key, _value);
    @:keep
    @:tdfield
    public dynamic function add(_key:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value.add(_key, _value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_headerpointer.HeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
