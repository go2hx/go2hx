package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_decompressor_static_extension) abstract T_decompressor(stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor) from stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor to stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = v;
        return v;
    }
    public var _rBuf(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__rBuf():stdgo._internal.bufio.Bufio_Reader.Reader return this._rBuf;
    function set__rBuf(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._rBuf = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var _roffset(get, set) : haxe.Int64;
    function get__roffset():haxe.Int64 return this._roffset;
    function set__roffset(v:haxe.Int64):haxe.Int64 {
        this._roffset = (v : stdgo.GoInt64);
        return v;
    }
    public var _b(get, set) : std.UInt;
    function get__b():std.UInt return this._b;
    function set__b(v:std.UInt):std.UInt {
        this._b = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nb(get, set) : std.UInt;
    function get__nb():std.UInt return this._nb;
    function set__nb(v:std.UInt):std.UInt {
        this._nb = (v : stdgo.GoUInt);
        return v;
    }
    public var _h1(get, set) : T_huffmanDecoder;
    function get__h1():T_huffmanDecoder return this._h1;
    function set__h1(v:T_huffmanDecoder):T_huffmanDecoder {
        this._h1 = v;
        return v;
    }
    public var _h2(get, set) : T_huffmanDecoder;
    function get__h2():T_huffmanDecoder return this._h2;
    function set__h2(v:T_huffmanDecoder):T_huffmanDecoder {
        this._h2 = v;
        return v;
    }
    public var _bits(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__bits():haxe.ds.Vector<StdTypes.Int> return this._bits;
    function set__bits(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._bits = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        return v;
    }
    public var _codebits(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__codebits():haxe.ds.Vector<StdTypes.Int> return this._codebits;
    function set__codebits(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._codebits = (v : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        return v;
    }
    public var _dict(get, set) : T_dictDecoder;
    function get__dict():T_dictDecoder return this._dict;
    function set__dict(v:T_dictDecoder):T_dictDecoder {
        this._dict = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _step(get, set) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void;
    function get__step():stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void return _0 -> this._step(_0);
    function set__step(v:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void):stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void {
        this._step = v;
        return v;
    }
    public var _stepState(get, set) : StdTypes.Int;
    function get__stepState():StdTypes.Int return this._stepState;
    function set__stepState(v:StdTypes.Int):StdTypes.Int {
        this._stepState = (v : stdgo.GoInt);
        return v;
    }
    public var _final(get, set) : Bool;
    function get__final():Bool return this._final;
    function set__final(v:Bool):Bool {
        this._final = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _toRead(get, set) : Array<std.UInt>;
    function get__toRead():Array<std.UInt> return [for (i in this._toRead) i];
    function set__toRead(v:Array<std.UInt>):Array<std.UInt> {
        this._toRead = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _hl(get, set) : T_huffmanDecoder;
    function get__hl():T_huffmanDecoder return this._hl;
    function set__hl(v:T_huffmanDecoder):T_huffmanDecoder {
        this._hl = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
        return v;
    }
    public var _hd(get, set) : T_huffmanDecoder;
    function get__hd():T_huffmanDecoder return this._hd;
    function set__hd(v:T_huffmanDecoder):T_huffmanDecoder {
        this._hd = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
        return v;
    }
    public var _copyLen(get, set) : StdTypes.Int;
    function get__copyLen():StdTypes.Int return this._copyLen;
    function set__copyLen(v:StdTypes.Int):StdTypes.Int {
        this._copyLen = (v : stdgo.GoInt);
        return v;
    }
    public var _copyDist(get, set) : StdTypes.Int;
    function get__copyDist():StdTypes.Int return this._copyDist;
    function set__copyDist(v:StdTypes.Int):StdTypes.Int {
        this._copyDist = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:Reader, ?_rBuf:stdgo._internal.bufio.Bufio_Reader.Reader, ?_roffset:haxe.Int64, ?_b:std.UInt, ?_nb:std.UInt, ?_h1:T_huffmanDecoder, ?_h2:T_huffmanDecoder, ?_bits:haxe.ds.Vector<StdTypes.Int>, ?_codebits:haxe.ds.Vector<StdTypes.Int>, ?_dict:T_dictDecoder, ?_buf:haxe.ds.Vector<std.UInt>, ?_step:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> -> Void, ?_stepState:StdTypes.Int, ?_final:Bool, ?_err:stdgo.Error, ?_toRead:Array<std.UInt>, ?_hl:T_huffmanDecoder, ?_hd:T_huffmanDecoder, ?_copyLen:StdTypes.Int, ?_copyDist:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor(
_r,
(_rBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>),
(_roffset : stdgo.GoInt64),
(_b : stdgo.GoUInt32),
(_nb : stdgo.GoUInt),
_h1,
_h2,
(_bits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>),
(_codebits : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>),
_dict,
([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
_step,
(_stepState : stdgo.GoInt),
_final,
(_err : stdgo.Error),
([for (i in _toRead) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_hl : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>),
(_hd : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>),
(_copyLen : stdgo.GoInt),
(_copyDist : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
