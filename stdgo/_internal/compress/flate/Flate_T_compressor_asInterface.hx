package stdgo._internal.compress.flate;
class T_compressor_asInterface {
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    @:keep
    public dynamic function _reset(_w:stdgo._internal.io.Io_Writer.Writer):Void __self__.value._reset(_w);
    @:keep
    public dynamic function _init(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):stdgo.Error return __self__.value._init(_w, _level);
    @:keep
    public dynamic function _syncFlush():stdgo.Error return __self__.value._syncFlush();
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:keep
    public dynamic function _storeHuff():Void __self__.value._storeHuff();
    @:keep
    public dynamic function _store():Void __self__.value._store();
    @:keep
    public dynamic function _fillStore(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return __self__.value._fillStore(_b);
    @:keep
    public dynamic function _deflate():Void __self__.value._deflate();
    @:keep
    public dynamic function _initDeflate():Void __self__.value._initDeflate();
    @:keep
    public dynamic function _encSpeed():Void __self__.value._encSpeed();
    @:keep
    public dynamic function _writeStoredBlock(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._writeStoredBlock(_buf);
    @:keep
    public dynamic function _findMatch(_pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } return __self__.value._findMatch(_pos, _prevHead, _prevLength, _lookahead);
    @:keep
    public dynamic function _fillWindow(_b:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value._fillWindow(_b);
    @:keep
    public dynamic function _writeBlock(_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _index:stdgo.GoInt):stdgo.Error return __self__.value._writeBlock(_tokens, _index);
    @:keep
    public dynamic function _fillDeflate(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return __self__.value._fillDeflate(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
