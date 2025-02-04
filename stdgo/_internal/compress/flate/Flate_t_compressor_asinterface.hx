package stdgo._internal.compress.flate;
class T_compressor_asInterface {
    @:keep
    @:tdfield
    public dynamic function _close():stdgo.Error return @:_0 __self__.value._close();
    @:keep
    @:tdfield
    public dynamic function _reset(_w:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value._reset(_w);
    @:keep
    @:tdfield
    public dynamic function _init(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._init(_w, _level);
    @:keep
    @:tdfield
    public dynamic function _syncFlush():stdgo.Error return @:_0 __self__.value._syncFlush();
    @:keep
    @:tdfield
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._write(_b);
    @:keep
    @:tdfield
    public dynamic function _storeHuff():Void @:_0 __self__.value._storeHuff();
    @:keep
    @:tdfield
    public dynamic function _store():Void @:_0 __self__.value._store();
    @:keep
    @:tdfield
    public dynamic function _fillStore(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value._fillStore(_b);
    @:keep
    @:tdfield
    public dynamic function _deflate():Void @:_0 __self__.value._deflate();
    @:keep
    @:tdfield
    public dynamic function _initDeflate():Void @:_0 __self__.value._initDeflate();
    @:keep
    @:tdfield
    public dynamic function _encSpeed():Void @:_0 __self__.value._encSpeed();
    @:keep
    @:tdfield
    public dynamic function _writeStoredBlock(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeStoredBlock(_buf);
    @:keep
    @:tdfield
    public dynamic function _findMatch(_pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } return @:_0 __self__.value._findMatch(_pos, _prevHead, _prevLength, _lookahead);
    @:keep
    @:tdfield
    public dynamic function _fillWindow(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._fillWindow(_b);
    @:keep
    @:tdfield
    public dynamic function _writeBlock(_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _index:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._writeBlock(_tokens, _index);
    @:keep
    @:tdfield
    public dynamic function _fillDeflate(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value._fillDeflate(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_t_compressorpointer.T_compressorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
