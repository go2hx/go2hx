package stdgo.internal.zstd;
@:structInit @:using(stdgo.internal.zstd.Zstd.T_seqCodeInfoData_static_extension) abstract T_seqCodeInfoData(stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData) from stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData to stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData {
    public var _predefTable(get, set) : Array<T_fseBaselineEntry>;
    function get__predefTable():Array<T_fseBaselineEntry> return [for (i in this._predefTable) i];
    function set__predefTable(v:Array<T_fseBaselineEntry>):Array<T_fseBaselineEntry> {
        this._predefTable = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
        return v;
    }
    public var _predefTableBits(get, set) : StdTypes.Int;
    function get__predefTableBits():StdTypes.Int return this._predefTableBits;
    function set__predefTableBits(v:StdTypes.Int):StdTypes.Int {
        this._predefTableBits = (v : stdgo.GoInt);
        return v;
    }
    public var _maxSym(get, set) : StdTypes.Int;
    function get__maxSym():StdTypes.Int return this._maxSym;
    function set__maxSym(v:StdTypes.Int):StdTypes.Int {
        this._maxSym = (v : stdgo.GoInt);
        return v;
    }
    public var _maxBits(get, set) : StdTypes.Int;
    function get__maxBits():StdTypes.Int return this._maxBits;
    function set__maxBits(v:StdTypes.Int):StdTypes.Int {
        this._maxBits = (v : stdgo.GoInt);
        return v;
    }
    public var _toBaseline(get, set) : (stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>) -> stdgo.Error;
    function get__toBaseline():(stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>) -> stdgo.Error return (_0, _1, _2, _3) -> this._toBaseline(_0, _1, [for (i in _2) i], [for (i in _3) i]);
    function set__toBaseline(v:(stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>) -> stdgo.Error):(stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>) -> stdgo.Error {
        this._toBaseline = v;
        return v;
    }
    public function new(?_predefTable:Array<T_fseBaselineEntry>, ?_predefTableBits:StdTypes.Int, ?_maxSym:StdTypes.Int, ?_maxBits:StdTypes.Int, ?_toBaseline:(stdgo.Ref<stdgo._internal.internal.zstd.Zstd_Reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>) -> stdgo.Error) this = new stdgo._internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData(([for (i in _predefTable) i] : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>), (_predefTableBits : stdgo.GoInt), (_maxSym : stdgo.GoInt), (_maxBits : stdgo.GoInt), _toBaseline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
