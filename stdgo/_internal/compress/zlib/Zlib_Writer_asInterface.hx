package stdgo._internal.compress.zlib;
class Writer_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function _writeHeader():stdgo.Error return __self__.value._writeHeader();
    @:keep
    public dynamic function reset(_w:stdgo._internal.io.Io_Writer.Writer):Void __self__.value.reset(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.zlib.Zlib_Writer.Writer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
