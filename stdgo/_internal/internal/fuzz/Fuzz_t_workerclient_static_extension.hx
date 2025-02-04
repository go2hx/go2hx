package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_workerClient_asInterface) class T_workerClient_static_extension {
    @:keep
    @:tdfield
    static public function _callLocked( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.internal.fuzz.Fuzz_t_call.T_call, _resp:stdgo.AnyInterface):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var _err = (null : stdgo.Error);
        var _enc = stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface((@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzIn));
        var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(({ _ctx : _ctx, _r : stdgo.Go.asInterface((@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzOut) } : stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader>)));
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_c))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _err = @:check2r _dec.decode(_resp);
    }
    @:keep
    @:tdfield
    static public function _ping( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _c = ({ ping : (stdgo.Go.setRef((new stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs() : stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>) } : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
            var _resp:stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse = ({} : stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse);
            {
                final __ret__:stdgo.Error = @:check2r _wc._callLocked(_ctx, _c?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_resp) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingresponse.T_pingResponse>))));
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fuzz( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _entryOut = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _isInternalError = false, _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r _mem._header()._count = (0i64 : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusentrydata._corpusEntryData(_entryIn?.__copy__()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : _err };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r _mem._setValue(_inp);
            (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
            var _c = ({ fuzz : (stdgo.Go.setRef(_args) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>) } : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
            var _callErr = (@:check2r _wc._callLocked(_ctx, _c?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_resp) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse>)))) : stdgo.Error);
            if (_resp.internalErr != ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.errors.Errors_new_.new_(_resp.internalErr?.__copy__()) };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__smartGet__();
                _mem = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            _resp.count = @:check2r _mem._header()._count;
            if (!stdgo._internal.bytes.Bytes_equal.equal(_inp, @:check2r _mem._valueRef())) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.errors.Errors_new_.new_(("workerServer.fuzz modified input" : stdgo.GoString)) };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _isInternalError = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _needEntryOut = ((_callErr != null || _resp.err != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((!_args.warmup && (_resp.coverageData != null) : Bool)) : Bool);
            if (_needEntryOut) {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_inp), _valuesOut:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("unmarshaling fuzz input value after call: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                            _entryOut = __tmp__._0;
                            _resp = __tmp__._1;
                            _isInternalError = __tmp__._2;
                            _err = __tmp__._3;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                (@:checkr (@:checkr _wc ?? throw "null pointer dereference")._m ?? throw "null pointer dereference")._r._restore(@:check2r _mem._header()._randState, @:check2r _mem._header()._randInc);
                if (!_args.warmup) {
                    var _numMutations = (((((_resp.count - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) % (5i64 : stdgo.GoInt64) : stdgo.GoInt64)) + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    {
                        var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                        while ((_i < _numMutations : Bool)) {
                            @:check2r (@:checkr _wc ?? throw "null pointer dereference")._m._mutate(_valuesOut, @:check2r _mem._valueRef().capacity);
                            _i++;
                        };
                    };
                };
                var _dataOut = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_valuesOut : Array<stdgo.AnyInterface>));
                var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_dataOut)?.__copy__();
                var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__() : stdgo.GoString);
                _entryOut = ({ parent : _entryIn.path?.__copy__(), path : _name?.__copy__(), data : _dataOut, generation : (_entryIn.generation + (1 : stdgo.GoInt) : stdgo.GoInt), values : (null : stdgo.Slice<stdgo.AnyInterface>), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry);
                if (_args.warmup) {
                    _entryOut.isSeed = _entryIn.isSeed;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_fuzzresponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _entryOut?.__copy__(), _1 : _resp?.__copy__(), _2 : false, _3 : _callErr };
                    _entryOut = __tmp__._0;
                    _resp = __tmp__._1;
                    _isInternalError = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
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
                return { _0 : _entryOut, _1 : _resp, _2 : _isInternalError, _3 : _err };
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
                return { _0 : _entryOut, _1 : _resp, _2 : _isInternalError, _3 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _minimize( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, _ctx:stdgo._internal.context.Context_context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _entryOut = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _retErr = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _retErr = __tmp__._2;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                    };
                    a();
                }) });
            };
            @:check2r _mem._header()._count = (0i64 : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusentrydata._corpusEntryData(_entryIn?.__copy__()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : _err };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _retErr = __tmp__._2;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r _mem._setValue(_inp);
            _entryOut = _entryIn?.__copy__();
            {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_inp);
                _entryOut.values = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("workerClient.minimize unmarshaling provided value: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        _entryOut = __tmp__._0;
                        _resp = __tmp__._1;
                        _retErr = __tmp__._2;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            for (_i => _v in _entryOut.values) {
                if (!stdgo._internal.internal.fuzz.Fuzz__isminimizable._isMinimizable(stdgo._internal.reflect.Reflect_typeof.typeOf(_v))) {
                    continue;
                };
                (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__send__(_mem);
                _args.index = _i;
                var _c = ({ minimize : (stdgo.Go.setRef(_args) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>) } : stdgo._internal.internal.fuzz.Fuzz_t_call.T_call);
                var _callErr = (@:check2r _wc._callLocked(_ctx, _c?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_resp) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse>)))) : stdgo.Error);
                {
                    var __tmp__ = (@:checkr _wc ?? throw "null pointer dereference")._workerComm._memMu.__smartGet__();
                    _mem = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.internal.fuzz.Fuzz__errsharedmemclosed._errSharedMemClosed };
                            _entryOut = __tmp__._0;
                            _resp = __tmp__._1;
                            _retErr = __tmp__._2;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if (_callErr != null) {
                    _retErr = _callErr;
                    if (!@:check2r _mem._header()._rawInMem) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryIn?.__copy__(), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : _retErr };
                                _entryOut = __tmp__._0;
                                _resp = __tmp__._1;
                                _retErr = __tmp__._2;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __type__ = _entryOut.values[(_i : stdgo.GoInt)];
                        if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            _entryOut.values[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _mem._valueCopy() : stdgo.GoString));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                            _entryOut.values[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(@:check2r _mem._valueCopy());
                        } else {
                            throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
                        };
                    };
                    _entryOut.data = stdgo._internal.internal.fuzz.Fuzz__marshalcorpusfile._marshalCorpusFile(...(_entryOut.values : Array<stdgo.AnyInterface>));
                    break;
                };
                if (_resp.wroteToMem) {
                    _entryOut.data = @:check2r _mem._valueCopy();
                    {
                        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_entryOut.data);
                        _entryOut.values = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("workerClient.minimize unmarshaling minimized value: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                                _entryOut = __tmp__._0;
                                _resp = __tmp__._1;
                                _retErr = __tmp__._2;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                if (_args.timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                    _args.timeout = (_args.timeout - (_resp.duration) : stdgo._internal.time.Time_duration.Duration);
                    if ((_args.timeout <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        break;
                    };
                };
                if (_args.limit != ((0i64 : stdgo.GoInt64))) {
                    _args.limit = (_args.limit - (@:check2r _mem._header()._count) : stdgo.GoInt64);
                    if ((_args.limit <= (0i64 : stdgo.GoInt64) : Bool)) {
                        break;
                    };
                };
            };
            _resp.count = @:check2r _mem._header()._count;
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_entryOut.data)?.__copy__();
            _entryOut.path = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_t_minimizeresponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryOut?.__copy__(), _1 : _resp?.__copy__(), _2 : _retErr };
                    _entryOut = __tmp__._0;
                    _resp = __tmp__._1;
                    _retErr = __tmp__._2;
                    __tmp__;
                };
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
                return { _0 : _entryOut, _1 : _resp, _2 : _retErr };
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
                return { _0 : _entryOut, _1 : _resp, _2 : _retErr };
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = _wc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _wc ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _err = (@:check2r (@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzIn.close() : stdgo.Error);
                if (_err != null) {
                    @:check2r (@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzOut.close();
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface((@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzOut)), __8:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r (@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzOut.close();
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            {
                final __ret__:stdgo.Error = @:check2r (@:checkr _wc ?? throw "null pointer dereference")._workerComm._fuzzOut.close();
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
}
