package stdgo._internal.compress.gzip;
class Reader_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function _readHeader():{ var _0 : stdgo._internal.compress.gzip.Gzip_Header.Header; var _1 : stdgo.Error; } return __self__.value._readHeader();
    @:keep
    public dynamic function _readString():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value._readString();
    @:keep
    public dynamic function multistream(_ok:Bool):Void __self__.value.multistream(_ok);
    @:keep
    public dynamic function reset(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error return __self__.value.reset(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.gzip.Gzip_Reader.Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
