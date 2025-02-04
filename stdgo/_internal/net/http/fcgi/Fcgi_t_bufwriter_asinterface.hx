package stdgo._internal.net.http.fcgi;
class T_bufWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeString(_0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeRune(_0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeByte(_0:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value.writeByte(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function reset(_0:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value.reset(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function buffered():stdgo.GoInt return @:_0 __self__.value.buffered();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.availableBuffer();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function available():stdgo.GoInt return @:_0 __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.fcgi.Fcgi_t_bufwriterpointer.T_bufWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
