package stdgo._internal.internal.zstd;
@:structInit @:using(stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata_static_extension.T_seqCodeInfoData_static_extension) class T_seqCodeInfoData {
    public var _predefTable : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry> = (null : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
    public var _predefTableBits : stdgo.GoInt = 0;
    public var _maxSym : stdgo.GoInt = 0;
    public var _maxBits : stdgo.GoInt = 0;
    public var _toBaseline : (stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>) -> stdgo.Error = null;
    public function new(?_predefTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>, ?_predefTableBits:stdgo.GoInt, ?_maxSym:stdgo.GoInt, ?_maxBits:stdgo.GoInt, ?_toBaseline:(stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, stdgo.GoInt, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>) -> stdgo.Error) {
        if (_predefTable != null) this._predefTable = _predefTable;
        if (_predefTableBits != null) this._predefTableBits = _predefTableBits;
        if (_maxSym != null) this._maxSym = _maxSym;
        if (_maxBits != null) this._maxBits = _maxBits;
        if (_toBaseline != null) this._toBaseline = _toBaseline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_seqCodeInfoData(_predefTable, _predefTableBits, _maxSym, _maxBits, _toBaseline);
    }
}
