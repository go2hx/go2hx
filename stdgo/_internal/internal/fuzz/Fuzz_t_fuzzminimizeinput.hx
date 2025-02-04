package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput_static_extension.T_fuzzMinimizeInput_static_extension) class T_fuzzMinimizeInput {
    public var _entry : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry);
    public var _crasherMsg : stdgo.GoString = "";
    public var _limit : stdgo.GoInt64 = 0;
    public var _timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _keepCoverage : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, ?_crasherMsg:stdgo.GoString, ?_limit:stdgo.GoInt64, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_keepCoverage:stdgo.Slice<stdgo.GoUInt8>) {
        if (_entry != null) this._entry = _entry;
        if (_crasherMsg != null) this._crasherMsg = _crasherMsg;
        if (_limit != null) this._limit = _limit;
        if (_timeout != null) this._timeout = _timeout;
        if (_keepCoverage != null) this._keepCoverage = _keepCoverage;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fuzzMinimizeInput(_entry, _crasherMsg, _limit, _timeout, _keepCoverage);
    }
}
