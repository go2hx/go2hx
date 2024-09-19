package stdgo._internal.compress.flate;
class T_decompressor_asInterface {
    @:keep
    public dynamic function reset(_r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.reset(_r, _dict);
    @:keep
    public dynamic function _makeReader(_r:stdgo._internal.io.Io_Reader.Reader):Void __self__.value._makeReader(_r);
    @:keep
    public dynamic function _huffSym(_h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._huffSym(_h);
    @:keep
    public dynamic function _moreBits():stdgo.Error return __self__.value._moreBits();
    @:keep
    public dynamic function _finishBlock():Void __self__.value._finishBlock();
    @:keep
    public dynamic function _copyData():Void __self__.value._copyData();
    @:keep
    public dynamic function _dataBlock():Void __self__.value._dataBlock();
    @:keep
    public dynamic function _huffmanBlock():Void __self__.value._huffmanBlock();
    @:keep
    public dynamic function _readHuffman():stdgo.Error return __self__.value._readHuffman();
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function _nextBlock():Void __self__.value._nextBlock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
