package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
function _newCoordinator(_opts:stdgo._internal.internal.fuzz.Fuzz_CoordinateFuzzingOpts.CoordinateFuzzingOpts):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>; var _1 : stdgo.Error; } {
        for (_i => _ in _opts.seed) {
            if (((_opts.seed[(_i : stdgo.GoInt)].data == null) && (_opts.seed[(_i : stdgo.GoInt)].values != null) : Bool)) {
                _opts.seed[(_i : stdgo.GoInt)].data = stdgo._internal.internal.fuzz.Fuzz__marshalCorpusFile._marshalCorpusFile(...(_opts.seed[(_i : stdgo.GoInt)].values : Array<stdgo.AnyInterface>));
            };
        };
        var _c = (stdgo.Go.setRef(({ _opts : _opts?.__copy__(), _startTime : stdgo._internal.time.Time_now.now()?.__copy__(), _inputC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzInput.T_fuzzInput>), _minimizeC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzMinimizeInput.T_fuzzMinimizeInput>), _resultC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResult.T_fuzzResult>), _timeLastLog : stdgo._internal.time.Time_now.now()?.__copy__(), _corpus : ({ _hashes : ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 32));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) } : stdgo._internal.internal.fuzz.Fuzz_T_corpus.T_corpus) } : stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_coordinator.T_coordinator>);
        {
            var _err = (_c._readCache() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (((_opts.minimizeLimit > (0i64 : stdgo.GoInt64) : Bool) || (_opts.minimizeTimeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
            for (__8 => _t in _opts.types) {
                if (stdgo._internal.internal.fuzz.Fuzz__isMinimizable._isMinimizable(_t)) {
                    _c._minimizationAllowed = true;
                    break;
                };
            };
        };
        var _covSize = (stdgo._internal.internal.fuzz.Fuzz__coverage._coverage().length : stdgo.GoInt);
        if (_covSize == ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("warning: the test binary was not built with coverage instrumentation, so fuzzing will run without coverage guidance and may be inefficient\n" : stdgo.GoString));
            _c._warmupInputCount = (_c._opts.seed.length);
            for (__8 => _e in _c._opts.seed) {
                _c._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        } else {
            _c._warmupInputCount = (_c._corpus._entries.length);
            for (__8 => _e in _c._corpus._entries) {
                _c._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
            _c._coverageMask = (new stdgo.Slice<stdgo.GoUInt8>((_covSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _c._warmupInputLeft = _c._warmupInputCount;
        if ((_c._corpus._entries.length) == ((0 : stdgo.GoInt))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_c._opts.log, ("warning: starting with empty corpus\n" : stdgo.GoString));
            var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            for (__8 => _t in _opts.types) {
                _vals = (_vals.__append__(stdgo._internal.internal.fuzz.Fuzz__zeroValue._zeroValue(_t)));
            };
            var _data = stdgo._internal.internal.fuzz.Fuzz__marshalCorpusFile._marshalCorpusFile(...(_vals : Array<stdgo.AnyInterface>));
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)?.__copy__();
            var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__() : stdgo.GoString);
            _c._addCorpusEntries(false, ({ path : _name?.__copy__(), data : _data, parent : ("" : stdgo.GoString), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry));
        };
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
