package stdgo._internal.encoding.json;
class T_encodeState_asInterface {
    @:keep
    public dynamic function _reflectValue(_v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void __self__.value._reflectValue(_v, _opts);
    @:keep
    public dynamic function _error(_err:stdgo.Error):Void __self__.value._error(_err);
    @:keep
    public dynamic function _marshal(_v:stdgo.AnyInterface, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):stdgo.Error return __self__.value._marshal(_v, _opts);
    @:embedded
    public dynamic function _tryGrowByReslice(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(_n);
    @:embedded
    public dynamic function _readSlice(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readSlice(__0);
    @:embedded
    public dynamic function _grow(_n:stdgo.GoInt):stdgo.GoInt return __self__.value._grow(_n);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeTo(_w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(__0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(__0);
    @:embedded
    public dynamic function writeByte(__0:stdgo.GoUInt8):stdgo.Error return __self__.value.writeByte(__0);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(_n:stdgo.GoInt):Void __self__.value.truncate(_n);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(__0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(__0);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readFrom(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(__0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(__0);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function next(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value.next(_n);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(_n:stdgo.GoInt):Void __self__.value.grow(_n);
    @:embedded
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
