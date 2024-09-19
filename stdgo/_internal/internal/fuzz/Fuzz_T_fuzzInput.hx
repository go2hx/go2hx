package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_fuzzInput {
    public var _entry : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry);
    public var _timeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _limit : stdgo.GoInt64 = 0;
    public var _warmup : Bool = false;
    public var _coverageData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_entry:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_limit:stdgo.GoInt64, ?_warmup:Bool, ?_coverageData:stdgo.Slice<stdgo.GoUInt8>) {
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