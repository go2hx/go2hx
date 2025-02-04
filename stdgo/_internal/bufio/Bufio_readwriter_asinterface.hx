package stdgo._internal.bufio;
class ReadWriter_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeBuf(_0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._writeBuf(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _reset(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value._reset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readErr():stdgo.Error return @:_0 __self__.value._readErr();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _fill():Void @:_0 __self__.value._fill();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _collectFragments(_0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._collectFragments(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeTo(_0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_0);
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
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unreadByte():stdgo.Error return @:_0 __self__.value.unreadByte();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readString(_0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readString(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readSlice(_0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readLine():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value.readLine();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readBytes(_0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readBytes(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value.readByte();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function peek(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.peek(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function discard(_0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.discard(_0);
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
    var __self__ : stdgo._internal.bufio.Bufio_readwriterpointer.ReadWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
