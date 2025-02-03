package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_huffmanEncoder_static_extension) abstract T_huffmanEncoder(stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder) from stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder to stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder {
    public var _codes(get, set) : Array<T_hcode>;
    function get__codes():Array<T_hcode> return [for (i in this._codes) i];
    function set__codes(v:Array<T_hcode>):Array<T_hcode> {
        this._codes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
        return v;
    }
    public var _freqcache(get, set) : Array<T_literalNode>;
    function get__freqcache():Array<T_literalNode> return [for (i in this._freqcache) i];
    function set__freqcache(v:Array<T_literalNode>):Array<T_literalNode> {
        this._freqcache = ([for (i in v) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
        return v;
    }
    public var _bitCount(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__bitCount():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._bitCount) i]);
    function set__bitCount(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._bitCount = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _lns(get, set) : T_byLiteral;
    function get__lns():T_byLiteral return this._lns;
    function set__lns(v:T_byLiteral):T_byLiteral {
        this._lns = v;
        return v;
    }
    public var _lfs(get, set) : T_byFreq;
    function get__lfs():T_byFreq return this._lfs;
    function set__lfs(v:T_byFreq):T_byFreq {
        this._lfs = v;
        return v;
    }
    public function new(?_codes:Array<T_hcode>, ?_freqcache:Array<T_literalNode>, ?_bitCount:haxe.ds.Vector<StdTypes.Int>, ?_lns:T_byLiteral, ?_lfs:T_byFreq) this = new stdgo._internal.compress.flate.Flate_T_huffmanEncoder.T_huffmanEncoder(([for (i in _codes) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>), ([for (i in _freqcache) i] : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>), ([for (i in _bitCount) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>), _lns, _lfs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
