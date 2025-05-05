package stdgo._internal.internal.fuzz;
function _newCoordinator(_opts:stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts):{ var _0 : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L657"
        for (_i => _ in _opts.seed) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L658"
            if (((_opts.seed[(_i : stdgo.GoInt)].data == null) && (_opts.seed[(_i : stdgo.GoInt)].values != null) : Bool)) {
                _opts.seed[(_i : stdgo.GoInt)].data = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_opts.seed[(_i : stdgo.GoInt)].values : Array<stdgo.AnyInterface>));
            };
        };
        var _c = (stdgo.Go.setRef(({ _opts : _opts?.__copy__(), _startTime : stdgo._internal.time.Time_now.now()?.__copy__(), _inputC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>), _minimizeC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>), _resultC : (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>(0, () -> ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>), _timeLastLog : stdgo._internal.time.Time_now.now()?.__copy__(), _corpus : ({ _hashes : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 32));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, Bool>) } : stdgo._internal.internal.fuzz.Fuzz_t_corpus.T_corpus) } : stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L671"
        {
            var _err = (_c._readCache() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L672"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L674"
        if (((_opts.minimizeLimit > (0i64 : stdgo.GoInt64) : Bool) || (_opts.minimizeTimeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L675"
            for (__8 => _t in _opts.types) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L676"
                if (stdgo._internal.internal.fuzz.Fuzz__isminimizable._isMinimizable(_t)) {
                    (@:checkr _c ?? throw "null pointer dereference")._minimizationAllowed = true;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L678"
                    break;
                };
            };
        };
        var _covSize = (stdgo._internal.internal.fuzz.Fuzz__coverage._coverage().length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L684"
        if (_covSize == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L685"
            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("warning: the test binary was not built with coverage instrumentation, so fuzzing will run without coverage guidance and may be inefficient\n" : stdgo.GoString));
            (@:checkr _c ?? throw "null pointer dereference")._warmupInputCount = ((@:checkr _c ?? throw "null pointer dereference")._opts.seed.length);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L690"
            for (__8 => _e in (@:checkr _c ?? throw "null pointer dereference")._opts.seed) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L691"
                (@:checkr _c ?? throw "null pointer dereference")._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
        } else {
            (@:checkr _c ?? throw "null pointer dereference")._warmupInputCount = ((@:checkr _c ?? throw "null pointer dereference")._corpus._entries.length);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L695"
            for (__8 => _e in (@:checkr _c ?? throw "null pointer dereference")._corpus._entries) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L696"
                (@:checkr _c ?? throw "null pointer dereference")._inputQueue._enqueue(stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
            };
            (@:checkr _c ?? throw "null pointer dereference")._coverageMask = (new stdgo.Slice<stdgo.GoUInt8>((_covSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _c ?? throw "null pointer dereference")._warmupInputLeft = (@:checkr _c ?? throw "null pointer dereference")._warmupInputCount;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L703"
        if (((@:checkr _c ?? throw "null pointer dereference")._corpus._entries.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L704"
            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw "null pointer dereference")._opts.log, ("warning: starting with empty corpus\n" : stdgo.GoString));
            var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L706"
            for (__8 => _t in _opts.types) {
                _vals = (_vals.__append__(stdgo._internal.internal.fuzz.Fuzz__zerovalue._zeroValue(_t)) : stdgo.Slice<stdgo.AnyInterface>);
            };
            var _data = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_vals : Array<stdgo.AnyInterface>));
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data)?.__copy__();
            var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L712"
            _c._addCorpusEntries(false, ({ path : _name?.__copy__(), data : _data, parent : ("" : stdgo.GoString), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/fuzz.go#L715"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
