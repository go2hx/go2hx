package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function decodeValue( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (_v.isValid()) {
                if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_v.isNil() : Bool)) {} else if (!_v.canSet()) {
                    return stdgo._internal.errors.Errors_new_.new_(("gob: DecodeValue of unassignable value" : stdgo.GoString));
                };
            };
            @:check2 (@:checkr _dec ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _dec ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 (@:checkr _dec ?? throw "null pointer dereference")._buf.reset();
            (@:checkr _dec ?? throw "null pointer dereference")._err = (null : stdgo.Error);
            var _id = (@:check2r _dec._decodeTypeSequence(false) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
            if ((@:checkr _dec ?? throw "null pointer dereference")._err == null) {
                @:check2r _dec._decodeValue(_id, _v?.__copy__());
            };
            {
                final __ret__:stdgo.Error = (@:checkr _dec ?? throw "null pointer dereference")._err;
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
    static public function decode( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _e:stdgo.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        if (_e == null) {
            return @:check2r _dec.decodeValue((new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value));
        };
        var _value = (stdgo._internal.reflect.Reflect_valueof.valueOf(_e)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (_value.type().kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("gob: attempt to decode into a non-pointer" : stdgo.GoString));
            return (@:checkr _dec ?? throw "null pointer dereference")._err;
        };
        return @:check2r _dec.decodeValue(_value?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _decodeTypeSequence( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _isInterface:Bool):stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _firstMessage = (true : Bool);
        while ((@:checkr _dec ?? throw "null pointer dereference")._err == null) {
            if (@:check2 (@:checkr _dec ?? throw "null pointer dereference")._buf.len() == ((0 : stdgo.GoInt))) {
                if (!@:check2r _dec._recvMessage()) {
                    if ((!_firstMessage && (stdgo.Go.toInterface((@:checkr _dec ?? throw "null pointer dereference")._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                        (@:checkr _dec ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                    break;
                };
            };
            var _id = (@:check2r _dec._nextInt() : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
            if ((_id >= (0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool)) {
                return _id;
            };
            @:check2r _dec._recvType(-_id);
            if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
                break;
            };
            if ((@:check2 (@:checkr _dec ?? throw "null pointer dereference")._buf.len() > (0 : stdgo.GoInt) : Bool)) {
                if (!_isInterface) {
                    (@:checkr _dec ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("extra data in buffer" : stdgo.GoString));
                    break;
                };
                @:check2r _dec._nextUint();
            };
            _firstMessage = false;
        };
        return (-1 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
    }
    @:keep
    @:tdfield
    static public function _nextUint( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>):stdgo.GoUInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __tmp__ = stdgo._internal.encoding.gob.Gob__decodeuintreader._decodeUintReader(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>)), (@:checkr _dec ?? throw "null pointer dereference")._countBuf), _n:stdgo.GoUInt64 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = _err;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _nextInt( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __tmp__ = stdgo._internal.encoding.gob.Gob__decodeuintreader._decodeUintReader(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>)), (@:checkr _dec ?? throw "null pointer dereference")._countBuf), _n:stdgo.GoUInt64 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = _err;
        };
        return stdgo._internal.encoding.gob.Gob__toint._toInt(_n);
    }
    @:keep
    @:tdfield
    static public function _readMessage( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _nbytes:stdgo.GoInt):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        if (@:check2 (@:checkr _dec ?? throw "null pointer dereference")._buf.len() != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("non-empty decoder buffer" : stdgo.GoString));
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData((@:checkr _dec ?? throw "null pointer dereference")._r, (_nbytes : stdgo.GoUInt64));
            _buf = @:tmpset0 __tmp__._0;
            (@:checkr _dec ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        @:check2 (@:checkr _dec ?? throw "null pointer dereference")._buf.setBytes(_buf);
        if (stdgo.Go.toInterface((@:checkr _dec ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
    }
    @:keep
    @:tdfield
    static public function _recvMessage( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __tmp__ = stdgo._internal.encoding.gob.Gob__decodeuintreader._decodeUintReader((@:checkr _dec ?? throw "null pointer dereference")._r, (@:checkr _dec ?? throw "null pointer dereference")._countBuf), _nbytes:stdgo.GoUInt64 = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = _err;
            return false;
        };
        if ((_nbytes >= (1073741824i64 : stdgo.GoUInt64) : Bool)) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = stdgo._internal.encoding.gob.Gob__errbadcount._errBadCount;
            return false;
        };
        @:check2r _dec._readMessage((_nbytes : stdgo.GoInt));
        return (@:checkr _dec ?? throw "null pointer dereference")._err == null;
    }
    @:keep
    @:tdfield
    static public function _recvType( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _id:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        if (((_id < (64 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool) || (((@:checkr _dec ?? throw "null pointer dereference")._wireType[_id] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) != null && (((@:checkr _dec ?? throw "null pointer dereference")._wireType[_id] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>) : Dynamic).__nil__ == null || !((@:checkr _dec ?? throw "null pointer dereference")._wireType[_id] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>) : Dynamic).__nil__)) : Bool)) {
            (@:checkr _dec ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("gob: duplicate type received" : stdgo.GoString));
            return;
        };
        var _wire = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>);
        @:check2r _dec._decodeValue(stdgo._internal.encoding.gob.Gob__twiretype._tWireType, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_wire)))?.__copy__());
        if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
            return;
        };
        (@:checkr _dec ?? throw "null pointer dereference")._wireType[_id] = _wire;
    }
    @:keep
    @:tdfield
    static public function _decodeIgnoredValue( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>> = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
        {
            var __tmp__ = @:check2r _dec._getIgnoreEnginePtr(_wireId);
            _enginePtr = @:tmpset0 __tmp__._0;
            (@:checkr _dec ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
            return;
        };
        var _wire = ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>));
        if (((_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) && ((@:checkr _wire ?? throw "null pointer dereference").structT != null && (((@:checkr _wire ?? throw "null pointer dereference").structT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").structT : Dynamic).__nil__)) : Bool)) {
            @:check2r _dec._ignoreStruct((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>));
        } else {
            @:check2r _dec._ignoreSingle((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>));
        };
    }
    @:keep
    @:tdfield
    static public function _decodeValue( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = (stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.encoding.gob.Gob__catcherror._catchError;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if (!_value.isValid()) {
                @:check2r _dec._decodeIgnoredValue(_wireId);
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_value.type());
            var _base = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
            var _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>> = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
            {
                var __tmp__ = @:check2r _dec._getDecEnginePtr(_wireId, _ut);
                _enginePtr = @:tmpset0 __tmp__._0;
                (@:checkr _dec ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            _value = stdgo._internal.encoding.gob.Gob__decalloc._decAlloc(_value?.__copy__())?.__copy__();
            var _engine = (_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
            {
                var _st = (_base : stdgo._internal.reflect.Reflect_type_.Type_);
                if (((_st.kind() == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && ((@:checkr _ut ?? throw "null pointer dereference")._externalDec == (0 : stdgo.GoInt)) : Bool)) {
                    var _wt = ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>));
                    if (((((@:checkr _engine ?? throw "null pointer dereference")._numInstr == ((0 : stdgo.GoInt)) && (_st.numField() > (0 : stdgo.GoInt) : Bool) : Bool) && (_wt != null && ((_wt : Dynamic).__nil__ == null || !(_wt : Dynamic).__nil__)) : Bool) && (((@:checkr (@:checkr _wt ?? throw "null pointer dereference").structT ?? throw "null pointer dereference").field.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        var _name = (_base.name()?.__copy__() : stdgo.GoString);
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("type mismatch: no fields matched compiling decoder for %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                    };
                    @:check2r _dec._decodeStruct(_engine, _value?.__copy__());
                } else {
                    @:check2r _dec._decodeSingle(_engine, _value?.__copy__());
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getIgnoreEnginePtr( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _enginePtr = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>), _err = (null : stdgo.Error);
        var _ok:Bool = false;
        {
            {
                var __tmp__ = ((@:checkr _dec ?? throw "null pointer dereference")._ignorerCache != null && (@:checkr _dec ?? throw "null pointer dereference")._ignorerCache.__exists__(_wireId) ? { _0 : (@:checkr _dec ?? throw "null pointer dereference")._ignorerCache[_wireId], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>), _1 : false });
                _enginePtr = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                _enginePtr = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
                (@:checkr _dec ?? throw "null pointer dereference")._ignorerCache[_wireId] = _enginePtr;
                var _wire = ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>));
                if (((_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__)) && ((@:checkr _wire ?? throw "null pointer dereference").structT != null && (((@:checkr _wire ?? throw "null pointer dereference").structT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").structT : Dynamic).__nil__)) : Bool)) {
                    {
                        var __tmp__ = @:check2r _dec._compileDec(_wireId, stdgo._internal.encoding.gob.Gob__usertype._userType(stdgo._internal.encoding.gob.Gob__emptystructtype._emptyStructType));
                        _enginePtr = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    _enginePtr = @:check2r _dec._compileIgnoreSingle(_wireId);
                };
                if (_err != null) {
                    if ((@:checkr _dec ?? throw "null pointer dereference")._ignorerCache != null) (@:checkr _dec ?? throw "null pointer dereference")._ignorerCache.__remove__(_wireId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _getDecEnginePtr( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _enginePtr = (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>), _err = (null : stdgo.Error);
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._user : stdgo._internal.reflect.Reflect_type_.Type_);
        var __tmp__ = ((@:checkr _dec ?? throw "null pointer dereference")._decoderCache != null && (@:checkr _dec ?? throw "null pointer dereference")._decoderCache.__exists__(_rt) ? { _0 : (@:checkr _dec ?? throw "null pointer dereference")._decoderCache[_rt], _1 : true } : { _0 : (null : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>), _1 : false }), _decoderMap:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _decoderMap = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
                {};
                x;
            } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>>);
            (@:checkr _dec ?? throw "null pointer dereference")._decoderCache[_rt] = _decoderMap;
        };
        {
            {
                var __tmp__ = (_decoderMap != null && _decoderMap.__exists__(_remoteId) ? { _0 : _decoderMap[_remoteId], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>), _1 : false });
                _enginePtr = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                _enginePtr = (stdgo.Go.setRef((null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>)) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>>);
                _decoderMap[_remoteId] = _enginePtr;
                {
                    var __tmp__ = @:check2r _dec._compileDec(_remoteId, _ut);
                    _enginePtr = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    if (_decoderMap != null) _decoderMap.__remove__(_remoteId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _compileDec( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _engine = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.encoding.gob.Gob__catcherror._catchError;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
            var _srt = (_rt : stdgo._internal.reflect.Reflect_type_.Type_);
            if (((_srt.kind() != (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || ((@:checkr _ut ?? throw "null pointer dereference")._externalDec != (0 : stdgo.GoInt)) : Bool)) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } = {
                        final __tmp__ = @:check2r _dec._compileSingle(_remoteId, _ut);
                        _engine = __tmp__._0;
                        _err = __tmp__._1;
                        { _0 : _engine, _1 : _err };
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _wireStruct:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>);
            {
                var _t = (stdgo._internal.encoding.gob.Gob__builtinidtotype._builtinIdToType(_remoteId) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
                if (_t != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_structtype.T_structType>), _1 : false };
                        };
                        _wireStruct = @:tmpset0 __tmp__._0;
                    };
                } else {
                    var _wire = ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_remoteId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>));
                    if ((_wire == null || (_wire : Dynamic).__nil__)) {
                        stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errbadtype._errBadType);
                    };
                    _wireStruct = (@:checkr _wire ?? throw "null pointer dereference").structT;
                };
            };
            if ((_wireStruct == null || (_wireStruct : Dynamic).__nil__)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("type mismatch in decoder: want struct type %s; got non-struct" : stdgo.GoString), stdgo.Go.toInterface(_rt));
            };
            _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
            (@:checkr _engine ?? throw "null pointer dereference")._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>(((@:checkr _wireStruct ?? throw "null pointer dereference").field.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _wireStruct ?? throw "null pointer dereference").field.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _wireStruct ?? throw "null pointer dereference").field.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            var _seen = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>);
            {
                var _fieldnum = (0 : stdgo.GoInt);
                while ((_fieldnum < ((@:checkr _wireStruct ?? throw "null pointer dereference").field.length) : Bool)) {
                    var _wireField = ((@:checkr _wireStruct ?? throw "null pointer dereference").field[(_fieldnum : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_t_fieldtype.T_fieldType);
if (_wireField.name == ((stdgo.Go.str() : stdgo.GoString))) {
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("empty name for remote field of type %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _wireStruct ?? throw "null pointer dereference").commonType.name));
                    };
var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_wireField.name.__copy__()) : stdgo.Error);
var __tmp__ = _srt.fieldByName(_wireField.name.__copy__()), _localField:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _present:Bool = __tmp__._1;
if ((!_present || !stdgo._internal.encoding.gob.Gob__isexported._isExported(_wireField.name.__copy__()) : Bool)) {
                        var _op = @:check2r _dec._decIgnoreOpFor(_wireField.id, (({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>();
                            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>), (0 : stdgo.GoInt));
                        (@:checkr _engine ?? throw "null pointer dereference")._instr[(_fieldnum : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_op.value, _fieldnum, (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr);
                        {
                            _fieldnum++;
                            continue;
                        };
                    };
if (!@:check2r _dec._compatibleType(_localField.type, _wireField.id, (({
                        final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>();
                        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                        x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>))) {
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("wrong type (%s) for received field %s.%s" : stdgo.GoString), stdgo.Go.toInterface(_localField.type), stdgo.Go.toInterface((@:checkr _wireStruct ?? throw "null pointer dereference").commonType.name), stdgo.Go.toInterface(_wireField.name));
                    };
var _op = @:check2r _dec._decOpFor(_wireField.id, _localField.type, _localField.name.__copy__(), _seen);
(@:checkr _engine ?? throw "null pointer dereference")._instr[(_fieldnum : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_op.value, _fieldnum, _localField.index, _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr);
(@:checkr _engine ?? throw "null pointer dereference")._numInstr++;
                    _fieldnum++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _engine, _1 : _err };
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
                return { _0 : _engine, _1 : _err };
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
                return { _0 : _engine, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _compileIgnoreSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
        (@:checkr _engine ?? throw "null pointer dereference")._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        var _op = @:check2r _dec._decIgnoreOpFor(_remoteId, (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>();
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>) : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>), (0 : stdgo.GoInt));
        var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(@:check2r _dec._typeString(_remoteId)?.__copy__()) : stdgo.Error);
        (@:checkr _engine ?? throw "null pointer dereference")._instr[(0 : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_op.value, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr);
        (@:checkr _engine ?? throw "null pointer dereference")._numInstr = (1 : stdgo.GoInt);
        return _engine;
    }
    @:keep
    @:tdfield
    static public function _compileSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _engine = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>), _err = (null : stdgo.Error);
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._user : stdgo._internal.reflect.Reflect_type_.Type_);
        _engine = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>);
        (@:checkr _engine ?? throw "null pointer dereference")._instr = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        var _name = ((_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (!@:check2r _dec._compatibleType(_rt, _remoteId, (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>))) {
            var _remoteType = (@:check2r _dec._typeString(_remoteId)?.__copy__() : stdgo.GoString);
            if ((((@:checkr _ut ?? throw "null pointer dereference")._base.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_remoteId != stdgo._internal.encoding.gob.Gob__tinterface._tInterface) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((((("gob: local interface type " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" can only be decoded from remote interface type; received concrete type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _remoteType?.__copy__() : stdgo.GoString)?.__copy__()) };
                    _engine = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((((("gob: decoding into local type " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (", received remote type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _remoteType?.__copy__() : stdgo.GoString)?.__copy__()) };
                _engine = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _op = @:check2r _dec._decOpFor(_remoteId, _rt, _name?.__copy__(), (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>) : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>));
        var _ovfl = (stdgo._internal.errors.Errors_new_.new_(((("value for \"" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + ("\" out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Error);
        (@:checkr _engine ?? throw "null pointer dereference")._instr[(0 : stdgo.GoInt)] = (new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_op.value, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr);
        (@:checkr _engine ?? throw "null pointer dereference")._numInstr = (1 : stdgo.GoInt);
        return { _0 : _engine, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _typeString( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _remoteId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId):stdgo.GoString {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 stdgo._internal.encoding.gob.Gob__typelock._typeLock.lock();
            {
                final __f__ = @:check2 stdgo._internal.encoding.gob.Gob__typelock._typeLock.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _t = (stdgo._internal.encoding.gob.Gob__idtotype._idToType(_remoteId) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
                if (_t != null) {
                    {
                        final __ret__:stdgo.GoString = _t._string()?.__copy__();
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:stdgo.GoString = @:check2r ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_remoteId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>))._string()?.__copy__();
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
                return ("" : stdgo.GoString);
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
                return ("" : stdgo.GoString);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _compatibleType( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _fr:stdgo._internal.reflect.Reflect_type_.Type_, _fw:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        {
            var __tmp__ = (_inProgress != null && _inProgress.__exists__(_fr) ? { _0 : _inProgress[_fr], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), _1 : false }), _rhs:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _rhs == (_fw);
            };
        };
        _inProgress[_fr] = _fw;
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_fr);
        var __tmp__ = ((@:checkr _dec ?? throw "null pointer dereference")._wireType != null && (@:checkr _dec ?? throw "null pointer dereference")._wireType.__exists__(_fw) ? { _0 : (@:checkr _dec ?? throw "null pointer dereference")._wireType[_fw], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>), _1 : false }), _wire:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (((((@:checkr _ut ?? throw "null pointer dereference")._externalDec == (1 : stdgo.GoInt)) != ((_ok && ((@:checkr _wire ?? throw "null pointer dereference").gobEncoderT != null && (((@:checkr _wire ?? throw "null pointer dereference").gobEncoderT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").gobEncoderT : Dynamic).__nil__)) : Bool)) || ((@:checkr _ut ?? throw "null pointer dereference")._externalDec == (2 : stdgo.GoInt)) != ((_ok && ((@:checkr _wire ?? throw "null pointer dereference").binaryMarshalerT != null && (((@:checkr _wire ?? throw "null pointer dereference").binaryMarshalerT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").binaryMarshalerT : Dynamic).__nil__)) : Bool)) : Bool) || (((@:checkr _ut ?? throw "null pointer dereference")._externalDec == (3 : stdgo.GoInt)) != ((_ok && ((@:checkr _wire ?? throw "null pointer dereference").textMarshalerT != null && (((@:checkr _wire ?? throw "null pointer dereference").textMarshalerT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").textMarshalerT : Dynamic).__nil__)) : Bool))) : Bool)) {
            return false;
        };
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalDec != ((0 : stdgo.GoInt))) {
            return true;
        };
        {
            var _t = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                final __value__ = _t.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tbool._tBool);
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tint._tInt);
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tuint._tUint);
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tfloat._tFloat);
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tcomplex._tComplex);
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tstring._tString);
                } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return _fw == (stdgo._internal.encoding.gob.Gob__tinterface._tInterface);
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    if ((!_ok || ((@:checkr _wire ?? throw "null pointer dereference").arrayT == null || ((@:checkr _wire ?? throw "null pointer dereference").arrayT : Dynamic).__nil__) : Bool)) {
                        return false;
                    };
                    var _array = (@:checkr _wire ?? throw "null pointer dereference").arrayT;
                    return ((_t.len() == (@:checkr _array ?? throw "null pointer dereference").len) && @:check2r _dec._compatibleType(_t.elem(), (@:checkr _array ?? throw "null pointer dereference").elem, _inProgress) : Bool);
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    if ((!_ok || ((@:checkr _wire ?? throw "null pointer dereference").mapT == null || ((@:checkr _wire ?? throw "null pointer dereference").mapT : Dynamic).__nil__) : Bool)) {
                        return false;
                    };
                    var mapType = (@:checkr _wire ?? throw "null pointer dereference").mapT;
                    return (@:check2r _dec._compatibleType(_t.key(), (@:checkr mapType ?? throw "null pointer dereference").key, _inProgress) && @:check2r _dec._compatibleType(_t.elem(), (@:checkr mapType ?? throw "null pointer dereference").elem, _inProgress) : Bool);
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return _fw == (stdgo._internal.encoding.gob.Gob__tbytes._tBytes);
                    };
                    var _sw:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>);
                    {
                        var _tt = (stdgo._internal.encoding.gob.Gob__builtinidtotype._builtinIdToType(_fw) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
                        if (_tt != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>), _1 : false };
                                };
                                _sw = @:tmpset0 __tmp__._0;
                            };
                        } else if ((_wire != null && ((_wire : Dynamic).__nil__ == null || !(_wire : Dynamic).__nil__))) {
                            _sw = (@:checkr _wire ?? throw "null pointer dereference").sliceT;
                        };
                    };
                    var _elem = (stdgo._internal.encoding.gob.Gob__usertype._userType(_t.elem())._base : stdgo._internal.reflect.Reflect_type_.Type_);
                    return ((_sw != null && ((_sw : Dynamic).__nil__ == null || !(_sw : Dynamic).__nil__)) && @:check2r _dec._compatibleType(_elem, (@:checkr _sw ?? throw "null pointer dereference").elem, _inProgress) : Bool);
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return true;
                } else {
                    return false;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _gobDecodeOpFor( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _rcvrType = ((@:checkr _ut ?? throw "null pointer dereference")._user : stdgo._internal.reflect.Reflect_type_.Type_);
        if ((@:checkr _ut ?? throw "null pointer dereference")._decIndir == ((-1 : stdgo.GoInt8))) {
            _rcvrType = stdgo._internal.reflect.Reflect_pointerto.pointerTo(_rcvrType);
        } else if (((@:checkr _ut ?? throw "null pointer dereference")._decIndir > (0 : stdgo.GoInt8) : Bool)) {
            {
                var _i = ((0 : stdgo.GoInt8) : stdgo.GoInt8);
                while ((_i < (@:checkr _ut ?? throw "null pointer dereference")._decIndir : Bool)) {
                    _rcvrType = _rcvrType.elem();
                    _i++;
                };
            };
        };
        var _op:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp = (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
            if (((_value.kind() != (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_rcvrType.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                _value = _value.addr()?.__copy__();
            };
            @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._decodeGobDecoder(_ut, _state, _value?.__copy__());
        };
        return _op__pointer__;
    }
    @:keep
    @:tdfield
    static public function _decIgnoreOpFor( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>, _depth:stdgo.GoInt):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        if ((_depth > stdgo._internal.encoding.gob.Gob__maxignorenestingdepth._maxIgnoreNestingDepth : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.errors.Errors_new_.new_(("invalid nesting depth" : stdgo.GoString)));
        };
        {
            var _opPtr = (_inProgress[_wireId] ?? (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>));
            if (_opPtr != null) {
                return _opPtr;
            };
        };
        var __tmp__ = (stdgo._internal.encoding.gob.Gob__decignoreopmap._decIgnoreOpMap != null && stdgo._internal.encoding.gob.Gob__decignoreopmap._decIgnoreOpMap.__exists__(_wireId) ? { _0 : stdgo._internal.encoding.gob.Gob__decignoreopmap._decIgnoreOpMap[_wireId], _1 : true } : { _0 : (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp), _1 : false }), _op:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp = __tmp__._0, _ok:Bool = __tmp__._1;
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        if (!_ok) {
            _inProgress[_wireId] = _op__pointer__;
            if (_wireId == (stdgo._internal.encoding.gob.Gob__tinterface._tInterface)) {
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._ignoreInterface(_state);
                };
                return _op__pointer__;
            };
            var _wire = ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>));
            if ((_wire == null || (_wire : Dynamic).__nil__)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad data: undefined type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireId._string()));
            } else if (((@:checkr _wire ?? throw "null pointer dereference").arrayT != null && (((@:checkr _wire ?? throw "null pointer dereference").arrayT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").arrayT : Dynamic).__nil__))) {
                var _elemId = ((@:checkr (@:checkr _wire ?? throw "null pointer dereference").arrayT ?? throw "null pointer dereference").elem : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                var _elemOp = @:check2r _dec._decIgnoreOpFor(_elemId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._ignoreArray(_state, _elemOp.value, (@:checkr (@:checkr _wire ?? throw "null pointer dereference").arrayT ?? throw "null pointer dereference").len);
                };
            } else if (((@:checkr _wire ?? throw "null pointer dereference").mapT != null && (((@:checkr _wire ?? throw "null pointer dereference").mapT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").mapT : Dynamic).__nil__))) {
                var _keyId = ((@:checkr (@:checkr ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) ?? throw "null pointer dereference").mapT ?? throw "null pointer dereference").key : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                var _elemId = ((@:checkr (@:checkr ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) ?? throw "null pointer dereference").mapT ?? throw "null pointer dereference").elem : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                var _keyOp = @:check2r _dec._decIgnoreOpFor(_keyId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                var _elemOp = @:check2r _dec._decIgnoreOpFor(_elemId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._ignoreMap(_state, _keyOp.value, _elemOp.value);
                };
            } else if (((@:checkr _wire ?? throw "null pointer dereference").sliceT != null && (((@:checkr _wire ?? throw "null pointer dereference").sliceT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").sliceT : Dynamic).__nil__))) {
                var _elemId = ((@:checkr (@:checkr _wire ?? throw "null pointer dereference").sliceT ?? throw "null pointer dereference").elem : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                var _elemOp = @:check2r _dec._decIgnoreOpFor(_elemId, _inProgress, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._ignoreSlice(_state, _elemOp.value);
                };
            } else if (((@:checkr _wire ?? throw "null pointer dereference").structT != null && (((@:checkr _wire ?? throw "null pointer dereference").structT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").structT : Dynamic).__nil__))) {
                var __tmp__ = @:check2r _dec._getIgnoreEnginePtr(_wireId), _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(_err);
                };
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._ignoreStruct((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>));
                };
            } else if (((@:checkr _wire ?? throw "null pointer dereference").gobEncoderT != null && (((@:checkr _wire ?? throw "null pointer dereference").gobEncoderT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").gobEncoderT : Dynamic).__nil__)) || ((@:checkr _wire ?? throw "null pointer dereference").binaryMarshalerT != null && (((@:checkr _wire ?? throw "null pointer dereference").binaryMarshalerT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").binaryMarshalerT : Dynamic).__nil__)) || ((@:checkr _wire ?? throw "null pointer dereference").textMarshalerT != null && (((@:checkr _wire ?? throw "null pointer dereference").textMarshalerT : Dynamic).__nil__ == null || !((@:checkr _wire ?? throw "null pointer dereference").textMarshalerT : Dynamic).__nil__))) {
                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._ignoreGobDecoder(_state);
                };
            };
        };
        if (_op == null) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad data: ignore can\'t handle type %s" : stdgo.GoString), stdgo.Go.toInterface(_wireId._string()));
        };
        return _op__pointer__;
    }
    @:keep
    @:tdfield
    static public function _decOpFor( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _wireId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId, _rt:stdgo._internal.reflect.Reflect_type_.Type_, _name:stdgo.GoString, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>>):stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_rt);
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalDec != ((0 : stdgo.GoInt))) {
            return @:check2r _dec._gobDecodeOpFor(_ut);
        };
        {
            var _opPtr = (_inProgress[_rt] ?? (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_decop.T_decOp>));
            if (_opPtr != null) {
                return _opPtr;
            };
        };
        var _typ = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        var _op:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp = (null : stdgo._internal.encoding.gob.Gob_t_decop.T_decOp);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _k = (_typ.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        if (((_k : stdgo.GoInt) < (stdgo._internal.encoding.gob.Gob__decoptable._decOpTable.length) : Bool)) {
            _op = stdgo._internal.encoding.gob.Gob__decoptable._decOpTable[(_k : stdgo.GoInt)];
        };
        if (_op == null) {
            _inProgress[_rt] = _op__pointer__;
            {
                var _t = (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _t.kind();
                            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _name = (("element of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
                                var _elemId = ((@:checkr (@:checkr ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) ?? throw "null pointer dereference").arrayT ?? throw "null pointer dereference").elem : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                                var _elemOp = @:check2r _dec._decOpFor(_elemId, _t.elem(), _name?.__copy__(), _inProgress);
                                var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_name?.__copy__()) : stdgo.Error);
                                var _helper = (stdgo._internal.encoding.gob.Gob__decarrayhelper._decArrayHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper) : stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._decodeArray(_state, _value?.__copy__(), _elemOp.value, _t.len(), _ovfl, _helper);
                                };
                                break;
                            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                var _keyId = ((@:checkr (@:checkr ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) ?? throw "null pointer dereference").mapT ?? throw "null pointer dereference").key : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                                var _elemId = ((@:checkr (@:checkr ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) ?? throw "null pointer dereference").mapT ?? throw "null pointer dereference").elem : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                                var _keyOp = @:check2r _dec._decOpFor(_keyId, _t.key(), (("key of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__(), _inProgress);
                                var _elemOp = @:check2r _dec._decOpFor(_elemId, _t.elem(), (("element of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__(), _inProgress);
                                var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_name?.__copy__()) : stdgo.Error);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._decodeMap(_t, _state, _value?.__copy__(), _keyOp.value, _elemOp.value, _ovfl);
                                };
                                break;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _name = (("element of " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
                                if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    _op = stdgo._internal.encoding.gob.Gob__decuint8slice._decUint8Slice;
                                    break;
                                };
                                var _elemId:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
                                {
                                    var _tt = (stdgo._internal.encoding.gob.Gob__builtinidtotype._builtinIdToType(_wireId) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
                                    if (_tt != null) {
                                        _elemId = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_slicetype.T_sliceType>) ?? throw "null pointer dereference").elem;
                                    } else {
                                        _elemId = (@:checkr (@:checkr ((@:checkr _dec ?? throw "null pointer dereference")._wireType[_wireId] ?? (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_wiretype.T_wireType>)) ?? throw "null pointer dereference").sliceT ?? throw "null pointer dereference").elem;
                                    };
                                };
                                var _elemOp = @:check2r _dec._decOpFor(_elemId, _t.elem(), _name?.__copy__(), _inProgress);
                                var _ovfl = (stdgo._internal.encoding.gob.Gob__overflow._overflow(_name?.__copy__()) : stdgo.Error);
                                var _helper = (stdgo._internal.encoding.gob.Gob__decslicehelper._decSliceHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper) : stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._decodeSlice(_state, _value?.__copy__(), _elemOp.value, _ovfl, _helper);
                                };
                                break;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_typ);
                                var __tmp__ = @:check2r _dec._getDecEnginePtr(_wireId, _ut), _enginePtr:stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    stdgo._internal.encoding.gob.Gob__error_._error_(_err);
                                };
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r _dec._decodeStruct((_enginePtr : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>), _value?.__copy__());
                                };
                                break;
                            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._dec._decodeInterface(_t, _state, _value?.__copy__());
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
        return _op__pointer__;
    }
    @:keep
    @:tdfield
    static public function _ignoreGobDecoder( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: length too large for buffer" : stdgo.GoString));
        };
        var _bn = (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() : stdgo.GoInt);
        if ((_bn < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: invalid data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
    }
    @:keep
    @:tdfield
    static public function _decodeGobDecoder( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: length too large for buffer" : stdgo.GoString));
        };
        var _b = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.bytes();
        if (((_b.length) < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("GobDecoder: invalid data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_b.length)));
        };
        _b = (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = (@:checkr _ut ?? throw "null pointer dereference")._externalDec;
            if (__value__ == ((1 : stdgo.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.gob.Gob_gobdecoder.GobDecoder)) : stdgo._internal.encoding.gob.Gob_gobdecoder.GobDecoder).gobDecode(_b);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_binaryunmarshaler.BinaryUnmarshaler).unmarshalBinary(_b);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _err = (stdgo.Go.typeAssert((_value.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_b);
            };
        };
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _ignoreInterface( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad interface encoding: name too large for buffer" : stdgo.GoString));
        };
        var _bn = (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() : stdgo.GoInt);
        if ((_bn < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid interface value length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        var _id = (@:check2r _dec._decodeTypeSequence(true) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
        if ((_id < (0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _dec ?? throw "null pointer dereference")._err);
        };
        {
            var __tmp__ = @:check2r _state._getLength();
            _n = @:tmpset0 __tmp__._0;
            _ok = @:tmpset0 __tmp__._1;
        };
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad interface encoding: data length too large for buffer" : stdgo.GoString));
        };
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
    }
    @:keep
    @:tdfield
    static public function _decodeInterface( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _ityp:stdgo._internal.reflect.Reflect_type_.Type_, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _nr = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
        if ((_nr > (2147483648i64 : stdgo.GoUInt64) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid type name length %d" : stdgo.GoString), stdgo.Go.toInterface(_nr));
        };
        if ((_nr > (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() : stdgo.GoUInt64) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid type name length %d: exceeds input size" : stdgo.GoString), stdgo.Go.toInterface(_nr));
        };
        var _n = (_nr : stdgo.GoInt);
        var _name = (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.bytes().__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            _value.setZero();
            return;
        };
        if (((_name.length) > (1024 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("name too long (%d bytes): %.20q..." : stdgo.GoString), stdgo.Go.toInterface((_name.length)), stdgo.Go.toInterface(_name));
        };
        var __tmp__ = @:check2 stdgo._internal.encoding.gob.Gob__nametoconcretetype._nameToConcreteType.load(stdgo.Go.toInterface((_name : stdgo.GoString))), _typi:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("name not registered for interface: %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _typ = (stdgo.Go.typeAssert((_typi : stdgo._internal.reflect.Reflect_type_.Type_)) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _concreteId = (@:check2r _dec._decodeTypeSequence(true) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId);
        if ((_concreteId < (0 : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _dec ?? throw "null pointer dereference")._err);
        };
        @:check2r _state._decodeUint();
        var _v = (stdgo._internal.encoding.gob.Gob__allocvalue._allocValue(_typ)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        @:check2r _dec._decodeValue(_concreteId, _v?.__copy__());
        if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _dec ?? throw "null pointer dereference")._err);
        };
        if (!_typ.assignableTo(_ityp)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s is not assignable to type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_ityp));
        };
        _value.set(_v?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _ignoreSlice( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        @:check2r _dec._ignoreArrayHelper(_state, _elemOp, (@:check2r _state._decodeUint() : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _decodeSlice( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _u = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
        var _typ = (_value.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _size = (_typ.elem().size() : stdgo.GoUInt64);
        var _nBytes = (_u * _size : stdgo.GoUInt64);
        var _n = (_u : stdgo.GoInt);
        if (((((_n < (0 : stdgo.GoInt) : Bool) || (_n : stdgo.GoUInt64) != (_u) : Bool) || (_nBytes > (1073741824i64 : stdgo.GoUInt64) : Bool) : Bool) || (((_size > (0i64 : stdgo.GoUInt64) : Bool) && ((_nBytes / _size : stdgo.GoUInt64) != _u) : Bool)) : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_typ.elem()), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_size));
        };
        if ((_value.cap() < _n : Bool)) {
            var _safe = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_ptrto.ptrTo(_typ.elem())).interface_(), (_n : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_safe < (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_typ.elem()), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_size));
            };
            _value.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_typ, _safe, _safe)?.__copy__());
        } else {
            _value.setLen(_n);
        };
        @:check2r _dec._decodeArrayHelper(_state, _value?.__copy__(), _elemOp, _n, _ovfl, _helper);
    }
    @:keep
    @:tdfield
    static public function _ignoreMap( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _keyOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _n = (@:check2r _state._decodeUint() : stdgo.GoInt);
        var _keyInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_keyOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.errors.Errors_new_.new_(("no error" : stdgo.GoString))) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        var _elemInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.errors.Errors_new_.new_(("no error" : stdgo.GoString))) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _keyOp(_keyInstr, _state, stdgo._internal.encoding.gob.Gob__novalue._noValue.__copy__());
_elemOp(_elemInstr, _state, stdgo._internal.encoding.gob.Gob__novalue._noValue.__copy__());
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _ignoreArray( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        {
            var _n = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
            if (_n != ((_length : stdgo.GoUInt64))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("length mismatch in ignoreArray" : stdgo.GoString));
            };
        };
        @:check2r _dec._ignoreArrayHelper(_state, _elemOp, _length);
    }
    @:keep
    @:tdfield
    static public function _ignoreArrayHelper( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.errors.Errors_new_.new_(("no error" : stdgo.GoString))) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                if (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decoding array or slice: length exceeds input size (%d elements)" : stdgo.GoString), stdgo.Go.toInterface(_length));
                };
_elemOp(_instr, _state, stdgo._internal.encoding.gob.Gob__novalue._noValue.__copy__());
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _decodeMap( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _mtyp:stdgo._internal.reflect.Reflect_type_.Type_, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _ovfl:stdgo.Error):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _n = (@:check2r _state._decodeUint() : stdgo.GoInt);
        if (_value.isNil()) {
            _value.set(stdgo._internal.reflect.Reflect_makemapwithsize.makeMapWithSize(_mtyp, _n)?.__copy__());
        };
        var _keyIsPtr = (_mtyp.key().kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
        var _elemIsPtr = (_mtyp.elem().kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
        var _keyInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_keyOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        var _elemInstr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        var _keyP = (stdgo._internal.reflect.Reflect_new_.new_(_mtyp.key())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _elemP = (stdgo._internal.reflect.Reflect_new_.new_(_mtyp.elem())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _key = (stdgo._internal.encoding.gob.Gob__decodeintovalue._decodeIntoValue(_state, _keyOp, _keyIsPtr, _keyP.elem().__copy__(), _keyInstr).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
var _elem = (stdgo._internal.encoding.gob.Gob__decodeintovalue._decodeIntoValue(_state, _elemOp, _elemIsPtr, _elemP.elem().__copy__(), _elemInstr).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
_value.setMapIndex(_key.__copy__(), _elem.__copy__());
_keyP.elem().setZero();
_elemP.elem().setZero();
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _decodeArray( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        {
            var _n = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
            if (_n != ((_length : stdgo.GoUInt64))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("length mismatch in decodeArray" : stdgo.GoString));
            };
        };
        @:check2r _dec._decodeArrayHelper(_state, _value?.__copy__(), _elemOp, _length, _ovfl, _helper);
    }
    @:keep
    @:tdfield
    static public function _decodeArrayHelper( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value, _elemOp:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _length:stdgo.GoInt, _ovfl:stdgo.Error, _helper:stdgo._internal.encoding.gob.Gob_t_dechelper.T_decHelper):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        if (((_helper != null) && _helper(_state, _value?.__copy__(), _length, _ovfl) : Bool)) {
            return;
        };
        var _instr = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr(_elemOp, (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>), _ovfl) : stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
        var _isPtr = (_value.type().elem().kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
        var _ln = (_value.len() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                if (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() == ((0 : stdgo.GoInt))) {
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
var _v = (_value.index(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
if (_isPtr) {
                    _v = stdgo._internal.encoding.gob.Gob__decalloc._decAlloc(_v.__copy__()).__copy__();
                };
_elemOp(_instr, _state, _v.__copy__());
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _ignoreSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = @:check2r _dec._newDecoderState((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>));
            {
                var _a0 = _state;
                final __f__ = @:check2r _dec._freeDecoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (0 : stdgo.GoInt);
            var _delta = (@:check2r _state._decodeUint() : stdgo.GoInt);
            if (_delta != ((0 : stdgo.GoInt))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode: corrupted data: non-zero delta for singleton" : stdgo.GoString));
            };
            var _instr = (stdgo.Go.setRef((@:checkr _engine ?? throw "null pointer dereference")._instr[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.encoding.gob.Gob__novalue._noValue?.__copy__());
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _ignoreStruct( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = @:check2r _dec._newDecoderState((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>));
            {
                var _a0 = _state;
                final __f__ = @:check2r _dec._freeDecoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
            while ((@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() > (0 : stdgo.GoInt) : Bool)) {
                var _delta = (@:check2r _state._decodeUint() : stdgo.GoInt);
                if ((_delta < (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("ignore decode: corrupted data: negative delta" : stdgo.GoString));
                };
                if (_delta == ((0 : stdgo.GoInt))) {
                    break;
                };
                var _fieldnum = ((@:checkr _state ?? throw "null pointer dereference")._fieldnum + _delta : stdgo.GoInt);
                if ((_fieldnum >= ((@:checkr _engine ?? throw "null pointer dereference")._instr.length) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errrange._errRange);
                };
                var _instr = (stdgo.Go.setRef((@:checkr _engine ?? throw "null pointer dereference")._instr[(_fieldnum : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
                (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, stdgo._internal.encoding.gob.Gob__novalue._noValue?.__copy__());
                (@:checkr _state ?? throw "null pointer dereference")._fieldnum = _fieldnum;
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _decodeStruct( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = @:check2r _dec._newDecoderState((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>));
            {
                var _a0 = _state;
                final __f__ = @:check2r _dec._freeDecoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
            while ((@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() > (0 : stdgo.GoInt) : Bool)) {
                var _delta = (@:check2r _state._decodeUint() : stdgo.GoInt);
                if ((_delta < (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode: corrupted data: negative delta" : stdgo.GoString));
                };
                if (_delta == ((0 : stdgo.GoInt))) {
                    break;
                };
                if (((@:checkr _state ?? throw "null pointer dereference")._fieldnum >= (((@:checkr _engine ?? throw "null pointer dereference")._instr.length) - _delta : stdgo.GoInt) : Bool)) {
                    stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errrange._errRange);
                };
                var _fieldnum = ((@:checkr _state ?? throw "null pointer dereference")._fieldnum + _delta : stdgo.GoInt);
                var _instr = (stdgo.Go.setRef((@:checkr _engine ?? throw "null pointer dereference")._instr[(_fieldnum : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
                var _field:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
                if ((@:checkr _instr ?? throw "null pointer dereference")._index != null) {
                    _field = _value.fieldByIndex((@:checkr _instr ?? throw "null pointer dereference")._index)?.__copy__();
                    if (_field.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _field = stdgo._internal.encoding.gob.Gob__decalloc._decAlloc(_field?.__copy__())?.__copy__();
                    };
                };
                (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, _field?.__copy__());
                (@:checkr _state ?? throw "null pointer dereference")._fieldnum = _fieldnum;
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _decodeSingle( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decengine.T_decEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = @:check2r _dec._newDecoderState((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>));
            {
                var _a0 = _state;
                final __f__ = @:check2r _dec._freeDecoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (0 : stdgo.GoInt);
            if (@:check2r _state._decodeUint() != ((0i64 : stdgo.GoUInt64))) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("decode: corrupted data: non-zero delta for singleton" : stdgo.GoString));
            };
            var _instr = (stdgo.Go.setRef((@:checkr _engine ?? throw "null pointer dereference")._instr[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>);
            (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, _value?.__copy__());
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _freeDecoderState( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _d:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        (@:checkr _d ?? throw "null pointer dereference")._next = (@:checkr _dec ?? throw "null pointer dereference")._freeList;
        (@:checkr _dec ?? throw "null pointer dereference")._freeList = _d;
    }
    @:keep
    @:tdfield
    static public function _newDecoderState( _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, _buf:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = _dec;
        var _d = (@:checkr _dec ?? throw "null pointer dereference")._freeList;
        if ((_d == null || (_d : Dynamic).__nil__)) {
            _d = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
            (@:checkr _d ?? throw "null pointer dereference")._dec = _dec;
        } else {
            (@:checkr _dec ?? throw "null pointer dereference")._freeList = (@:checkr _d ?? throw "null pointer dereference")._next;
        };
        (@:checkr _d ?? throw "null pointer dereference")._b = _buf;
        return _d;
    }
}
