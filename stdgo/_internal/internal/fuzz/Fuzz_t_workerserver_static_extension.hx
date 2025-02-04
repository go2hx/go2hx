package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_workerServer_asInterface) class T_workerServer_static_extension {
    @:keep
    @:tdfield
    static public function _ping( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs):stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        return (new stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse() : stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse);
    }
    @:keep
    @:tdfield
    static public function _minimizeInput( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context, _vals:stdgo.Slice<stdgo.AnyInterface>, _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>, _args:stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        var _success = false, _retErr = (null : stdgo.Error);
        var _keepCoverage = _args.keepCoverage;
        var _memBytes = @:check2r _mem._valueRef();
        var _bPtr = (stdgo.Go.setRef(_memBytes) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _count = stdgo.Go.pointer(@:check2r _mem._header()._count);
        var _shouldStop = (function():Bool {
            return ((_ctx.err() != null) || (((_args.limit > (0i64 : stdgo.GoInt64) : Bool) && (_count.value >= _args.limit : Bool) : Bool)) : Bool);
        } : () -> Bool);
        if (_shouldStop()) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                _success = __tmp__._0;
                _retErr = __tmp__._1;
                __tmp__;
            };
        };
        _count.value++;
        {
            var __tmp__ = (@:checkr _ws ?? throw "null pointer dereference")._fuzzFn(({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry));
            _retErr = @:tmpset0 __tmp__._1;
        };
        if (_keepCoverage != null) {
            if ((!stdgo._internal.internal.fuzz.Fuzz__hascoveragebit._hasCoverageBit(_keepCoverage, stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot) || (_retErr != null) : Bool)) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                    _success = __tmp__._0;
                    _retErr = __tmp__._1;
                    __tmp__;
                };
            };
        } else if (_retErr == null) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                _success = __tmp__._0;
                _retErr = __tmp__._1;
                __tmp__;
            };
        };
        @:check2r _mem._header()._rawInMem = true;
        var _tryMinimized = function(_candidate:stdgo.Slice<stdgo.GoUInt8>):Bool {
            var _prev = (_vals[(_args.index : stdgo.GoInt)] : stdgo.AnyInterface);
            {
                final __type__ = _prev;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    _vals[(_args.index : stdgo.GoInt)] = stdgo.Go.toInterface(_candidate);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    _vals[(_args.index : stdgo.GoInt)] = stdgo.Go.toInterface((_candidate : stdgo.GoString));
                } else {
                    throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
                };
            };
            (_bPtr : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_candidate);
            (_bPtr : stdgo.Slice<stdgo.GoUInt8>).__setData__((((_bPtr : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>));
            @:check2r _mem._setValueLen((_candidate.length));
            _count.value++;
            var __tmp__ = (@:checkr _ws ?? throw "null pointer dereference")._fuzzFn(({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)), __8:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _retErr = _err;
                if (_keepCoverage != null) {
                    _keepCoverage = (null : stdgo.Slice<stdgo.GoUInt8>);
                };
                return true;
            };
            if (((_keepCoverage != null) && stdgo._internal.internal.fuzz.Fuzz__iscoveragesubset._isCoverageSubset(_keepCoverage, stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot) : Bool)) {
                return true;
            };
            _vals[(_args.index : stdgo.GoInt)] = _prev;
            return false;
        };
        {
            final __type__ = _vals[(_args.index : stdgo.GoInt)];
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                stdgo._internal.internal.fuzz.Fuzz__minimizebytes._minimizeBytes((_v : stdgo.Slice<stdgo.GoUInt8>), _tryMinimized, _shouldStop);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                stdgo._internal.internal.fuzz.Fuzz__minimizebytes._minimizeBytes(_v, _tryMinimized, _shouldStop);
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _retErr };
            _success = __tmp__._0;
            _retErr = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _minimize( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs):stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse);
        try {
            var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _resp.duration = stdgo._internal.time.Time_since.since(_start?.__copy__());
                    };
                    a();
                }) });
            };
            var _mem = (@:checkr _ws ?? throw "null pointer dereference")._workerComm._memMu.__get__();
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _ws ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(@:check2r _mem._valueCopy()), _vals:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _inpHash = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(@:check2r _mem._valueCopy())?.__copy__();
            if (_args.timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                var _cancel:() -> Void = null;
                {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, _args.timeout);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancel = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            var __tmp__ = @:check2r _ws._minimizeInput(_ctx, _vals, _mem, _args?.__copy__()), _success:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_success) {
                stdgo._internal.internal.fuzz.Fuzz__writetomem._writeToMem(_vals, _mem);
                var _outHash = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(@:check2r _mem._valueCopy())?.__copy__();
                @:check2r _mem._header()._rawInMem = false;
                _resp.wroteToMem = true;
                if (_err != null) {
                    _resp.err = _err.error()?.__copy__();
                } else {
                    if (stdgo.Go.toInterface(_outHash) != stdgo.Go.toInterface(_inpHash)) {
                        _resp.coverageData = stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot;
                    } else {
                        _resp.coverageData = _args.keepCoverage;
                    };
                };
            };
            {
                final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse = _resp = _resp?.__copy__();
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _resp;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _resp;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fuzz( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs):stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse);
        try {
            if (_args.coverageData != null) {
                if ((((@:checkr _ws ?? throw "null pointer dereference")._coverageMask != null) && (_args.coverageData.length != ((@:checkr _ws ?? throw "null pointer dereference")._coverageMask.length)) : Bool)) {
                    _resp.internalErr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected size for CoverageData: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_args.coverageData.length)), stdgo.Go.toInterface(((@:checkr _ws ?? throw "null pointer dereference")._coverageMask.length)))?.__copy__();
                    return _resp = _resp?.__copy__();
                };
                (@:checkr _ws ?? throw "null pointer dereference")._coverageMask = _args.coverageData;
            };
            var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _resp.totalDuration = stdgo._internal.time.Time_since.since(_start?.__copy__());
                    };
                    a();
                }) });
            };
            if (_args.timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                var _cancel:() -> Void = null;
                {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, _args.timeout);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancel = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            var _mem = (@:checkr _ws ?? throw "null pointer dereference")._workerComm._memMu.__get__();
            (@:checkr (@:checkr _ws ?? throw "null pointer dereference")._m ?? throw "null pointer dereference")._r._save(stdgo.Go.pointer(@:check2r _mem._header()._randState), stdgo.Go.pointer(@:check2r _mem._header()._randInc));
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _resp.count = @:check2r _mem._header()._count;
                        (@:checkr _ws ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            if (((_args.limit > (0i64 : stdgo.GoInt64) : Bool) && (@:check2r _mem._header()._count >= _args.limit : Bool) : Bool)) {
                _resp.internalErr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("mem.header().count %d already exceeds args.Limit %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _mem._header()._count), stdgo.Go.toInterface(_args.limit))?.__copy__();
                {
                    final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(@:check2r _mem._valueCopy()), _originalVals:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _resp.internalErr = _err.error()?.__copy__();
                {
                    final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _vals = (new stdgo.Slice<stdgo.AnyInterface>((_originalVals.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
            _vals.__copyTo__(_originalVals);
            var _shouldStop = (function():Bool {
                return ((_args.limit > (0i64 : stdgo.GoInt64) : Bool) && (@:check2r _mem._header()._count >= _args.limit : Bool) : Bool);
            } : () -> Bool);
            var _fuzzOnce = (function(_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } {
                var _dur = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration), _cov = (null : stdgo.Slice<stdgo.GoUInt8>), _errMsg = ("" : stdgo.GoString);
                @:check2r _mem._header()._count++;
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = (@:checkr _ws ?? throw "null pointer dereference")._fuzzFn(_entry?.__copy__());
                    _dur = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    _errMsg = _err.error()?.__copy__();
                    if (_errMsg == ((stdgo.Go.str() : stdgo.GoString))) {
                        _errMsg = ("fuzz function failed with no input" : stdgo.GoString);
                    };
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } = { _0 : _dur, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _errMsg?.__copy__() };
                        _dur = __tmp__._0;
                        _cov = __tmp__._1;
                        _errMsg = __tmp__._2;
                        __tmp__;
                    };
                };
                if ((((@:checkr _ws ?? throw "null pointer dereference")._coverageMask != null) && (stdgo._internal.internal.fuzz.Fuzz__countnewcoveragebits._countNewCoverageBits((@:checkr _ws ?? throw "null pointer dereference")._coverageMask, stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } = { _0 : _dur, _1 : stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot, _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                        _dur = __tmp__._0;
                        _cov = __tmp__._1;
                        _errMsg = __tmp__._2;
                        __tmp__;
                    };
                };
                return {
                    final __tmp__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } = { _0 : _dur, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                    _dur = __tmp__._0;
                    _cov = __tmp__._1;
                    _errMsg = __tmp__._2;
                    __tmp__;
                };
            } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; });
            if (_args.warmup) {
                var __tmp__ = _fuzzOnce(({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)), _dur:stdgo._internal.time.Time_duration.Duration = __tmp__._0, __8:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _errMsg:stdgo.GoString = __tmp__._2;
                if (_errMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                    _resp.err = _errMsg?.__copy__();
                    {
                        final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                _resp.interestingDuration = _dur;
                if (stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled) {
                    _resp.coverageData = stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot;
                };
                {
                    final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_ctx.done() != null && _ctx.done().__isGet__()) {
                            __select__ = false;
                            {
                                _ctx.done().__get__();
                                {
                                    {
                                        final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else {
                            __select__ = false;
                            {
                                if ((@:check2r _mem._header()._count % (5i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                                    _vals.__copyTo__(_originalVals);
                                    (@:checkr (@:checkr _ws ?? throw "null pointer dereference")._m ?? throw "null pointer dereference")._r._save(stdgo.Go.pointer(@:check2r _mem._header()._randState), stdgo.Go.pointer(@:check2r _mem._header()._randInc));
                                };
                                @:check2r (@:checkr _ws ?? throw "null pointer dereference")._m._mutate(_vals, @:check2r _mem._valueRef().capacity);
                                var _entry = ({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry);
                                var __tmp__ = _fuzzOnce(_entry?.__copy__()), _dur:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _cov:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _errMsg:stdgo.GoString = __tmp__._2;
                                if (_errMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                                    _resp.err = _errMsg?.__copy__();
                                    {
                                        final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                                if (_cov != null) {
                                    _resp.coverageData = _cov;
                                    _resp.interestingDuration = _dur;
                                    {
                                        final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                                if (_shouldStop()) {
                                    {
                                        final __ret__:stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse = _resp = _resp?.__copy__();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _resp;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _resp;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _serve( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((@:checkr _ws ?? throw "null pointer dereference")._workerComm._fuzzOut));
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(({ _ctx : _ctx, _r : stdgo.Go.asInterface((@:checkr _ws ?? throw "null pointer dereference")._workerComm._fuzzIn) } : stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader>)));
        while (true) {
            var _c:stdgo._internal.internal.fuzz.Fuzz_t_call.T_call = ({} : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
            {
                var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_call.T_call>)))) : stdgo.Error);
                if (_err != null) {
                    if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_ctx.err())) : Bool)) {
                        return (null : stdgo.Error);
                    } else {
                        return _err;
                    };
                };
            };
            var _resp:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            if ((_c.fuzz != null && ((_c.fuzz : Dynamic).__nil__ == null || !(_c.fuzz : Dynamic).__nil__))) {
                _resp = stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ws._fuzz(_ctx, (_c.fuzz : stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs)?.__copy__())));
            } else if ((_c.minimize != null && ((_c.minimize : Dynamic).__nil__ == null || !(_c.minimize : Dynamic).__nil__))) {
                _resp = stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ws._minimize(_ctx, (_c.minimize : stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs)?.__copy__())));
            } else if ((_c.ping != null && ((_c.ping : Dynamic).__nil__ == null || !(_c.ping : Dynamic).__nil__))) {
                _resp = stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ws._ping(_ctx, (_c.ping : stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs)?.__copy__())));
            } else {
                return stdgo._internal.errors.Errors_new_.new_(("no arguments provided for any call" : stdgo.GoString));
            };
            {
                var _err = (@:check2r _enc.encode(_resp) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
    }
}
