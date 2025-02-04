package stdgo._internal.compress.flate;
class T_huffmanBitWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeBlockHuff(_eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._writeBlockHuff(_eof, _input);
    @:keep
    @:tdfield
    public dynamic function _writeTokens(_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _leCodes:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>, _oeCodes:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>):Void @:_0 __self__.value._writeTokens(_tokens, _leCodes, _oeCodes);
    @:keep
    @:tdfield
    public dynamic function _indexTokens(_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return @:_0 __self__.value._indexTokens(_tokens);
    @:keep
    @:tdfield
    public dynamic function _writeBlockDynamic(_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._writeBlockDynamic(_tokens, _eof, _input);
    @:keep
    @:tdfield
    public dynamic function _writeBlock(_tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _eof:Bool, _input:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._writeBlock(_tokens, _eof, _input);
    @:keep
    @:tdfield
    public dynamic function _writeFixedHeader(_isEof:Bool):Void @:_0 __self__.value._writeFixedHeader(_isEof);
    @:keep
    @:tdfield
    public dynamic function _writeStoredHeader(_length:stdgo.GoInt, _isEof:Bool):Void @:_0 __self__.value._writeStoredHeader(_length, _isEof);
    @:keep
    @:tdfield
    public dynamic function _writeDynamicHeader(_numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _numCodegens:stdgo.GoInt, _isEof:Bool):Void @:_0 __self__.value._writeDynamicHeader(_numLiterals, _numOffsets, _numCodegens, _isEof);
    @:keep
    @:tdfield
    public dynamic function _writeCode(_c:stdgo._internal.compress.flate.Flate_t_hcode.T_hcode):Void @:_0 __self__.value._writeCode(_c);
    @:keep
    @:tdfield
    public dynamic function _storedSize(_in:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._storedSize(_in);
    @:keep
    @:tdfield
    public dynamic function _fixedSize(_extraBits:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._fixedSize(_extraBits);
    @:keep
    @:tdfield
    public dynamic function _dynamicSize(_litEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _offEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _extraBits:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return @:_0 __self__.value._dynamicSize(_litEnc, _offEnc, _extraBits);
    @:keep
    @:tdfield
    public dynamic function _generateCodegen(_numLiterals:stdgo.GoInt, _numOffsets:stdgo.GoInt, _litEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _offEnc:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>):Void @:_0 __self__.value._generateCodegen(_numLiterals, _numOffsets, _litEnc, _offEnc);
    @:keep
    @:tdfield
    public dynamic function _writeBytes(_bytes:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._writeBytes(_bytes);
    @:keep
    @:tdfield
    public dynamic function _writeBits(_b:stdgo.GoInt32, _nb:stdgo.GoUInt):Void @:_0 __self__.value._writeBits(_b, _nb);
    @:keep
    @:tdfield
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._write(_b);
    @:keep
    @:tdfield
    public dynamic function _flush():Void @:_0 __self__.value._flush();
    @:keep
    @:tdfield
    public dynamic function _reset(_writer:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value._reset(_writer);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_t_huffmanbitwriterpointer.T_huffmanBitWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
