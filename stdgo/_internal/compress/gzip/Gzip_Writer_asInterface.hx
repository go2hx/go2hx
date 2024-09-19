package stdgo._internal.compress.gzip;
class Writer_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function _writeString(_s:stdgo.GoString):stdgo.Error return __self__.value._writeString(_s);
    @:keep
    public dynamic function _writeBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._writeBytes(_b);
    @:keep
    public dynamic function reset(_w:stdgo._internal.io.Io_Writer.Writer):Void __self__.value.reset(_w);
    @:keep
    public dynamic function _init(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):Void __self__.value._init(_w, _level);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.gzip.Gzip_Writer.Writer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
