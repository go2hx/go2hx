package stdgo.compress.flate;
class T_huffmanBitWriter_static_extension {
    static public function _writeBlockHuff(_w:T_huffmanBitWriter, _eof:Bool, _input:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _input = ([for (i in _input) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBlockHuff(_w, _eof, _input);
    }
    static public function _writeTokens(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _leCodes:Array<T_hcode>, _oeCodes:Array<T_hcode>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _leCodes = ([for (i in _leCodes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        final _oeCodes = ([for (i in _oeCodes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeTokens(_w, _tokens, _leCodes, _oeCodes);
    }
    static public function _indexTokens(_w:T_huffmanBitWriter, _tokens:Array<T_token>):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._indexTokens(_w, _tokens);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeBlockDynamic(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _eof:Bool, _input:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _input = ([for (i in _input) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBlockDynamic(_w, _tokens, _eof, _input);
    }
    static public function _writeBlock(_w:T_huffmanBitWriter, _tokens:Array<T_token>, _eof:Bool, _input:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _tokens = ([for (i in _tokens) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        final _input = ([for (i in _input) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBlock(_w, _tokens, _eof, _input);
    }
    static public function _writeFixedHeader(_w:T_huffmanBitWriter, _isEof:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeFixedHeader(_w, _isEof);
    }
    static public function _writeStoredHeader(_w:T_huffmanBitWriter, _length:StdTypes.Int, _isEof:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeStoredHeader(_w, _length, _isEof);
    }
    static public function _writeDynamicHeader(_w:T_huffmanBitWriter, _numLiterals:StdTypes.Int, _numOffsets:StdTypes.Int, _numCodegens:StdTypes.Int, _isEof:Bool):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _numLiterals = (_numLiterals : stdgo.GoInt);
        final _numOffsets = (_numOffsets : stdgo.GoInt);
        final _numCodegens = (_numCodegens : stdgo.GoInt);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeDynamicHeader(_w, _numLiterals, _numOffsets, _numCodegens, _isEof);
    }
    static public function _writeCode(_w:T_huffmanBitWriter, _c:T_hcode):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeCode(_w, _c);
    }
    static public function _storedSize(_w:T_huffmanBitWriter, _in:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, Bool> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._storedSize(_w, _in);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixedSize(_w:T_huffmanBitWriter, _extraBits:StdTypes.Int):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _extraBits = (_extraBits : stdgo.GoInt);
        return stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._fixedSize(_w, _extraBits);
    }
    static public function _dynamicSize(_w:T_huffmanBitWriter, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder, _extraBits:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _litEnc = (_litEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _offEnc = (_offEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _extraBits = (_extraBits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._dynamicSize(_w, _litEnc, _offEnc, _extraBits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generateCodegen(_w:T_huffmanBitWriter, _numLiterals:StdTypes.Int, _numOffsets:StdTypes.Int, _litEnc:T_huffmanEncoder, _offEnc:T_huffmanEncoder):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _numLiterals = (_numLiterals : stdgo.GoInt);
        final _numOffsets = (_numOffsets : stdgo.GoInt);
        final _litEnc = (_litEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        final _offEnc = (_offEnc : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._generateCodegen(_w, _numLiterals, _numOffsets, _litEnc, _offEnc);
    }
    static public function _writeBytes(_w:T_huffmanBitWriter, _bytes:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _bytes = ([for (i in _bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBytes(_w, _bytes);
    }
    static public function _writeBits(_w:T_huffmanBitWriter, _b:StdTypes.Int, _nb:std.UInt):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _b = (_b : stdgo.GoInt32);
        final _nb = (_nb : stdgo.GoUInt);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._writeBits(_w, _b, _nb);
    }
    static public function _write(_w:T_huffmanBitWriter, _b:Array<std.UInt>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._write(_w, _b);
    }
    static public function _flush(_w:T_huffmanBitWriter):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._flush(_w);
    }
    static public function _reset(_w:T_huffmanBitWriter, _writer:stdgo._internal.io.Io_Writer.Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter>);
        stdgo._internal.compress.flate.Flate_T_huffmanBitWriter_static_extension.T_huffmanBitWriter_static_extension._reset(_w, _writer);
    }
}
