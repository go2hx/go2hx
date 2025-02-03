package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanBitWriter_static_extension) abstract T_huffmanBitWriter(stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter) from stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter to stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter {
    public var _writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__writer():stdgo._internal.io.Io_Writer.Writer return this._writer;
    function set__writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._writer = v;
        return v;
    }
    public var _bits(get, set) : haxe.UInt64;
    function get__bits():haxe.UInt64 return this._bits;
    function set__bits(v:haxe.UInt64):haxe.UInt64 {
        this._bits = (v : stdgo.GoUInt64);
        return v;
    }
    public var _nbits(get, set) : std.UInt;
    function get__nbits():std.UInt return this._nbits;
    function set__nbits(v:std.UInt):std.UInt {
        this._nbits = (v : stdgo.GoUInt);
        return v;
    }
    public var _bytes(get, set) : haxe.ds.Vector<std.UInt>;
    function get__bytes():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._bytes) i]);
    function set__bytes(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _codegenFreq(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__codegenFreq():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._codegenFreq) i]);
    function set__codegenFreq(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._codegenFreq = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _nbytes(get, set) : StdTypes.Int;
    function get__nbytes():StdTypes.Int return this._nbytes;
    function set__nbytes(v:StdTypes.Int):StdTypes.Int {
        this._nbytes = (v : stdgo.GoInt);
        return v;
    }
    public var _literalFreq(get, set) : Array<StdTypes.Int>;
    function get__literalFreq():Array<StdTypes.Int> return [for (i in this._literalFreq) i];
    function set__literalFreq(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._literalFreq = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _offsetFreq(get, set) : Array<StdTypes.Int>;
    function get__offsetFreq():Array<StdTypes.Int> return [for (i in this._offsetFreq) i];
    function set__offsetFreq(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._offsetFreq = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _codegen(get, set) : Array<std.UInt>;
    function get__codegen():Array<std.UInt> return [for (i in this._codegen) i];
    function set__codegen(v:Array<std.UInt>):Array<std.UInt> {
        this._codegen = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _literalEncoding(get, set) : T_huffmanEncoder;
    function get__literalEncoding():T_huffmanEncoder return this._literalEncoding;
    function set__literalEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._literalEncoding = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        return v;
    }
    public var _offsetEncoding(get, set) : T_huffmanEncoder;
    function get__offsetEncoding():T_huffmanEncoder return this._offsetEncoding;
    function set__offsetEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._offsetEncoding = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        return v;
    }
    public var _codegenEncoding(get, set) : T_huffmanEncoder;
    function get__codegenEncoding():T_huffmanEncoder return this._codegenEncoding;
    function set__codegenEncoding(v:T_huffmanEncoder):T_huffmanEncoder {
        this._codegenEncoding = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_writer:stdgo._internal.io.Io_Writer.Writer, ?_bits:haxe.UInt64, ?_nbits:std.UInt, ?_bytes:haxe.ds.Vector<std.UInt>, ?_codegenFreq:haxe.ds.Vector<StdTypes.Int>, ?_nbytes:StdTypes.Int, ?_literalFreq:Array<StdTypes.Int>, ?_offsetFreq:Array<StdTypes.Int>, ?_codegen:Array<std.UInt>, ?_literalEncoding:T_huffmanEncoder, ?_offsetEncoding:T_huffmanEncoder, ?_codegenEncoding:T_huffmanEncoder, ?_err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_T_huffmanBitWriter.T_huffmanBitWriter(
_writer,
(_bits : stdgo.GoUInt64),
(_nbits : stdgo.GoUInt),
([for (i in _bytes) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _codegenFreq) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>),
(_nbytes : stdgo.GoInt),
([for (i in _literalFreq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
([for (i in _offsetFreq) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
([for (i in _codegen) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_literalEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>),
(_offsetEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>),
(_codegenEncoding : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder>),
(_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
