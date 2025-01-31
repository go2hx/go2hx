package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
class T_decompressor_asInterface {
    @:keep
    @:tdfield
    public dynamic function reset(_r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.reset(_r, _dict);
    @:keep
    @:tdfield
    public dynamic function _makeReader(_r:stdgo._internal.io.Io_Reader.Reader):Void @:_0 __self__.value._makeReader(_r);
    @:keep
    @:tdfield
    public dynamic function _huffSym(_h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._huffSym(_h);
    @:keep
    @:tdfield
    public dynamic function _moreBits():stdgo.Error return @:_0 __self__.value._moreBits();
    @:keep
    @:tdfield
    public dynamic function _finishBlock():Void @:_0 __self__.value._finishBlock();
    @:keep
    @:tdfield
    public dynamic function _copyData():Void @:_0 __self__.value._copyData();
    @:keep
    @:tdfield
    public dynamic function _dataBlock():Void @:_0 __self__.value._dataBlock();
    @:keep
    @:tdfield
    public dynamic function _huffmanBlock():Void @:_0 __self__.value._huffmanBlock();
    @:keep
    @:tdfield
    public dynamic function _readHuffman():stdgo.Error return @:_0 __self__.value._readHuffman();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    @:tdfield
    public dynamic function _nextBlock():Void @:_0 __self__.value._nextBlock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_T_decompressorPointer.T_decompressorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
