package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    static public function decodeValue( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_v.isValid()) {
                if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_v.isNil() : Bool)) {} else if (!_v.canSet()) {
                    return stdgo._internal.errors.Errors_new_.new_(("gob: DecodeValue of unassignable value" : stdgo.GoString));
                };
            };
            _dec._mutex.lock();
            __deferstack__.unshift(() -> _dec._mutex.unlock());
            _dec._buf.reset();
            _dec._err = (null : stdgo.Error);
            var _id = (_dec._decodeTypeSequence(false) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
            if (_dec._err == null) {
                _dec._decodeValue(_id, _v?.__copy__());
            };
            {
                final __ret__:stdgo.Error = _dec._err;
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
    static public function decode( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _e:stdgo.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        if (_e == null) {
            return _dec.decodeValue((new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value));
        };
        var _value = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_e)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_value.type().kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _dec._err = stdgo._internal.errors.Errors_new_.new_(("gob: attempt to decode into a non-pointer" : stdgo.GoString));
            return _dec._err;
        };
        return _dec.decodeValue(_value?.__copy__());
    }
    @:keep
    static public function _decodeTypeSequence( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _isInterface:Bool):stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _firstMessage = (true : Bool);
        while (_dec._err == null) {
            if (_dec._buf.len() == ((0 : stdgo.GoInt))) {
                if (!_dec._recvMessage()) {
                    if ((!_firstMessage && (stdgo.Go.toInterface(_dec._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                        _dec._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    break;
                };
            };
            var _id = (_dec._nextInt() : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
            if ((_id >= (0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : Bool)) {
                return _id;
            };
            _dec._recvType(-_id);
            if (_dec._err != null) {
                break;
            };
            if ((_dec._buf.len() > (0 : stdgo.GoInt) : Bool)) {
                if (!_isInterface) {
                    _dec._err = stdgo._internal.errors.Errors_new_.new_(("extra data in buffer" : stdgo.GoString));
                    break;
                };
                _dec._nextUint();
            };
            _firstMessage = false;
        };
        return (-1 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
    }
    @:keep
    static public function _nextUint( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>):stdgo.GoUInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __tmp__ = stdgo._internal.encoding.gob.Gob__decodeUintReader._decodeUintReader(stdgo.Go.asInterface((stdgo.Go.setRef(_dec._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>)), _dec._countBuf), _n:stdgo.GoUInt64 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
        };
        return _n;
    }
    @:keep
    static public function _nextInt( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __tmp__ = stdgo._internal.encoding.gob.Gob__decodeUintReader._decodeUintReader(stdgo.Go.asInterface((stdgo.Go.setRef(_dec._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>)), _dec._countBuf), _n:stdgo.GoUInt64 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
        };
        return stdgo._internal.encoding.gob.Gob__toInt._toInt(_n);
    }
    @:keep
    static public function _readMessage( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _nbytes:stdgo.GoInt):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        if (_dec._buf.len() != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("non-empty decoder buffer" : stdgo.GoString));
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(_dec._r, (_nbytes : stdgo.GoUInt64));
            _buf = __tmp__._0;
            _dec._err = __tmp__._1;
        };
        _dec._buf.setBytes(_buf);
        if (stdgo.Go.toInterface(_dec._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _dec._err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
    }
    @:keep
    static public function _recvMessage( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __tmp__ = stdgo._internal.encoding.gob.Gob__decodeUintReader._decodeUintReader(_dec._r, _dec._countBuf), _nbytes:stdgo.GoUInt64 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
            return false;
        };
        if ((_nbytes >= (1073741824i64 : stdgo.GoUInt64) : Bool)) {
            _dec._err = stdgo._internal.encoding.gob.Gob__errBadCount._errBadCount;
            return false;
        };
        _dec._readMessage((_nbytes : stdgo.GoInt));
        return _dec._err == null;
    }
    @:keep
    static public function _recvType( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _id:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        if (((_id < (64 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : Bool) || ((_dec._wireType[_id] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)) != null && ((_dec._wireType[_id] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>) : Dynamic).__nil__ == null || !(_dec._wireType[_id] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>) : Dynamic).__nil__)) : Bool)) {
            _dec._err = stdgo._internal.errors.Errors_new_.new_(("gob: duplicate type received" : stdgo.GoString));
            return;
        };
        var _wire = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>);
        _dec._decodeValue(stdgo._internal.encoding.gob.Gob__tWireType._tWireType, stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_wire)))?.__copy__());
        if (_dec._err != null) {
            return;
        };
        _dec._wireType[_id] = _wire;
    }
    @:keep
    static public function _decodeIgnoredValue( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>> = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>);
        {
            var __tmp__ = _dec._getIgnoreEnginePtr(_wireId);
            _enginePtr = __tmp__._0;
            _dec._err = __tmp__._1;
        };
        if (_dec._err != null) {
            return;
        };
        var _wire = (_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>));
        if (((_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) && (_wire.structT != null && ((_wire.structT : Dynamic).__nil__ == null || !(_wire.structT : Dynamic).__nil__)) : Bool)) {
            _dec._ignoreStruct((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>));
        } else {
            _dec._ignoreSingle((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>));
        };
    }
    @:keep
    static public function _decodeValue( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = (stdgo.Go.setRef(_dec._err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> stdgo._internal.encoding.gob.Gob__catchError._catchError(_a0));
            };
            if (!_value.isValid()) {
                _dec._decodeIgnoredValue(_wireId);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_value.type());
            var _base = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>> = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>);
            {
                var __tmp__ = _dec._getDecEnginePtr(_wireId, _ut);
                _enginePtr = __tmp__._0;
                _dec._err = __tmp__._1;
            };
            if (_dec._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _value = stdgo._internal.encoding.gob.Gob__decAlloc._decAlloc(_value?.__copy__())?.__copy__();
            var _engine = (_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
            {
                var _st = (_base : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (((_st.kind() == (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_ut._externalDec == (0 : stdgo.GoInt)) : Bool)) {
                    var _wt = (_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>));
                    if ((((_engine._numInstr == ((0 : stdgo.GoInt)) && (_st.numField() > (0 : stdgo.GoInt) : Bool) : Bool) && (_wt != null && ((_wt : Dynamic).__nil__ == null || !(_wt : Dynamic).__nil__)) : Bool) && ((_wt.structT.field.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        var _name = (_base.name()?.__copy__() : stdgo.GoString);
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("type mismatch: no fields matched compiling decoder for %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    };
                    _dec._decodeStruct(_engine, _value?.__copy__());
                } else {
                    _dec._decodeSingle(_engine, _value?.__copy__());
                };
            };
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
    }
    @:keep
    static public function _getIgnoreEnginePtr( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _enginePtr = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>), _err = (null : stdgo.Error);
        var _ok:Bool = false;
        {
            {
                var __tmp__ = (_dec._ignorerCache != null && _dec._ignorerCache.exists(_wireId) ? { _0 : _dec._ignorerCache[_wireId], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>), _1 : false });
                _enginePtr = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _enginePtr = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>);
                _dec._ignorerCache[_wireId] = _enginePtr;
                var _wire = (_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>));
                if (((_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) && (_wire.structT != null && ((_wire.structT : Dynamic).__nil__ == null || !(_wire.structT : Dynamic).__nil__)) : Bool)) {
                    {
                        var __tmp__ = _dec._compileDec(_wireId, stdgo._internal.encoding.gob.Gob__userType._userType(stdgo._internal.encoding.gob.Gob__emptyStructType._emptyStructType));
                        _enginePtr = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    _enginePtr = _dec._compileIgnoreSingle(_wireId);
                };
                if (_err != null) {
                    if (_dec._ignorerCache != null) _dec._ignorerCache.remove(_wireId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    @:keep
    static public function _getDecEnginePtr( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _enginePtr = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>), _err = (null : stdgo.Error);
        var _rt = (_ut._user : stdgo._internal.reflect.Reflect_Type_.Type_);
        var __tmp__ = (_dec._decoderCache != null && _dec._decoderCache.exists(_rt) ? { _0 : _dec._decoderCache[_rt], _1 : true } : { _0 : (null : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>), _1 : false }), _decoderMap:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _decoderMap = ({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>);
                {};
                x;
            } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>);
            _dec._decoderCache[_rt] = _decoderMap;
        };
        {
            {
                var __tmp__ = (_decoderMap != null && _decoderMap.exists(_remoteId) ? { _0 : _decoderMap[_remoteId], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>), _1 : false });
                _enginePtr = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _enginePtr = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>);
                _decoderMap[_remoteId] = _enginePtr;
                {
                    var __tmp__ = _dec._compileDec(_remoteId, _ut);
                    _enginePtr = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (_decoderMap != null) _decoderMap.remove(_remoteId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    @:keep
    static public function _compileDec( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        var _engine = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> stdgo._internal.encoding.gob.Gob__catchError._catchError(_a0));
            };
            var _rt = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
            var _srt = (_rt : stdgo._internal.reflect.Reflect_Type_.Type_);
            if (((_srt.kind() != (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_ut._externalDec != (0 : stdgo.GoInt)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = _dec._compileSingle(_remoteId, _ut);
                        _engine = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _wireStruct:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>);
            {
                var _t = (stdgo._internal.encoding.gob.Gob__builtinIdToType._builtinIdToType(_remoteId) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
                if (_t != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_structType.T_structType>), _1 : false };
                        };
                        _wireStruct = __tmp__._0;
                    };
                } else {
                    var _wire = (_dec._wireType[_remoteId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>));
                    if ((_wire == null || (_wire : Dynamic).__nil__)) {
                        stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errBadType._errBadType);
                    };
                    _wireStruct = _wire.structT;
                };
            };
            if ((_wireStruct == null || (_wireStruct : Dynamic).__nil__)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("type mismatch in decoder: want struct type %s; got non-struct" : stdgo.GoString), stdgo.Go.toInterface(_rt));
            };
            _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
            _engine._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>((_wireStruct.field.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_wireStruct.field.length : stdgo.GoInt).toBasic() > 0 ? (_wireStruct.field.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
            var _seen = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>);
            {
                var _fieldnum = (0 : stdgo.GoInt);
                while ((_fieldnum < (_wireStruct.field.length) : Bool)) {
                    var _wireField = (_wireStruct.field[(_fieldnum : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType);
if (_wireField.name == (stdgo.Go.str())) {
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("empty name for remote field of type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireStruct.commonType.name));
                    };
var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_wireField.name.__copy__()) : stdgo.Error);
var __tmp__ = _srt.fieldByName(_wireField.name.__copy__()), _localField:stdgo._internal.reflect.Reflect_StructField.StructField = __tmp__._0, _present:Bool = __tmp__._1;
if ((!_present || !stdgo._internal.encoding.gob.Gob__isExported._isExported(_wireField.name.__copy__()) : Bool)) {
                        var _op = _dec._decIgnoreOpFor(_wireField.id, ({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>();
                            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>), (0 : stdgo.GoInt));
                        _engine._instr[(_fieldnum : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_op.value, _fieldnum, (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr);
                        {
                            _fieldnum++;
                            continue;
                        };
                    };
if (!_dec._compatibleType(_localField.type, _wireField.id, ({
                        final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>();
                        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>))) {
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("wrong type (%s) for received field %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_localField.type), stdgo.Go.toInterface(_wireStruct.commonType.name), stdgo.Go.toInterface(_wireField.name));
                    };
var _op = _dec._decOpFor(_wireField.id, _localField.type, _localField.name.__copy__(), _seen);
_engine._instr[(_fieldnum : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_op.value, _fieldnum, _localField.index, _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr);
_engine._numInstr++;
                    _fieldnum++;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : _engine, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : _engine, _1 : _err };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : _engine, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _compileIgnoreSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
        _engine._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        var _op = _dec._decIgnoreOpFor(_remoteId, ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>), (0 : stdgo.GoInt));
        var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_dec._typeString(_remoteId)?.__copy__()) : stdgo.Error);
        _engine._instr[(0 : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_op.value, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr);
        _engine._numInstr = (1 : stdgo.GoInt);
        return _engine;
    }
    @:keep
    static public function _compileSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _engine = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>), _err = (null : stdgo.Error);
        var _rt = (_ut._user : stdgo._internal.reflect.Reflect_Type_.Type_);
        _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
        _engine._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        var _name = ((_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (!_dec._compatibleType(_rt, _remoteId, ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>))) {
            var _remoteType = (_dec._typeString(_remoteId)?.__copy__() : stdgo.GoString);
            if (((_ut._base.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_remoteId != stdgo._internal.encoding.gob.Gob__tInterface._tInterface) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((((("gob: local interface type " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" can only be decoded from remote interface type; received concrete type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _remoteType?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _engine = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((((("gob: decoding into local type " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (", received remote type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _remoteType?.__copy__() : stdgo.GoString)?.__copy__()) };
                _engine = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _op = _dec._decOpFor(_remoteId, _rt, _name?.__copy__(), ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>));
        var _ovfl = (stdgo._internal.errors.Errors_new_.new_(((("value for \"" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + ("\" out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Error);
        _engine._instr[(0 : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_op.value, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr);
        _engine._numInstr = (1 : stdgo.GoInt);
        return { _0 : _engine, _1 : _err };
    }
    @:keep
    static public function _typeString( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId):stdgo.GoString {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.encoding.gob.Gob__typeLock._typeLock.lock();
            __deferstack__.unshift(() -> stdgo._internal.encoding.gob.Gob__typeLock._typeLock.unlock());
            {
                var _t = (stdgo._internal.encoding.gob.Gob__idToType._idToType(_remoteId) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
                if (_t != null) {
                    {
                        final __ret__:stdgo.GoString = _t._string()?.__copy__();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:stdgo.GoString = (_dec._wireType[_remoteId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>))._string()?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoString = ("" : stdgo.GoString);
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
            final __ret__:stdgo.GoString = ("" : stdgo.GoString);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _compatibleType( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _fr:stdgo._internal.reflect.Reflect_Type_.Type_, _fw:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        {
            var __tmp__ = (_inProgress != null && _inProgress.exists(_fr) ? { _0 : _inProgress[_fr], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), _1 : false }), _rhs:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _rhs == (_fw);
            };
        };
        _inProgress[_fr] = _fw;
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_fr);
        var __tmp__ = (_dec._wireType != null && _dec._wireType.exists(_fw) ? { _0 : _dec._wireType[_fw], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>), _1 : false }), _wire:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((((_ut._externalDec == (1 : stdgo.GoInt)) != ((_ok && (_wire.gobEncoderT != null && ((_wire.gobEncoderT : Dynamic).__nil__ == null || !(_wire.gobEncoderT : Dynamic).__nil__)) : Bool)) || (_ut._externalDec == (2 : stdgo.GoInt)) != ((_ok && (_wire.binaryMarshalerT != null && ((_wire.binaryMarshalerT : Dynamic).__nil__ == null || !(_wire.binaryMarshalerT : Dynamic).__nil__)) : Bool)) : Bool) || ((_ut._externalDec == (3 : stdgo.GoInt)) != ((_ok && (_wire.textMarshalerT != null && ((_wire.textMarshalerT : Dynamic).__nil__ == null || !(_wire.textMarshalerT : Dynamic).__nil__)) : Bool))) : Bool)) {
            return false;
        };
        if (_ut._externalDec != ((0 : stdgo.GoInt))) {
            return true;
        };
        {
            var _t = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                final __value__ = _t.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tBool._tBool);
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tInt._tInt);
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tUint._tUint);
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tFloat._tFloat);
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tComplex._tComplex);
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tString._tString);
                } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tInterface._tInterface);
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if ((!_ok || (_wire.arrayT == null || (_wire.arrayT : Dynamic).__nil__) : Bool)) {
                        return false;
                    };
                    var _array = _wire.arrayT;
                    return ((_t.len() == _array.len) && _dec._compatibleType(_t.elem(), _array.elem, _inProgress) : Bool);
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if ((!_ok || (_wire.mapT == null || (_wire.mapT : Dynamic).__nil__) : Bool)) {
                        return false;
                    };
                    var mapType = _wire.mapT;
                    return (_dec._compatibleType(_t.key(), mapType.key, _inProgress) && _dec._compatibleType(_t.elem(), mapType.elem, _inProgress) : Bool);
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return _fw == (stdgo._internal.encoding.gob.Gob__tBytes._tBytes);
                    };
                    var _sw:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>);
                    {
                        var _tt = (stdgo._internal.encoding.gob.Gob__builtinIdToType._builtinIdToType(_fw) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
                        if (_tt != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>), _1 : false };
                                };
                                _sw = __tmp__._0;
                            };
                        } else if ((_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__))) {
                            _sw = _wire.sliceT;
                        };
                    };
                    var _elem = (stdgo._internal.encoding.gob.Gob__userType._userType(_t.elem())._base : stdgo._internal.reflect.Reflect_Type_.Type_);
                    return ((_sw != null && ((_sw : Dynamic).__nil__ == null || !(_sw : Dynamic).__nil__)) && _dec._compatibleType(_elem, _sw.elem, _inProgress) : Bool);
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return true;
                } else {
                    return false;
                };
            };
        };
    }
    @:keep
    static public function _gobDecodeOpFor( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _rcvrType = (_ut._user : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_ut._decIndir == ((-1 : stdgo.GoInt8))) {
            _rcvrType = stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_rcvrType);
        } else if ((_ut._decIndir > (0 : stdgo.GoInt8) : Bool)) {
            {
                var _i = ((0 : stdgo.GoInt8) : stdgo.GoInt8);
                while ((_i < _ut._decIndir : Bool)) {
                    _rcvrType = _rcvrType.elem();
                    _i++;
                };
            };
        };
        var _op:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp = (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp);
        _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
            if (((_value.kind() != (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_rcvrType.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
                _value = _value.addr()?.__copy__();
            };
            _state._dec._decodeGobDecoder(_ut, _state, _value?.__copy__());
        };
        return stdgo.Go.pointer(_op);
    }
    @:keep
    static public function _decIgnoreOpFor( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>, _depth:stdgo.GoInt):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        if ((_depth > stdgo._internal.encoding.gob.Gob__maxIgnoreNestingDepth._maxIgnoreNestingDepth : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.errors.Errors_new_.new_(("invalid nesting depth" : stdgo.GoString)));
        };
        {
            var _opPtr = (_inProgress[_wireId] ?? (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>));
            if (_opPtr != null) {
                return _opPtr;
            };
        };
        var __tmp__ = (stdgo._internal.encoding.gob.Gob__decIgnoreOpMap._decIgnoreOpMap != null && stdgo._internal.encoding.gob.Gob__decIgnoreOpMap._decIgnoreOpMap.exists(_wireId) ? { _0 : stdgo._internal.encoding.gob.Gob__decIgnoreOpMap._decIgnoreOpMap[_wireId], _1 : true } : { _0 : (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp), _1 : false }), _op:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _inProgress[_wireId] = stdgo.Go.pointer(_op);
            if (_wireId == (stdgo._internal.encoding.gob.Gob__tInterface._tInterface)) {
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                    _state._dec._ignoreInterface(_state);
                };
                return stdgo.Go.pointer(_op);
            };
            var _wire = (_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>));
            if ((_wire == null || (_wire : Dynamic).__nil__)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad data: undefined type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireId._string()));
            } else if ((_wire.arrayT != null && ((_wire.arrayT : Dynamic).__nil__ == null || !(_wire.arrayT : Dynamic).__nil__))) {
                var _elemId = (_wire.arrayT.elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                var _elemOp = _dec._decIgnoreOpFor(_elemId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                    _state._dec._ignoreArray(_state, _elemOp.value, _wire.arrayT.len);
                };
            } else if ((_wire.mapT != null && ((_wire.mapT : Dynamic).__nil__ == null || !(_wire.mapT : Dynamic).__nil__))) {
                var _keyId = ((_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)).mapT.key : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                var _elemId = ((_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)).mapT.elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                var _keyOp = _dec._decIgnoreOpFor(_keyId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                var _elemOp = _dec._decIgnoreOpFor(_elemId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                    _state._dec._ignoreMap(_state, _keyOp.value, _elemOp.value);
                };
            } else if ((_wire.sliceT != null && ((_wire.sliceT : Dynamic).__nil__ == null || !(_wire.sliceT : Dynamic).__nil__))) {
                var _elemId = (_wire.sliceT.elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                var _elemOp = _dec._decIgnoreOpFor(_elemId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                    _state._dec._ignoreSlice(_state, _elemOp.value);
                };
            } else if ((_wire.structT != null && ((_wire.structT : Dynamic).__nil__ == null || !(_wire.structT : Dynamic).__nil__))) {
                var __tmp__ = _dec._getIgnoreEnginePtr(_wireId), _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(_err);
                };
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                    _state._dec._ignoreStruct((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>));
                };
            } else if ((_wire.gobEncoderT != null && ((_wire.gobEncoderT : Dynamic).__nil__ == null || !(_wire.gobEncoderT : Dynamic).__nil__)) || (_wire.binaryMarshalerT != null && ((_wire.binaryMarshalerT : Dynamic).__nil__ == null || !(_wire.binaryMarshalerT : Dynamic).__nil__)) || (_wire.textMarshalerT != null && ((_wire.textMarshalerT : Dynamic).__nil__ == null || !(_wire.textMarshalerT : Dynamic).__nil__))) {
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                    _state._dec._ignoreGobDecoder(_state);
                };
            };
        };
        if (_op == null) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad data: ignore can\'t handle type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireId._string()));
        };
        return stdgo.Go.pointer(_op);
    }
    @:keep
    static public function _decOpFor( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, _rt:stdgo._internal.reflect.Reflect_Type_.Type_, _name:stdgo.GoString, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_rt);
        if (_ut._externalDec != ((0 : stdgo.GoInt))) {
            return _dec._gobDecodeOpFor(_ut);
        };
        {
            var _opPtr = (_inProgress[_rt] ?? (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>));
            if (_opPtr != null) {
                return _opPtr;
            };
        };
        var _typ = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _op:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp = (null : stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp);
        var _k = (_typ.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
        if (((_k : stdgo.GoInt) < (stdgo._internal.encoding.gob.Gob__decOpTable._decOpTable.length) : Bool)) {
            _op = stdgo._internal.encoding.gob.Gob__decOpTable._decOpTable[(_k : stdgo.GoInt)];
        };
        if (_op == null) {
            _inProgress[_rt] = stdgo.Go.pointer(_op);
            {
                var _t = (_typ : stdgo._internal.reflect.Reflect_Type_.Type_);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _t.kind();
                            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _name = (("element of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
                                var _elemId = ((_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)).arrayT.elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                                var _elemOp = _dec._decOpFor(_elemId, _t.elem(), _name?.__copy__(), _inProgress);
                                var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_name?.__copy__()) : stdgo.Error);
                                var _helper = (stdgo._internal.encoding.gob.Gob__decArrayHelper._decArrayHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper) : stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                                    _state._dec._decodeArray(_state, _value?.__copy__(), _elemOp.value, _t.len(), _ovfl, _helper);
                                };
                                break;
                            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                var _keyId = ((_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)).mapT.key : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                                var _elemId = ((_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)).mapT.elem : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                                var _keyOp = _dec._decOpFor(_keyId, _t.key(), (("key of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__(), _inProgress);
                                var _elemOp = _dec._decOpFor(_elemId, _t.elem(), (("element of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__(), _inProgress);
                                var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_name?.__copy__()) : stdgo.Error);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                                    _state._dec._decodeMap(_t, _state, _value?.__copy__(), _keyOp.value, _elemOp.value, _ovfl);
                                };
                                break;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _name = (("element of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
                                if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                    _op = stdgo._internal.encoding.gob.Gob__decUint8Slice._decUint8Slice;
                                    break;
                                };
                                var _elemId:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
                                {
                                    var _tt = (stdgo._internal.encoding.gob.Gob__builtinIdToType._builtinIdToType(_wireId) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
                                    if (_tt != null) {
                                        _elemId = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType>).elem;
                                    } else {
                                        _elemId = (_dec._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>)).sliceT.elem;
                                    };
                                };
                                var _elemOp = _dec._decOpFor(_elemId, _t.elem(), _name?.__copy__(), _inProgress);
                                var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_name?.__copy__()) : stdgo.Error);
                                var _helper = (stdgo._internal.encoding.gob.Gob__decSliceHelper._decSliceHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper) : stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                                    _state._dec._decodeSlice(_state, _value?.__copy__(), _elemOp.value, _ovfl, _helper);
                                };
                                break;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_typ);
                                var __tmp__ = _dec._getDecEnginePtr(_wireId, _ut), _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    stdgo._internal.encoding.gob.Gob__error_._error_(_err);
                                };
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                                    _dec._decodeStruct((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>), _value?.__copy__());
                                };
                                break;
                            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
                                    _state._dec._decodeInterface(_t, _state, _value?.__copy__());
                                };
                                break;
                            };
                        };
                        break;
                    };
                };
            };
        };
        if (_op == null) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode can\'t handle type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
        };
        return stdgo.Go.pointer(_op);
    }
    @:keep
    static public function _ignoreGobDecoder( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: length too large for buffer" : stdgo.GoString));
        };
        var _bn = (_state._b.len() : stdgo.GoInt);
        if ((_bn < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: invalid data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        _state._b.drop(_n);
    }
    @:keep
    static public function _decodeGobDecoder( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: length too large for buffer" : stdgo.GoString));
        };
        var _b = _state._b.bytes();
        if (((_b.length) < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: invalid data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_b.length)));
        };
        _b = (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        _state._b.drop(_n);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _ut._externalDec;
            if (__value__ == ((1 : stdgo.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.gob.Gob_GobDecoder.GobDecoder)) : stdgo._internal.encoding.gob.Gob_GobDecoder.GobDecoder).gobDecode(_b);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler).unmarshalBinary(_b);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_b);
            };
        };
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
    }
    @:keep
    static public function _ignoreInterface( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad interface encoding: name too large for buffer" : stdgo.GoString));
        };
        var _bn = (_state._b.len() : stdgo.GoInt);
        if ((_bn < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid interface value length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        _state._b.drop(_n);
        var _id = (_dec._decodeTypeSequence(true) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
        if ((_id < (0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_dec._err);
        };
        {
            var __tmp__ = _state._getLength();
            _n = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad interface encoding: data length too large for buffer" : stdgo.GoString));
        };
        _state._b.drop(_n);
    }
    @:keep
    static public function _decodeInterface( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _ityp:stdgo._internal.reflect.Reflect_Type_.Type_, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _nr = (_state._decodeUint() : stdgo.GoUInt64);
        if ((_nr > (2147483648i64 : stdgo.GoUInt64) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid type name length %d" : stdgo.GoString), stdgo.Go.toInterface(_nr));
        };
        if ((_nr > (_state._b.len() : stdgo.GoUInt64) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid type name length %d: exceeds input size" : stdgo.GoString), stdgo.Go.toInterface(_nr));
        };
        var _n = (_nr : stdgo.GoInt);
        var _name = (_state._b.bytes().__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        _state._b.drop(_n);
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            _value.setZero();
            return;
        };
        if (((_name.length) > (1024 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("name too long (%d bytes): %.20q..." : stdgo.GoString), stdgo.Go.toInterface((_name.length)), stdgo.Go.toInterface(_name));
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__nameToConcreteType._nameToConcreteType.load(stdgo.Go.toInterface((_name : stdgo.GoString))), _typi:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("name not registered for interface: %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _typ = (stdgo.Go.typeAssert((_typi : stdgo._internal.reflect.Reflect_Type_.Type_)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _concreteId = (_dec._decodeTypeSequence(true) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId);
        if ((_concreteId < (0 : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_dec._err);
        };
        _state._decodeUint();
        var _v = (stdgo._internal.encoding.gob.Gob__allocValue._allocValue(_typ)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _dec._decodeValue(_concreteId, _v?.__copy__());
        if (_dec._err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_dec._err);
        };
        if (!_typ.assignableTo(_ityp)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s is not assignable to type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_ityp));
        };
        _value.set(_v?.__copy__());
    }
    @:keep
    static public function _ignoreSlice( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        _dec._ignoreArrayHelper(_state, _elemOp, (_state._decodeUint() : stdgo.GoInt));
    }
    @:keep
    static public function _decodeSlice( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _u = (_state._decodeUint() : stdgo.GoUInt64);
        var _typ = (_value.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _size = (_typ.elem().size() : stdgo.GoUInt64);
        var _nBytes = (_u * _size : stdgo.GoUInt64);
        var _n = (_u : stdgo.GoInt);
        if (((((_n < (0 : stdgo.GoInt) : Bool) || (_n : stdgo.GoUInt64) != (_u) : Bool) || (_nBytes > (1073741824i64 : stdgo.GoUInt64) : Bool) : Bool) || (((_size > (0i64 : stdgo.GoUInt64) : Bool) && ((_nBytes / _size : stdgo.GoUInt64) != _u) : Bool)) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_typ.elem()), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_size));
        };
        if ((_value.cap() < _n : Bool)) {
            var _safe = (stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_ptrTo.ptrTo(_typ.elem())).interface_(), (_n : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_safe < (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_typ.elem()), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_size));
            };
            _value.set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_typ, _safe, _safe)?.__copy__());
        } else {
            _value.setLen(_n);
        };
        _dec._decodeArrayHelper(_state, _value?.__copy__(), _elemOp, _n, _ovfl, _helper);
    }
    @:keep
    static public function _ignoreMap( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _keyOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _n = (_state._decodeUint() : stdgo.GoInt);
        var _keyInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_keyOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.errors.Errors_new_.new_(("no error" : stdgo.GoString))) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        var _elemInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.errors.Errors_new_.new_(("no error" : stdgo.GoString))) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _keyOp(_keyInstr, _state, stdgo._internal.encoding.gob.Gob__noValue._noValue.__copy__());
_elemOp(_elemInstr, _state, stdgo._internal.encoding.gob.Gob__noValue._noValue.__copy__());
                _i++;
            };
        };
    }
    @:keep
    static public function _ignoreArray( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _length:stdgo.GoInt):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        {
            var _n = (_state._decodeUint() : stdgo.GoUInt64);
            if (_n != ((_length : stdgo.GoUInt64))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("length mismatch in ignoreArray" : stdgo.GoString));
            };
        };
        _dec._ignoreArrayHelper(_state, _elemOp, _length);
    }
    @:keep
    static public function _ignoreArrayHelper( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _length:stdgo.GoInt):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.errors.Errors_new_.new_(("no error" : stdgo.GoString))) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                if (_state._b.len() == ((0 : stdgo.GoInt))) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
