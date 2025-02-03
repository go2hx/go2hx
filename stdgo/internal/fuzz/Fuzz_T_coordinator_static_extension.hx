package stdgo.internal.fuzz;
class T_coordinator_static_extension {
    static public function _debugLogf(_c:T_coordinator, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._debugLogf(_c, _format, ...[for (i in _args) i]);
    }
    static public function _readCache(_c:T_coordinator):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._readCache(_c);
    }
    static public function _elapsed(_c:T_coordinator):stdgo._internal.time.Time_Duration.Duration {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._elapsed(_c);
    }
    static public function _canMinimize(_c:T_coordinator):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._canMinimize(_c);
    }
    static public function _updateCoverage(_c:T_coordinator, _newCoverage:Array<std.UInt>):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        final _newCoverage = ([for (i in _newCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._updateCoverage(_c, _newCoverage);
    }
    static public function _warmupRun(_c:T_coordinator):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._warmupRun(_c);
    }
    static public function _sentMinimizeInput(_c:T_coordinator, _input:T_fuzzMinimizeInput):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._sentMinimizeInput(_c, _input);
    }
    static public function _peekMinimizeInput(_c:T_coordinator):stdgo.Tuple<T_fuzzMinimizeInput, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._peekMinimizeInput(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _queueForMinimization(_c:T_coordinator, _result:T_fuzzResult, _keepCoverage:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        final _keepCoverage = ([for (i in _keepCoverage) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._queueForMinimization(_c, _result, _keepCoverage);
    }
    static public function _refillInputQueue(_c:T_coordinator):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._refillInputQueue(_c);
    }
    static public function _sentInput(_c:T_coordinator, _input:T_fuzzInput):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._sentInput(_c, _input);
    }
    static public function _peekInput(_c:T_coordinator):stdgo.Tuple<T_fuzzInput, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._peekInput(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _logStats(_c:T_coordinator):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._logStats(_c);
    }
    static public function _updateStats(_c:T_coordinator, _result:T_fuzzResult):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._updateStats(_c, _result);
    }
    static public function _addCorpusEntries(_c:T_coordinator, _addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>):stdgo.Tuple<Bool, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_coordinator_static_extension.T_coordinator_static_extension._addCorpusEntries(_c, _addToCache, ...[for (i in _entries) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
