package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_workerServer_asInterface) class T_workerServer_static_extension {
    @:keep
    @:tdfield
    static public function _ping( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context, _args:stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs):stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L932"
        return (new stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse() : stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse);
    }
    @:keep
    @:tdfield
    static public function _minimizeInput( _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>, _ctx:stdgo._internal.context.Context_context.Context, _vals:stdgo.Slice<stdgo.AnyInterface>, _mem:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>, _args:stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer> = _ws;
        var _success = false, _retErr = (null : stdgo.Error);
        var _keepCoverage = _args.keepCoverage;
        var _memBytes = _mem._valueRef();
        var _bPtr = (stdgo.Go.setRef(_memBytes) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _count = stdgo.Go.pointer(_mem._header()._count);
        var _shouldStop = (function():Bool {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L856"
            return ((_ctx.err() != null) || (((_args.limit > (0i64 : stdgo.GoInt64) : Bool) && (_count.value >= _args.limit : Bool) : Bool)) : Bool);
        } : () -> Bool);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L859"
        if (_shouldStop()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L860"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                _success = __tmp__._0;
                _retErr = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L866"
        _count.value++;
        {
            var __tmp__ = (@:checkr _ws ?? throw "null pointer dereference")._fuzzFn(({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry));
            _retErr = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L868"
        if (_keepCoverage != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L869"
            if ((!stdgo._internal.internal.fuzz.Fuzz__hascoveragebit._hasCoverageBit(_keepCoverage, stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot) || (_retErr != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L870"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                    _success = __tmp__._0;
                    _retErr = __tmp__._1;
                    __tmp__;
                };
            };
        } else if (_retErr == null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L873"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                _success = __tmp__._0;
                _retErr = __tmp__._1;
                __tmp__;
            };
        };
        _mem._header()._rawInMem = true;
        var _tryMinimized = function(_candidate:stdgo.Slice<stdgo.GoUInt8>):Bool {
            var _prev = (_vals[(_args.index : stdgo.GoInt)] : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L883"
            {
                final __type__ = _prev;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    _vals[(_args.index : stdgo.GoInt)] = stdgo.Go.toInterface(_candidate);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    _vals[(_args.index : stdgo.GoInt)] = stdgo.Go.toInterface((_candidate : stdgo.GoString));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L889"
                    throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L891"
            (_bPtr : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_candidate);
            (_bPtr : stdgo.Slice<stdgo.GoUInt8>).__setData__((((_bPtr : stdgo.Slice<stdgo.GoUInt8>)).__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L893"
            _mem._setValueLen((_candidate.length));
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L894"
            _count.value++;
            var __tmp__ = (@:checkr _ws ?? throw "null pointer dereference")._fuzzFn(({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)), __8:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L896"
            if (_err != null) {
                _retErr = _err;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L898"
                if (_keepCoverage != null) {
                    _keepCoverage = (null : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L904"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L907"
            if (((_keepCoverage != null) && stdgo._internal.internal.fuzz.Fuzz__iscoveragesubset._isCoverageSubset(_keepCoverage, stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L908"
                return true;
            };
            _vals[(_args.index : stdgo.GoInt)] = _prev;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L911"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L913"
        {
            final __type__ = _vals[(_args.index : stdgo.GoInt)];
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L915"
                stdgo._internal.internal.fuzz.Fuzz__minimizebytes._minimizeBytes((_v : stdgo.Slice<stdgo.GoUInt8>), _tryMinimized, _shouldStop);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L917"
                stdgo._internal.internal.fuzz.Fuzz__minimizebytes._minimizeBytes(_v, _tryMinimized, _shouldStop);
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L919"
                throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L921"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _retErr };
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
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L807"
                        (@:checkr _ws ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_mem._valueCopy()), _vals:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L809"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L810"
                throw stdgo.Go.toInterface(_err);
            };
            var _inpHash = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_mem._valueCopy())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L813"
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
            var __tmp__ = _ws._minimizeInput(_ctx, _vals, _mem, _args?.__copy__()), _success:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L822"
            if (_success) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L823"
                stdgo._internal.internal.fuzz.Fuzz__writetomem._writeToMem(_vals, _mem);
                var _outHash = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_mem._valueCopy())?.__copy__();
                _mem._header()._rawInMem = false;
                _resp.wroteToMem = true;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L827"
                if (_err != null) {
                    _resp.err = _err.error()?.__copy__();
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L835"
                    if (stdgo.Go.toInterface(_outHash) != stdgo.Go.toInterface(_inpHash)) {
                        _resp.coverageData = stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot;
                    } else {
                        _resp.coverageData = _args.keepCoverage;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L842"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L707"
            if (_args.coverageData != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L708"
                if ((((@:checkr _ws ?? throw "null pointer dereference")._coverageMask != null) && (_args.coverageData.length != ((@:checkr _ws ?? throw "null pointer dereference")._coverageMask.length)) : Bool)) {
                    _resp.internalErr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected size for CoverageData: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_args.coverageData.length)), stdgo.Go.toInterface(((@:checkr _ws ?? throw "null pointer dereference")._coverageMask.length)))?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L710"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L717"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L723"
            (@:checkr (@:checkr _ws ?? throw "null pointer dereference")._m ?? throw "null pointer dereference")._r._save(stdgo.Go.pointer(_mem._header()._randState), stdgo.Go.pointer(_mem._header()._randInc));
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _resp.count = _mem._header()._count;
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L726"
                        (@:checkr _ws ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L728"
            if (((_args.limit > (0i64 : stdgo.GoInt64) : Bool) && (_mem._header()._count >= _args.limit : Bool) : Bool)) {
                _resp.internalErr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("mem.header().count %d already exceeds args.Limit %d" : stdgo.GoString), stdgo.Go.toInterface(_mem._header()._count), stdgo.Go.toInterface(_args.limit))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L730"
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
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_mem._valueCopy()), _originalVals:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L734"
            if (_err != null) {
                _resp.internalErr = _err.error()?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L736"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L739"
            _vals.__copyTo__(_originalVals);
            var _shouldStop = (function():Bool {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L742"
                return ((_args.limit > (0i64 : stdgo.GoInt64) : Bool) && (_mem._header()._count >= _args.limit : Bool) : Bool);
            } : () -> Bool);
            var _fuzzOnce = (function(_entry:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } {
                var _dur = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration), _cov = (null : stdgo.Slice<stdgo.GoUInt8>), _errMsg = ("" : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L745"
                _mem._header()._count++;
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = (@:checkr _ws ?? throw "null pointer dereference")._fuzzFn(_entry?.__copy__());
                    _dur = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L748"
                if (_err != null) {
                    _errMsg = _err.error()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L750"
                    if (_errMsg == ((stdgo.Go.str() : stdgo.GoString))) {
                        _errMsg = ("fuzz function failed with no input" : stdgo.GoString);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L753"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } = { _0 : _dur, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _errMsg?.__copy__() };
                        _dur = __tmp__._0;
                        _cov = __tmp__._1;
                        _errMsg = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L755"
                if ((((@:checkr _ws ?? throw "null pointer dereference")._coverageMask != null) && (stdgo._internal.internal.fuzz.Fuzz__countnewcoveragebits._countNewCoverageBits((@:checkr _ws ?? throw "null pointer dereference")._coverageMask, stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L756"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } = { _0 : _dur, _1 : stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot, _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                        _dur = __tmp__._0;
                        _cov = __tmp__._1;
                        _errMsg = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L758"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; } = { _0 : _dur, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                    _dur = __tmp__._0;
                    _cov = __tmp__._1;
                    _errMsg = __tmp__._2;
                    __tmp__;
                };
            } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> { var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoString; });
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L761"
            if (_args.warmup) {
                var __tmp__ = _fuzzOnce(({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry)), _dur:stdgo._internal.time.Time_duration.Duration = __tmp__._0, __8:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _errMsg:stdgo.GoString = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L763"
                if (_errMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                    _resp.err = _errMsg?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L765"
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
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L768"
                if (stdgo._internal.internal.fuzz.Fuzz__coverageenabled._coverageEnabled) {
                    _resp.coverageData = stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L771"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L774"
            while (true) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L775"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L777"
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
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L779"
                                if ((_mem._header()._count % (5i64 : stdgo.GoInt64) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L780"
                                    _vals.__copyTo__(_originalVals);
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L781"
                                    (@:checkr (@:checkr _ws ?? throw "null pointer dereference")._m ?? throw "null pointer dereference")._r._save(stdgo.Go.pointer(_mem._header()._randState), stdgo.Go.pointer(_mem._header()._randInc));
                                };
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L783"
                                (@:checkr _ws ?? throw "null pointer dereference")._m._mutate(_vals, _mem._valueRef().capacity);
                                var _entry = ({ values : _vals, parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry);
                                var __tmp__ = _fuzzOnce(_entry?.__copy__()), _dur:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _cov:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _errMsg:stdgo.GoString = __tmp__._2;
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L787"
                                if (_errMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                                    _resp.err = _errMsg?.__copy__();
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L789"
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
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L791"
                                if (_cov != null) {
                                    _resp.coverageData = _cov;
                                    _resp.interestingDuration = _dur;
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L794"
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
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L796"
                                if (_shouldStop()) {
                                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L797"
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
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L656"
        while (true) {
            var _c:stdgo._internal.internal.fuzz.Fuzz_t_call.T_call = ({} : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L658"
            {
                var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_call.T_call>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L659"
                    if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_ctx.err())) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L660"
                        return (null : stdgo.Error);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L662"
                        return _err;
                    };
                };
            };
            var _resp:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L667"
            if (({
                final value = _c.fuzz;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _resp = stdgo.Go.toInterface(stdgo.Go.asInterface(_ws._fuzz(_ctx, (_c.fuzz : stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs)?.__copy__())));
            } else if (({
                final value = _c.minimize;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _resp = stdgo.Go.toInterface(stdgo.Go.asInterface(_ws._minimize(_ctx, (_c.minimize : stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs)?.__copy__())));
            } else if (({
                final value = _c.ping;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _resp = stdgo.Go.toInterface(stdgo.Go.asInterface(_ws._ping(_ctx, (_c.ping : stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs)?.__copy__())));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L675"
                return stdgo._internal.errors.Errors_new_.new_(("no arguments provided for any call" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L678"
            {
                var _err = (_enc.encode(_resp) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/worker.go#L679"
                    return _err;
                };
            };
        };
    }
}
