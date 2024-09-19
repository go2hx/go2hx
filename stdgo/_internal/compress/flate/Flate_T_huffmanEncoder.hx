package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_T_huffmanEncoder_static_extension.T_huffmanEncoder_static_extension) class T_huffmanEncoder {
    public var _codes : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>);
    public var _freqcache : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode> = (null : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>);
    public var _bitCount : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(17, 17, ...[for (i in 0 ... 17) (0 : stdgo.GoInt32)]);
    public var _lns : stdgo._internal.compress.flate.Flate_T_byLiteral.T_byLiteral = new stdgo._internal.compress.flate.Flate_T_byLiteral.T_byLiteral(0, 0);
    public var _lfs : stdgo._internal.compress.flate.Flate_T_byFreq.T_byFreq = new stdgo._internal.compress.flate.Flate_T_byFreq.T_byFreq(0, 0);
    public function new(?_codes:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>, ?_freqcache:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_literalNode.T_literalNode>, ?_bitCount:stdgo.GoArray<stdgo.GoInt32>, ?_lns:stdgo._internal.compress.flate.Flate_T_byLiteral.T_byLiteral, ?_lfs:stdgo._internal.compress.flate.Flate_T_byFreq.T_byFreq) {
        if (_codes != null) this._codes = _codes;
        if (_freqcache != null) this._freqcache = _freqcache;
        if (_bitCount != null) this._bitCount = _bitCount;
        if (_lns != null) this._lns = _lns;
        if (_lfs != null) this._lfs = _lfs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanEncoder(_codes, _freqcache, _bitCount, _lns, _lfs);
    }
}