_elemOp(_instr, _state, stdgo._internal.encoding.gob.Gob__noValue._noValue.__copy__());
                _i++;
            };
        };
    }
    @:keep
    static public function _decodeMap( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _mtyp:stdgo._internal.reflect.Reflect_Type_.Type_, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _ovfl:stdgo.Error):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _n = (_state._decodeUint() : stdgo.GoInt);
        if (_value.isNil()) {
            _value.set(stdgo._internal.reflect.Reflect_makeMapWithSize.makeMapWithSize(_mtyp, _n)?.__copy__());
        };
        var _keyIsPtr = (_mtyp.key().kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool);
        var _elemIsPtr = (_mtyp.elem().kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool);
        var _keyInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_keyOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        var _elemInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        var _keyP = (stdgo._internal.reflect.Reflect_new_.new_(_mtyp.key())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _elemP = (stdgo._internal.reflect.Reflect_new_.new_(_mtyp.elem())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _key = (stdgo._internal.encoding.gob.Gob__decodeIntoValue._decodeIntoValue(_state, _keyOp, _keyIsPtr, _keyP.elem().__copy__(), _keyInstr).__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
var _elem = (stdgo._internal.encoding.gob.Gob__decodeIntoValue._decodeIntoValue(_state, _elemOp, _elemIsPtr, _elemP.elem().__copy__(), _elemInstr).__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
_value.setMapIndex(_key.__copy__(), _elem.__copy__());
_keyP.elem().setZero();
_elemP.elem().setZero();
                _i++;
            };
        };
    }
    @:keep
    static public function _decodeArray( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _length:stdgo.GoInt, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        {
            var _n = (_state._decodeUint() : stdgo.GoUInt64);
            if (_n != ((_length : stdgo.GoUInt64))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("length mismatch in decodeArray" : stdgo.GoString));
            };
        };
        _dec._decodeArrayHelper(_state, _value?.__copy__(), _elemOp, _length, _ovfl, _helper);
    }
    @:keep
    static public function _decodeArrayHelper( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _value:stdgo._internal.reflect.Reflect_Value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _length:stdgo.GoInt, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_T_decHelper.T_decHelper):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        if (((_helper != null) && _helper(_state, _value?.__copy__(), _length, _ovfl) : Bool)) {
            return;
        };
        var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
        var _isPtr = (_value.type().elem().kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool);
        var _ln = (_value.len() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                if (_state._b.len() == ((0 : stdgo.GoInt))) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
if ((_i >= _ln : Bool)) {
                    _value.grow((1 : stdgo.GoInt));
                    var _cp = (_value.cap() : stdgo.GoInt);
                    if ((_cp > _length : Bool)) {
                        _cp = _length;
                    };
                    _value.setLen(_cp);
                    _ln = _cp;
                };
var _v = (_value.index(_i).__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
if (_isPtr) {
                    _v = stdgo._internal.encoding.gob.Gob__decAlloc._decAlloc(_v.__copy__()).__copy__();
                };
_elemOp(_instr, _state, _v.__copy__());
                _i++;
            };
        };
    }
    @:keep
    static public function _ignoreSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (0 : stdgo.GoInt);
            var _delta = (_state._decodeUint() : stdgo.GoInt);
            if (_delta != ((0 : stdgo.GoInt))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode: corrupted data: non-zero delta for singleton" : stdgo.GoString));
            };
            var _instr = (stdgo.Go.setRef(_engine._instr[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
            _instr._op(_instr, _state, stdgo._internal.encoding.gob.Gob__noValue._noValue?.__copy__());
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
    }
    @:keep
    static public function _ignoreStruct( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (-1 : stdgo.GoInt);
            while ((_state._b.len() > (0 : stdgo.GoInt) : Bool)) {
                var _delta = (_state._decodeUint() : stdgo.GoInt);
                if ((_delta < (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("ignore decode: corrupted data: negative delta" : stdgo.GoString));
                };
                if (_delta == ((0 : stdgo.GoInt))) {
                    break;
                };
                var _fieldnum = (_state._fieldnum + _delta : stdgo.GoInt);
                if ((_fieldnum >= (_engine._instr.length) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errRange._errRange);
                };
                var _instr = (stdgo.Go.setRef(_engine._instr[(_fieldnum : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
                _instr._op(_instr, _state, stdgo._internal.encoding.gob.Gob__noValue._noValue?.__copy__());
                _state._fieldnum = _fieldnum;
            };
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
    }
    @:keep
    static public function _decodeStruct( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (-1 : stdgo.GoInt);
            while ((_state._b.len() > (0 : stdgo.GoInt) : Bool)) {
                var _delta = (_state._decodeUint() : stdgo.GoInt);
                if ((_delta < (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode: corrupted data: negative delta" : stdgo.GoString));
                };
                if (_delta == ((0 : stdgo.GoInt))) {
                    break;
                };
                if ((_state._fieldnum >= ((_engine._instr.length) - _delta : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errRange._errRange);
                };
                var _fieldnum = (_state._fieldnum + _delta : stdgo.GoInt);
                var _instr = (stdgo.Go.setRef(_engine._instr[(_fieldnum : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
                var _field:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
                if (_instr._index != null) {
                    _field = _value.fieldByIndex(_instr._index)?.__copy__();
                    if (_field.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _field = stdgo._internal.encoding.gob.Gob__decAlloc._decAlloc(_field?.__copy__())?.__copy__();
                    };
                };
                _instr._op(_instr, _state, _field?.__copy__());
                _state._fieldnum = _fieldnum;
            };
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
    }
    @:keep
    static public function _decodeSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _dec._newDecoderState((stdgo.Go.setRef(_dec._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>));
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = (0 : stdgo.GoInt);
            if (_state._decodeUint() != ((0i64 : stdgo.GoUInt64))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode: corrupted data: non-zero delta for singleton" : stdgo.GoString));
            };
            var _instr = (stdgo.Go.setRef(_engine._instr[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>);
            _instr._op(_instr, _state, _value?.__copy__());
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
    }
    @:keep
    static public function _freeDecoderState( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        _d._next = _dec._freeList;
        _dec._freeList = _d;
    }
    @:keep
    static public function _newDecoderState( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, _buf:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = _dec;
        var _d = _dec._freeList;
        if ((_d == null || (_d : Dynamic).__nil__)) {
            _d = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
            _d._dec = _dec;
        } else {
            _dec._freeList = _d._next;
        };
        _d._b = _buf;
        return _d;
    }
}
