package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_huffmanbitwriter_static_extension.T_huffmanBitWriter_static_extension) class T_huffmanBitWriter {
    public var _writer : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _bits : stdgo.GoUInt64 = 0;
    public var _nbits : stdgo.GoUInt = 0;
    public var _bytes : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(248, 248).__setNumber32__();
    public var _codegenFreq : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(19, 19).__setNumber32__();
    public var _nbytes : stdgo.GoInt = 0;
    public var _literalFreq : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _offsetFreq : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _codegen : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _literalEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    public var _offsetEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    public var _codegenEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_writer:stdgo._internal.io.Io_writer.Writer, ?_bits:stdgo.GoUInt64, ?_nbits:stdgo.GoUInt, ?_bytes:stdgo.GoArray<stdgo.GoUInt8>, ?_codegenFreq:stdgo.GoArray<stdgo.GoInt32>, ?_nbytes:stdgo.GoInt, ?_literalFreq:stdgo.Slice<stdgo.GoInt32>, ?_offsetFreq:stdgo.Slice<stdgo.GoInt32>, ?_codegen:stdgo.Slice<stdgo.GoUInt8>, ?_literalEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, ?_offsetEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, ?_codegenEncoding:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, ?_err:stdgo.Error) {
        if (_writer != null) this._writer = _writer;
        if (_bits != null) this._bits = _bits;
        if (_nbits != null) this._nbits = _nbits;
        if (_bytes != null) this._bytes = _bytes;
        if (_codegenFreq != null) this._codegenFreq = _codegenFreq;
        if (_nbytes != null) this._nbytes = _nbytes;
        if (_literalFreq != null) this._literalFreq = _literalFreq;
        if (_offsetFreq != null) this._offsetFreq = _offsetFreq;
        if (_codegen != null) this._codegen = _codegen;
        if (_literalEncoding != null) this._literalEncoding = _literalEncoding;
        if (_offsetEncoding != null) this._offsetEncoding = _offsetEncoding;
        if (_codegenEncoding != null) this._codegenEncoding = _codegenEncoding;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanBitWriter(
_writer,
_bits,
_nbits,
_bytes,
_codegenFreq,
_nbytes,
_literalFreq,
_offsetFreq,
_codegen,
_literalEncoding,
_offsetEncoding,
_codegenEncoding,
_err);
    }
}
