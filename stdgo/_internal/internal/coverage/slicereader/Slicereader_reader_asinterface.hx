package stdgo._internal.internal.coverage.slicereader;
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function readString(_len:stdgo.GoInt64):stdgo.GoString return @:_0 __self__.value.readString(_len);
    @:keep
    @:tdfield
    public dynamic function readULEB128():stdgo.GoUInt64 return @:_0 __self__.value.readULEB128();
    @:keep
    @:tdfield
    public dynamic function readUint64():stdgo.GoUInt64 return @:_0 __self__.value.readUint64();
    @:keep
    @:tdfield
    public dynamic function readUint32():stdgo.GoUInt32 return @:_0 __self__.value.readUint32();
    @:keep
    @:tdfield
    public dynamic function readUint8():stdgo.GoUInt8 return @:_0 __self__.value.readUint8();
    @:keep
    @:tdfield
    public dynamic function offset():stdgo.GoInt64 return @:_0 __self__.value.offset();
    @:keep
    @:tdfield
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.seek(_offset, _whence);
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.slicereader.Slicereader_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
