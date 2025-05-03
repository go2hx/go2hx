package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_coordinator_asInterface) class T_coordinator_static_extension {
    @:keep
    @:tdfield
    static public function _debugLogf( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        var _t = (stdgo._internal.time.Time_now.now().format(("2006-01-02 15:04:05.999999999" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1101"
        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, (((_t + (" DEBUG " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _format?.__copy__() : stdgo.GoString) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _readCache( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L938"
        {
            var __tmp__ = _c._addCorpusEntries(false, ...((@:checkr _c ?? throw "null pointer dereference")._opts.seed : Array<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>)), __8:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L939"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz_readcorpus.readCorpus((@:checkr _c ?? throw "null pointer dereference")._opts.cacheDir?.__copy__(), (@:checkr _c ?? throw "null pointer dereference")._opts.types), _entries:stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L942"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L943"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>), _1 : false };
                }, __9 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L946"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L952"
        {
            var __tmp__ = _c._addCorpusEntries(false, ...(_entries : Array<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>)), __9:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L953"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L955"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _elapsed( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L929"
        return stdgo._internal.time.Time_since.since((@:checkr _c ?? throw "null pointer dereference")._startTime?.__copy__()).round((1000000000i64 : stdgo._internal.time.Time_duration.Duration));
    }
    @:keep
    @:tdfield
    static public function _canMinimize( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L924"
        return ((@:checkr _c ?? throw "null pointer dereference")._minimizationAllowed && ((((@:checkr _c ?? throw "null pointer dereference")._opts.limit == (0i64 : stdgo.GoInt64)) || (((@:checkr _c ?? throw "null pointer dereference")._count + (@:checkr _c ?? throw "null pointer dereference")._countWaiting : stdgo.GoInt64) < (@:checkr _c ?? throw "null pointer dereference")._opts.limit : Bool) : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _updateCoverage( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _newCoverage:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L909"
        if ((_newCoverage.length) != (((@:checkr _c ?? throw "null pointer dereference")._coverageMask.length))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L910"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("number of coverage counters changed at runtime: %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_newCoverage.length)), stdgo.Go.toInterface(((@:checkr _c ?? throw "null pointer dereference")._coverageMask.length))));
        };
        var _newBitCount = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L913"
        for (_i => _ in _newCoverage) {
            var _diff = (_newCoverage[(_i : stdgo.GoInt)] & (((@:checkr _c ?? throw "null pointer dereference")._coverageMask[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _newBitCount = (_newBitCount + (stdgo._internal.math.bits.Bits_onescount8.onesCount8(_diff)) : stdgo.GoInt);
            (@:checkr _c ?? throw "null pointer dereference")._coverageMask[(_i : stdgo.GoInt)] = ((@:checkr _c ?? throw "null pointer dereference")._coverageMask[(_i : stdgo.GoInt)] | (_newCoverage[(_i : stdgo.GoInt)]) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L918"
        return _newBitCount;
    }
    @:keep
    @:tdfield
    static public function _warmupRun( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L902"
        return ((@:checkr _c ?? throw "null pointer dereference")._warmupInputLeft > (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function _sentMinimizeInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L884"
        (@:checkr _c ?? throw "null pointer dereference")._minimizeQueue._dequeue();
        (@:checkr _c ?? throw "null pointer dereference")._countWaiting = ((@:checkr _c ?? throw "null pointer dereference")._countWaiting + (_input._limit) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peekMinimizeInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L846"
        if (!_c._canMinimize()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L849"
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput), _1 : false };
        };
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._minimizeQueue._peek(), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L852"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L853"
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput), _1 : false };
        };
        var _input = ((stdgo.Go.typeAssert((_v : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput)) : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput)?.__copy__() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L857"
        if (((@:checkr _c ?? throw "null pointer dereference")._opts.minimizeTimeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            _input._timeout = (@:checkr _c ?? throw "null pointer dereference")._opts.minimizeTimeout;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L860"
        if (((@:checkr _c ?? throw "null pointer dereference")._opts.minimizeLimit > (0i64 : stdgo.GoInt64) : Bool)) {
            _input._limit = (@:checkr _c ?? throw "null pointer dereference")._opts.minimizeLimit;
        } else if (((@:checkr _c ?? throw "null pointer dereference")._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L863"
            if (_input._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                _input._limit = (@:checkr _c ?? throw "null pointer dereference")._opts.limit;
            } else {
                _input._limit = ((@:checkr _c ?? throw "null pointer dereference")._opts.limit / ((@:checkr _c ?? throw "null pointer dereference")._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L867"
                if ((((@:checkr _c ?? throw "null pointer dereference")._opts.limit % ((@:checkr _c ?? throw "null pointer dereference")._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L868"
                    _input._limit++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L872"
        if (((@:checkr _c ?? throw "null pointer dereference")._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            var _remaining = (((@:checkr _c ?? throw "null pointer dereference")._opts.limit - (@:checkr _c ?? throw "null pointer dereference")._count : stdgo.GoInt64) - (@:checkr _c ?? throw "null pointer dereference")._countWaiting : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L874"
            if ((_input._limit > _remaining : Bool)) {
                _input._limit = _remaining;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L878"
        return { _0 : _input?.__copy__(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function _queueForMinimization( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult, _keepCoverage:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L822"
        if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L823"
            _c._debugLogf(("queueing input for minimization, id: %s, parent: %s, keepCoverage: %t, crasher: %t" : stdgo.GoString), stdgo.Go.toInterface(_result._entry.path), stdgo.Go.toInterface(_result._entry.parent), stdgo.Go.toInterface(_keepCoverage != null), stdgo.Go.toInterface(_result._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L831"
        if (_result._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L832"
            (@:checkr _c ?? throw "null pointer dereference")._minimizeQueue._clear();
        };
        var _input = ({ _entry : _result._entry?.__copy__(), _crasherMsg : _result._crasherMsg?.__copy__(), _keepCoverage : _keepCoverage } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L840"
        (@:checkr _c ?? throw "null pointer dereference")._minimizeQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_input)));
    }
    @:keep
    @:tdfield
    static public function _refillInputQueue( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L814"
        for (__8 => _e in (@:checkr _c ?? throw "null pointer dereference")._corpus._entries) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L815"
            (@:checkr _c ?? throw "null pointer dereference")._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
        };
    }
    @:keep
    @:tdfield
    static public function _sentInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L807"
        (@:checkr _c ?? throw "null pointer dereference")._inputQueue._dequeue();
        (@:checkr _c ?? throw "null pointer dereference")._countWaiting = ((@:checkr _c ?? throw "null pointer dereference")._countWaiting + (_input._limit) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peekInput( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L759"
        if ((((@:checkr _c ?? throw "null pointer dereference")._opts.limit > (0i64 : stdgo.GoInt64) : Bool) && (((@:checkr _c ?? throw "null pointer dereference")._count + (@:checkr _c ?? throw "null pointer dereference")._countWaiting : stdgo.GoInt64) >= (@:checkr _c ?? throw "null pointer dereference")._opts.limit : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L762"
            return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L764"
        if ((@:checkr _c ?? throw "null pointer dereference")._inputQueue._len == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L765"
            if (_c._warmupRun()) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L768"
                return { _0 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput), _1 : false };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L770"
            _c._refillInputQueue();
        };
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._inputQueue._peek(), _entry:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L774"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L775"
            throw stdgo.Go.toInterface(("input queue empty after refill" : stdgo.GoString));
        };
        var _input = ({ _entry : (stdgo.Go.typeAssert((_entry : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)) : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)?.__copy__(), _timeout : (100000000i64 : stdgo._internal.time.Time_duration.Duration), _warmup : _c._warmupRun() } : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L782"
        if ((@:checkr _c ?? throw "null pointer dereference")._coverageMask != null) {
            _input._coverageData = stdgo._internal.bytes.Bytes_clone.clone((@:checkr _c ?? throw "null pointer dereference")._coverageMask);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L785"
        if (_input._warmup) {
            _input._limit = (1i64 : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L789"
            return { _0 : _input?.__copy__(), _1 : true };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L792"
        if (((@:checkr _c ?? throw "null pointer dereference")._opts.limit > (0i64 : stdgo.GoInt64) : Bool)) {
            _input._limit = ((@:checkr _c ?? throw "null pointer dereference")._opts.limit / ((@:checkr _c ?? throw "null pointer dereference")._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L794"
            if ((((@:checkr _c ?? throw "null pointer dereference")._opts.limit % ((@:checkr _c ?? throw "null pointer dereference")._opts.parallel : stdgo.GoInt64) : stdgo.GoInt64) > (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L795"
                _input._limit++;
            };
            var _remaining = (((@:checkr _c ?? throw "null pointer dereference")._opts.limit - (@:checkr _c ?? throw "null pointer dereference")._count : stdgo.GoInt64) - (@:checkr _c ?? throw "null pointer dereference")._countWaiting : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L798"
            if ((_input._limit > _remaining : Bool)) {
                _input._limit = _remaining;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L802"
        return { _0 : _input?.__copy__(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function _logStats( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L726"
        if (_c._warmupRun()) {
            var _runSoFar = ((@:checkr _c ?? throw "null pointer dereference")._warmupInputCount - (@:checkr _c ?? throw "null pointer dereference")._warmupInputLeft : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L728"
            if (stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L729"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("fuzz: elapsed: %s, gathering baseline coverage: %d/%d completed\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_runSoFar), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._warmupInputCount));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L731"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("fuzz: elapsed: %s, testing seed corpus: %d/%d completed\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface(_runSoFar), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._warmupInputCount));
            };
        } else if (({
            final value = (@:checkr _c ?? throw "null pointer dereference")._crashMinimizing;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L734"
            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("fuzz: elapsed: %s, minimizing\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())));
        } else {
            var _rate = ((((@:checkr _c ?? throw "null pointer dereference")._count - (@:checkr _c ?? throw "null pointer dereference")._countLastLog : stdgo.GoInt64) : stdgo.GoFloat64) / _now.sub((@:checkr _c ?? throw "null pointer dereference")._timeLastLog?.__copy__()).seconds() : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L737"
            if (stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled) {
                var _total = ((@:checkr _c ?? throw "null pointer dereference")._warmupInputCount + (@:checkr _c ?? throw "null pointer dereference")._interestingCount : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L739"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("fuzz: elapsed: %s, execs: %d (%.0f/sec), new interesting: %d (total: %d)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._count), stdgo.Go.toInterface(_rate), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._interestingCount), stdgo.Go.toInterface(_total));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L741"
                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("fuzz: elapsed: %s, execs: %d (%.0f/sec)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c._elapsed())), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference")._count), stdgo.Go.toInterface(_rate));
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._countLastLog = (@:checkr _c ?? throw "null pointer dereference")._count;
        (@:checkr _c ?? throw "null pointer dereference")._timeLastLog = _now?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _updateStats( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _result:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._count = ((@:checkr _c ?? throw "null pointer dereference")._count + (_result._count) : stdgo.GoInt64);
        (@:checkr _c ?? throw "null pointer dereference")._countWaiting = ((@:checkr _c ?? throw "null pointer dereference")._countWaiting - (_result._limit) : stdgo.GoInt64);
        (@:checkr _c ?? throw "null pointer dereference")._duration = ((@:checkr _c ?? throw "null pointer dereference")._duration + (_result._totalDuration) : stdgo._internal.time.Time_duration.Duration);
    }
    @:keep
    @:tdfield
    static public function _addCorpusEntries( _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, _addToCache:Bool, _entries:haxe.Rest<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _entries = new stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>(_entries.length, 0, ..._entries);
        @:recv var _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = _c;
        var _noDupes = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L432"
        for (__8 => _e in _entries) {
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusentrydata._corpusEntryData(_e?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L434"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L435"
                return { _0 : false, _1 : _err };
            };
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L438"
            if (((@:checkr _c ?? throw "null pointer dereference")._corpus._hashes[_h] ?? false)) {
                _noDupes = false;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L440"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L442"
            if (_addToCache) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L443"
                {
                    var _err = (stdgo._internal.internal.fuzz.Fuzz__writetocorpus._writeToCorpus((stdgo.Go.setRef(_e) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>), (@:checkr _c ?? throw "null pointer dereference")._opts.cacheDir?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L444"
                        return { _0 : false, _1 : _err };
                    };
                };
                _e.data = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _c ?? throw "null pointer dereference")._corpus._hashes[_h] = true;
            (@:checkr _c ?? throw "null pointer dereference")._corpus._entries = ((@:checkr _c ?? throw "null pointer dereference")._corpus._entries.__append__(_e?.__copy__()) : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L454"
        return { _0 : _noDupes, _1 : (null : stdgo.Error) };
    }
}
