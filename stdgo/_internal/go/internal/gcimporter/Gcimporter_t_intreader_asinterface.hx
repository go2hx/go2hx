package stdgo._internal.go.internal.gcimporter;
class T_intReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _uint64():stdgo.GoUInt64 return @:_0 __self__.value._uint64();
    @:keep
    @:tdfield
    public dynamic function _int64():stdgo.GoInt64 return @:_0 __self__.value._int64();
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
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unreadByte():stdgo.Error return @:_0 __self__.value.unreadByte();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function reset(_0:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value.reset(_0);
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
    public dynamic function discard(_0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.discard(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function buffered():stdgo.GoInt return @:_0 __self__.value.buffered();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreaderpointer.T_intReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
