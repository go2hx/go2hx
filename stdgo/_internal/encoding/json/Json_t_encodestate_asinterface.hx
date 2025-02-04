package stdgo._internal.encoding.json;
class T_encodeState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _reflectValue(_v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void @:_0 __self__.value._reflectValue(_v, _opts);
    @:keep
    @:tdfield
    public dynamic function _error(_err:stdgo.Error):Void @:_0 __self__.value._error(_err);
    @:keep
    @:tdfield
    public dynamic function _marshal(_v:stdgo.AnyInterface, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):stdgo.Error return @:_0 __self__.value._marshal(_v, _opts);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _tryGrowByReslice(_0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._tryGrowByReslice(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readSlice(_0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _grow(_0:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._grow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
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
    public dynamic function truncate(_0:stdgo.GoInt):Void @:_0 __self__.value.truncate(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readString(_0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readString(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
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
    public dynamic function next(_0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.next(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function grow(_0:stdgo.GoInt):Void @:_0 __self__.value.grow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function cap():stdgo.GoInt return @:_0 __self__.value.cap();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
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
    var __self__ : stdgo._internal.encoding.json.Json_t_encodestatepointer.T_encodeStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
