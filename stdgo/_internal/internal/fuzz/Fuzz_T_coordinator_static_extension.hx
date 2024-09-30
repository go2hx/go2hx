package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_coordinator_asInterface) class T_coordinator_static_extension {
    @:keep
    static public function _debugLogf( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        var _t = (stdgo._internal.time.Time_now.now().format(("2006-01-02 15:04:05.999999999" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, (((_t + (" DEBUG " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _format?.__copy__() : stdgo.GoString) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function _readCache( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        {
            var __tmp__ = _c._addCorpusEntries(false, ...(_c._opts.seed : Array<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>)), __8:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz_readCorpus.readCorpus(_c._opts.cacheDir?.__copy__(), _c._opts.types), _entries:stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError>)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError>), _1 : false };
                }, __9 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _err;
                };
            };
        };
        {
            var __tmp__ = _c._addCorpusEntries(false, ...(_entries : Array<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>)), __9:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _elapsed( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        return stdgo._internal.time.Time_since.since(_c._startTime?.__copy__()).round((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
    }
    @:keep
    static public function _canMinimize( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        return (_c._minimizationAllowed && (((_c._opts.limit == (0i64 : stdgo.GoInt64)) || ((_c._count + _c._countWaiting : stdgo.GoInt64) < _c._opts.limit : Bool) : Bool)) : Bool);
    }
    @:keep
    static public function _updateCoverage( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _newCoverage:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        if ((_newCoverage.length) != ((_c._coverageMask.length))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("number of coverage counters changed at runtime: %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_newCoverage.length)), stdgo.Go.toInterface((_c._coverageMask.length))));
        };
        var _newBitCount = (0 : stdgo.GoInt);
        for (_i => _ in _newCoverage) {
            var _diff = (_newCoverage[(_i : stdgo.GoInt)] & ((_c._coverageMask[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _newBitCount = (_newBitCount + (stdgo._internal.math.bits.Bits_onesCount8.onesCount8(_diff)) : stdgo.GoInt);
            _c._coverageMask[(_i : stdgo.GoInt)] = (_c._coverageMask[(_i : stdgo.GoInt)] | (_newCoverage[(_i : stdgo.GoInt)]) : stdgo.GoUInt8);
        };
        return _newBitCount;
    }
    @:keep
    static public function _warmupRun( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        return (_c._warmupInputLeft > (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function _sentMinimizeInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        _c._minimizeQueue._dequeue();
        _c._countWaiting = (_c._countWaiting + (_input._limit) : stdgo.GoInt64);
    }
    @:keep
    static public function _peekMinimizeInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        if (!_c._canMinimize()) {
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput), _1 : false };
        };
        var __tmp__ = _c._minimizeQueue._peek(), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput), _1 : false };
        };
        var _input = ((stdgo.Go.typeAssert((_v : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput)) : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput)?.__copy__() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput);
        if ((_c._opts.minimizeTimeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _input._timeout = _c._opts.minimizeTimeout;
        };
        if ((_c._opts.minimizeLimit > (0i64 : stdgo.GoInt64) : Bool)) {
            _input._limit = _c._opts.minimizeLimit;
        } else if ((_c._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            if (_input._crasherMsg != (stdgo.Go.str())) {
                _input._limit = _c._opts.limit;
            } else {
                _input._limit = (_c._opts.limit / (_c._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64);
                if (((_c._opts.limit % (_c._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                    _input._limit++;
                };
            };
        };
        if ((_c._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            var _remaining = ((_c._opts.limit - _c._count : stdgo.GoInt64) - _c._countWaiting : stdgo.GoInt64);
            if ((_input._limit > _remaining : Bool)) {
                _input._limit = _remaining;
            };
        };
        return { _0 : _input?.__copy__(), _1 : true };
    }
    @:keep
    static public function _queueForMinimization( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _result:stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult, _keepCoverage:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        if (stdgo._internal.internal.fuzz.Fuzz__shouldPrintDebugInfo._shouldPrintDebugInfo()) {
            _c._debugLogf(("queueing input for minimization, id: %s, parent: %s, keepCoverage: %t, crasher: %t" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_result._entry.parent), stdgo.Go.toInterface(_keepCoverage != null), stdgo.Go.toInterface(_result._crasherMsg != (stdgo.Go.str())));
        };
        if (_result._crasherMsg != (stdgo.Go.str())) {
            _c._minimizeQueue._clear();
        };
        var _input = ({ _entry : _result._entry?.__copy__(), _crasherMsg : _result._crasherMsg?.__copy__(), _keepCoverage : _keepCoverage } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput);
        _c._minimizeQueue._enqueue(stdgo.Go.toInterface(_input));
    }
    @:keep
    static public function _refillInputQueue( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        for (__8 => _e in _c._corpus._entries) {
            _c._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
        };
    }
    @:keep
    static public function _sentInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _input:stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        _c._inputQueue._dequeue();
        _c._countWaiting = (_c._countWaiting + (_input._limit) : stdgo.GoInt64);
    }
    @:keep
    static public function _peekInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        if (((_c._opts.limit > (0i64 : stdgo.GoInt64) : Bool) && ((_c._count + _c._countWaiting : stdgo.GoInt64) >= _c._opts.limit : Bool) : Bool)) {
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput), _1 : false };
        };
        if (_c._inputQueue._len == ((0 : stdgo.GoInt))) {
            if (_c._warmupRun()) {
                return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput), _1 : false };
            };
            _c._refillInputQueue();
        };
        var __tmp__ = _c._inputQueue._peek(), _entry:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(("input queue empty after refill" : stdgo.GoString));
        };
        var _input = ({ _entry : (stdgo.Go.typeAssert((_entry : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry)) : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry)?.__copy__(), _timeout : (100000000i64 : stdgo._internal.time.Time_Duration.Duration), _warmup : _c._warmupRun() } : stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput);
        if (_c._coverageMask != null) {
            _input._coverageData = stdgo._internal.bytes.Bytes_clone.clone(_c._coverageMask);
        };
        if (_input._warmup) {
            _input._limit = (1i64 : stdgo.GoInt64);
            return { _0 : _input?.__copy__(), _1 : true };
        };
        if ((_c._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            _input._limit = (_c._opts.limit / (_c._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64);
            if (((_c._opts.limit % (_c._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                _input._limit++;
            };
            var _remaining = ((_c._opts.limit - _c._count : stdgo.GoInt64) - _c._countWaiting : stdgo.GoInt64);
            if ((_input._limit > _remaining : Bool)) {
                _input._limit = _remaining;
            };
        };
        return { _0 : _input?.__copy__(), _1 : true };
    }
    @:keep
    static public function _logStats( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (_c._warmupRun()) {
            var _runSoFar = (_c._warmupInputCount - _c._warmupInputLeft : stdgo.GoInt);
            if (stdgo._internal.internal.fuzz.Fuzz__coverageEnabled._coverageEnabled) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, gathering baseline coverage: %d/%d completed\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_runSoFar), stdgo.Go.toInterface(_c._warmupInputCount));
            } else {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, testing seed corpus: %d/%d completed\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_runSoFar), stdgo.Go.toInterface(_c._warmupInputCount));
            };
        } else if (_c._crashMinimizing != null && ((_c._crashMinimizing : Dynamic).__nil__ == null || !(_c._crashMinimizing : Dynamic).__nil__)) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, minimizing\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())));
        } else {
            var _rate = (((_c._count - _c._countLastLog : stdgo.GoInt64) : stdgo.GoFloat64) / _now.sub(_c._timeLastLog?.__copy__()).seconds() : stdgo.GoFloat64);
            if (stdgo._internal.internal.fuzz.Fuzz__coverageEnabled._coverageEnabled) {
                var _total = (_c._warmupInputCount + _c._interestingCount : stdgo.GoInt);
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, execs: %d (%.0f/sec), new interesting: %d (total: %d)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_c._count), stdgo.Go.toInterface(_rate), stdgo.Go.toInterface(_c._interestingCount), stdgo.Go.toInterface(_total));
            } else {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("fuzz: elapsed: %s, execs: %d (%.0f/sec)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_c._count), stdgo.Go.toInterface(_rate));
            };
        };
        _c._countLastLog = _c._count;
        _c._timeLastLog = _now?.__copy__();
    }
    @:keep
    static public function _updateStats( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _result:stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        _c._count = (_c._count + (_result._count) : stdgo.GoInt64);
        _c._countWaiting = (_c._countWaiting - (_result._limit) : stdgo.GoInt64);
        _c._duration = (_c._duration + (_result._totalDuration) : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    static public function _addCorpusEntries( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>, _addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _entries = new stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>(_entries.length, 0, ..._entries);
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator> = _c;
        var _noDupes = (true : Bool);
        for (__8 => _e in _entries) {
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_e?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)?.__copy__();
            if ((_c._corpus._hashes[_h] ?? false)) {
                _noDupes = false;
                continue;
            };
            if (_addToCache) {
                {
                    var _err = (stdgo._internal.internal.fuzz.Fuzz__writeToCorpus._writeToCorpus((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry>), _c._opts.cacheDir?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : false, _1 : _err };
                    };
                };
                _e.data = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            _c._corpus._hashes[_h] = true;
            _c._corpus._entries = (_c._corpus._entries.__append__(_e?.__copy__()));
        };
        return { _0 : _noDupes, _1 : (null : stdgo.Error) };
    }
}
