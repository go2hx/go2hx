package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput_static_extension.T_fuzzInput_static_extension) class T_fuzzInput {
    public var _entry : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry);
    public var _timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _limit : stdgo.GoInt64 = 0;
    public var _warmup : Bool = false;
    public var _coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_limit:stdgo.GoInt64, ?_warmup:Bool, ?_coverageData:stdgo.Slice<stdgo.GoUInt8>) {
        if (_entry != null) this._entry = _entry;
        if (_timeout != null) this._timeout = _timeout;
        if (_limit != null) this._limit = _limit;
        if (_warmup != null) this._warmup = _warmup;
        if (_coverageData != null) this._coverageData = _coverageData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fuzzInput(_entry, _timeout, _limit, _warmup, _coverageData);
    }
}
