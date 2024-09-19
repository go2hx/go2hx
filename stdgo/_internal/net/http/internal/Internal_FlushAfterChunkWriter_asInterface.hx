package stdgo._internal.net.http.internal;
class FlushAfterChunkWriter_asInterface {
    @:embedded
    public dynamic function writeString(_text:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_text);
    @:embedded
    public dynamic function writeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    @:embedded
    public dynamic function writeByte(_delim:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(_delim);
    @:embedded
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:embedded
    public dynamic function size():stdgo.GoInt return __self__.value.size();
    @:embedded
    public dynamic function reset(_w:stdgo._internal.io.Io_Writer.Writer):Void __self__.value.reset(_w);
    @:embedded
    public dynamic function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:embedded
    public dynamic function buffered():stdgo.GoInt return __self__.value.buffered();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
