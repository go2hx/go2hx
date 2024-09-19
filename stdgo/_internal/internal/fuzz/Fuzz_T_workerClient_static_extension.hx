package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_workerClient_asInterface) class T_workerClient_static_extension {
    @:keep
    static public function _callLocked( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>, _ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.internal.fuzz.Fuzz_T_call.T_call, _resp:stdgo.AnyInterface):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> = _wc;
        var _err = (null : stdgo.Error);
        var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface(_wc._workerComm._fuzzIn));
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(({ _ctx : _ctx, _r : stdgo.Go.asInterface(_wc._workerComm._fuzzOut) } : stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_contextReader.T_contextReader>)));
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(_c)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _dec.decode(_resp);
    }
    @:keep
    static public function _ping( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> = _wc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _wc._mu.lock();
            __deferstack__.unshift(() -> _wc._mu.unlock());
            var _c = ({ ping : (stdgo.Go.setRef((new stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs() : stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs)) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingArgs.T_pingArgs>) } : stdgo._internal.internal.fuzz.Fuzz_T_call.T_call);
            var _resp:stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse = ({} : stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse);
            {
                final __ret__:stdgo.Error = _wc._callLocked(_ctx, _c?.__copy__(), stdgo.Go.toInterface((stdgo.Go.setRef(_resp) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_pingResponse.T_pingResponse>)));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _fuzz( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>, _ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> = _wc;
        var __deferstack__:Array<Void -> Void> = [];
        var _entryOut = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _isInternalError = false, _err = (null : stdgo.Error);
        try {
            _wc._mu.lock();
            __deferstack__.unshift(() -> _wc._mu.unlock());
            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.internal.fuzz.Fuzz__errSharedMemClosed._errSharedMemClosed };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _mem._header()._count = (0i64 : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_entryIn?.__copy__()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _wc._workerComm._memMu.__send__(_mem);
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _2 : true, _3 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _mem._setValue(_inp);
            _wc._workerComm._memMu.__send__(_mem);
            var _c = ({ fuzz : (stdgo.Go.setRef(_args) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzArgs.T_fuzzArgs>) } : stdgo._internal.internal.fuzz.Fuzz_T_call.T_call);
            var _callErr = (_wc._callLocked(_ctx, _c?.__copy__(), stdgo.Go.toInterface((stdgo.Go.setRef(_resp) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse>))) : stdgo.Error);
            if (_resp.internalErr != (stdgo.Go.str())) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.errors.Errors_new_.new_(_resp.internalErr?.__copy__()) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = _wc._workerComm._memMu.__smartGet__();
                _mem = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.internal.fuzz.Fuzz__errSharedMemClosed._errSharedMemClosed };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _wc._workerComm._memMu.__send__(_mem);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            _resp.count = _mem._header()._count;
            if (!stdgo._internal.bytes.Bytes_equal.equal(_inp, _mem._valueRef())) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.errors.Errors_new_.new_(("workerServer.fuzz modified input" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _needEntryOut = ((_callErr != null || _resp.err != (stdgo.Go.str()) : Bool) || ((!_args.warmup && (_resp.coverageData != null) : Bool)) : Bool);
            if (_needEntryOut) {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalCorpusFile._unmarshalCorpusFile(_inp), _valuesOut:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse() : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse), _2 : true, _3 : stdgo._internal.fmt.Fmt_errorf.errorf(("unmarshaling fuzz input value after call: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _wc._m._r._restore(_mem._header()._randState, _mem._header()._randInc);
                if (!_args.warmup) {
                    var _numMutations = (((((_resp.count - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) % (5i64 : stdgo.GoInt64) : stdgo.GoInt64)) + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    {
                        var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                        stdgo.Go.cfor((_i < _numMutations : Bool), _i++, {
                            _wc._m._mutate(_valuesOut, _mem._valueRef().capacity);
                        });
                    };
                };
                var _dataOut = stdgo._internal.internal.fuzz.Fuzz__marshalCorpusFile._marshalCorpusFile(...(_valuesOut : Array<stdgo.AnyInterface>));
                var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_dataOut)?.__copy__();
                var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__() : stdgo.GoString);
                _entryOut = ({ parent : _entryIn.path?.__copy__(), path : _name?.__copy__(), data : _dataOut, generation : (_entryIn.generation + (1 : stdgo.GoInt) : stdgo.GoInt), values : (null : stdgo.Slice<stdgo.AnyInterface>), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry);
                if (_args.warmup) {
                    _entryOut.isSeed = _entryIn.isSeed;
                };
            };
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _entryOut?.__copy__(), _1 : _resp?.__copy__(), _2 : false, _3 : _callErr };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _entryOut, _1 : _resp, _2 : _isInternalError, _3 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_fuzzResponse.T_fuzzResponse; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : _entryOut, _1 : _resp, _2 : _isInternalError, _3 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _minimize( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>, _ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs):{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> = _wc;
        var __deferstack__:Array<Void -> Void> = [];
        var _entryOut = ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _resp = ({} : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _retErr = (null : stdgo.Error);
        try {
            _wc._mu.lock();
            __deferstack__.unshift(() -> _wc._mu.unlock());
            var __tmp__ = _wc._workerComm._memMu.__smartGet__(), _mem = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : stdgo._internal.internal.fuzz.Fuzz__errSharedMemClosed._errSharedMemClosed };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _wc._workerComm._memMu.__send__(_mem);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            _mem._header()._count = (0i64 : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__corpusEntryData._corpusEntryData(_entryIn?.__copy__()), _inp:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _mem._setValue(_inp);
            _entryOut = _entryIn?.__copy__();
            {
                var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalCorpusFile._unmarshalCorpusFile(_inp);
                _entryOut.values = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("workerClient.minimize unmarshaling provided value: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            for (_i => _v in _entryOut.values) {
                if (!stdgo._internal.internal.fuzz.Fuzz__isMinimizable._isMinimizable(stdgo._internal.reflect.Reflect_typeOf.typeOf(_v))) {
                    continue;
                };
                _wc._workerComm._memMu.__send__(_mem);
                _args.index = _i;
                var _c = ({ minimize : (stdgo.Go.setRef(_args) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeArgs.T_minimizeArgs>) } : stdgo._internal.internal.fuzz.Fuzz_T_call.T_call);
                var _callErr = (_wc._callLocked(_ctx, _c?.__copy__(), stdgo.Go.toInterface((stdgo.Go.setRef(_resp) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse>))) : stdgo.Error);
                {
                    var __tmp__ = _wc._workerComm._memMu.__smartGet__();
                    _mem = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : stdgo._internal.internal.fuzz.Fuzz__errSharedMemClosed._errSharedMemClosed };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if (_callErr != null) {
                    _retErr = _callErr;
                    if (!_mem._header()._rawInMem) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryIn?.__copy__(), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : _retErr };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __type__ = _entryOut.values[(_i : stdgo.GoInt)];
                        if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            _entryOut.values[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((_mem._valueCopy() : stdgo.GoString));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                            _entryOut.values[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(_mem._valueCopy());
                        } else {
                            throw stdgo.Go.toInterface(("impossible" : stdgo.GoString));
                        };
                    };
                    _entryOut.data = stdgo._internal.internal.fuzz.Fuzz__marshalCorpusFile._marshalCorpusFile(...(_entryOut.values : Array<stdgo.AnyInterface>));
                    break;
                };
                if (_resp.wroteToMem) {
                    _entryOut.data = _mem._valueCopy();
                    {
                        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalCorpusFile._unmarshalCorpusFile(_entryOut.data);
                        _entryOut.values = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : ({ parent : ("" : stdgo.GoString), path : ("" : stdgo.GoString), data : (null : stdgo.Slice<stdgo.GoUInt8>), values : (null : stdgo.Slice<stdgo.AnyInterface>), generation : (0 : stdgo.GoInt), isSeed : false } : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry), _1 : (new stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse() : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("workerClient.minimize unmarshaling minimized value: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                if (_args.timeout != ((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                    _args.timeout = (_args.timeout - (_resp.duration) : stdgo._internal.time.Time_Duration.Duration);
                    if ((_args.timeout <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        break;
                    };
                };
                if (_args.limit != ((0i64 : stdgo.GoInt64))) {
                    _args.limit = (_args.limit - (_mem._header()._count) : stdgo.GoInt64);
                    if ((_args.limit <= (0i64 : stdgo.GoInt64) : Bool)) {
                        break;
                    };
                };
            };
            _resp.count = _mem._header()._count;
            var _h = stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_entryOut.data)?.__copy__();
            _entryOut.path = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface((_h.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryOut?.__copy__(), _1 : _resp?.__copy__(), _2 : _retErr };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryOut, _1 : _resp, _2 : _retErr };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry; var _1 : stdgo._internal.internal.fuzz.Fuzz_T_minimizeResponse.T_minimizeResponse; var _2 : stdgo.Error; } = { _0 : _entryOut, _1 : _resp, _2 : _retErr };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function close( _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>):stdgo.Error {
        @:recv var _wc:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient> = _wc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _wc._mu.lock();
            __deferstack__.unshift(() -> _wc._mu.unlock());
            {
                var _err = (_wc._workerComm._fuzzIn.close() : stdgo.Error);
                if (_err != null) {
                    _wc._workerComm._fuzzOut.close();
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(_wc._workerComm._fuzzOut)), __8:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _wc._workerComm._fuzzOut.close();
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                final __ret__:stdgo.Error = _wc._workerComm._fuzzOut.close();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
