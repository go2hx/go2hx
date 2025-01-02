package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Framer_asInterface) class T_http2Framer_static_extension {
    @:keep
    @:tdfield
    static public function _readMetaFrame( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _hf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((@:checkr _fr ?? throw "null pointer dereference").allowIllegalReads) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("illegal use of AllowIllegalReads with ReadMetaHeaders" : stdgo.GoString)) };
            };
            var _mh = (stdgo.Go.setRef(({ _http2HeadersFrame : _hf } : stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>);
            var _remainSize = @:check2r _fr._maxHeaderListSize();
            var _sawRegular:Bool = false;
            var _invalid:stdgo.Error = (null : stdgo.Error);
            var _hdec = (@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders;
            @:check2r _hdec.setEmitEnabled(true);
            @:check2r _hdec.setMaxStringLength(@:check2r _fr._maxHeaderStringLen());
            @:check2r _hdec.setEmitFunc(function(_hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Void {
                if ((stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs && (@:checkr _fr ?? throw "null pointer dereference")._logReads : Bool)) {
                    (@:checkr _fr ?? throw "null pointer dereference")._debugReadLoggerf(("http2: decoded hpack field %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_hf)));
                };
                if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_validHeaderFieldValue.validHeaderFieldValue(_hf.value?.__copy__())) {
                    _invalid = stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_T_http2headerFieldValueError.T_http2headerFieldValueError));
                };
                var _isPseudo = (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_hf.name?.__copy__(), (":" : stdgo.GoString)) : Bool);
                if (_isPseudo) {
                    if (_sawRegular) {
                        _invalid = stdgo._internal.net.http.Http__http2errPseudoAfterRegular._http2errPseudoAfterRegular;
                    };
                } else {
                    _sawRegular = true;
                    if (!stdgo._internal.net.http.Http__http2validWireHeaderFieldName._http2validWireHeaderFieldName(_hf.name?.__copy__())) {
                        _invalid = stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_T_http2headerFieldNameError.T_http2headerFieldNameError));
                    };
                };
                if (_invalid != null) {
                    @:check2r _hdec.setEmitEnabled(false);
                    return;
                };
                var _size = (_hf.size() : stdgo.GoUInt32);
                if ((_size > _remainSize : Bool)) {
                    @:check2r _hdec.setEmitEnabled(false);
                    (@:checkr _mh ?? throw "null pointer dereference").truncated = true;
                    return;
                };
                _remainSize = (_remainSize - (_size) : stdgo.GoUInt32);
                (@:checkr _mh ?? throw "null pointer dereference").fields = ((@:checkr _mh ?? throw "null pointer dereference").fields.__append__(_hf?.__copy__()));
            });
            {
                var _a0 = function(_hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Void {};
                final __f__ = @:check2r _hdec.setEmitFunc;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            var _hc:stdgo._internal.net.http.Http_T_http2headersOrContinuation.T_http2headersOrContinuation = stdgo.Go.asInterface(_hf);
            while (true) {
                var _frag = _hc.headerBlockFragment();
                {
                    var __tmp__ = @:check2r _hdec.write(_frag), __30577:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface(((9u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                if (_hc.headersEnded()) {
                    break;
                };
                {
                    var __tmp__ = @:check2r _fr.readFrame(), _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                    } else {
                        _hc = stdgo.Go.asInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame>));
                    };
                };
            };
            (@:checkr (@:checkr _mh ?? throw "null pointer dereference")._http2HeadersFrame ?? throw "null pointer dereference")._headerFragBuf = (null : stdgo.Slice<stdgo.GoUInt8>);
            @:check2r (@:checkr _mh ?? throw "null pointer dereference")._http2HeadersFrame._invalidate();
            {
                var _err = (@:check2r _hdec.close() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface(((9u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            if (_invalid != null) {
                (@:checkr _fr ?? throw "null pointer dereference")._errDetail = _invalid;
                if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                    stdgo._internal.log.Log_printf.printf(("http2: invalid header: %v" : stdgo.GoString), stdgo.Go.toInterface(_invalid));
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError((@:checkr _mh ?? throw "null pointer dereference")._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), _invalid) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) };
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                var _err = (@:check2r _mh._checkPseudos() : stdgo.Error);
                if (_err != null) {
                    (@:checkr _fr ?? throw "null pointer dereference")._errDetail = _err;
                    if (stdgo._internal.net.http.Http__http2VerboseLogs._http2VerboseLogs) {
                        stdgo._internal.log.Log_printf.printf(("http2: invalid pseudo headers: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError((@:checkr _mh ?? throw "null pointer dereference")._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), _err) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) };
                        for (defer in __deferstack__) {
                            __deferstack__.remove(defer);
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : _mh, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>), _1 : (null : stdgo.Error) };
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function _maxHeaderStringLen( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):stdgo.GoInt {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        var _v = (@:check2r _fr._maxHeaderListSize() : stdgo.GoUInt32);
        if (((_v : stdgo.GoInt) : stdgo.GoUInt32) == (_v)) {
            return (_v : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function writeRawFrame( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _t:stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, _streamID:stdgo.GoUInt32, _payload:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        @:check2r _f._startWrite(_t, _flags, _streamID);
        @:check2r _f._writeBytes(_payload);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePushPromise( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_p.streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        if (_p.endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        @:check2r _f._startWrite((5 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), _flags, _p.streamID);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            @:check2r _f._writeByte(_p.padLength);
        };
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_p.promiseID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        @:check2r _f._writeUint32(_p.promiseID);
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_p.blockFragment : Array<stdgo.GoUInt8>)));
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...((stdgo._internal.net.http.Http__http2padZeros._http2padZeros.__slice__(0, _p.padLength) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeContinuation( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endHeaders:Bool, _headerBlockFragment:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        if (_endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        @:check2r _f._startWrite((9 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), _flags, _streamID);
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_headerBlockFragment : Array<stdgo.GoUInt8>)));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeRSTStream( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        @:check2r _f._startWrite((3 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), (0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), _streamID);
        @:check2r _f._writeUint32((_code : stdgo.GoUInt32));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePriority( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        if (!stdgo._internal.net.http.Http__http2validStreamIDOrZero._http2validStreamIDOrZero(_p.streamDep)) {
            return stdgo._internal.net.http.Http__http2errDepStreamID._http2errDepStreamID;
        };
        @:check2r _f._startWrite((2 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), (0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), _streamID);
        var _v = (_p.streamDep : stdgo.GoUInt32);
        if (_p.exclusive) {
            _v = (_v | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        @:check2r _f._writeUint32(_v);
        @:check2r _f._writeByte(_p.weight);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeHeaders( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_p.streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        if (_p.endStream) {
            _flags = (_flags | ((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        if (_p.endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        if (!_p.priority.isZero()) {
            _flags = (_flags | ((32 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        @:check2r _f._startWrite((1 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), _flags, _p.streamID);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            @:check2r _f._writeByte(_p.padLength);
        };
        if (!_p.priority.isZero()) {
            var _v = (_p.priority.streamDep : stdgo.GoUInt32);
            if ((!stdgo._internal.net.http.Http__http2validStreamIDOrZero._http2validStreamIDOrZero(_v) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
                return stdgo._internal.net.http.Http__http2errDepStreamID._http2errDepStreamID;
            };
            if (_p.priority.exclusive) {
                _v = (_v | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            @:check2r _f._writeUint32(_v);
            @:check2r _f._writeByte(_p.priority.weight);
        };
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_p.blockFragment : Array<stdgo.GoUInt8>)));
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...((stdgo._internal.net.http.Http__http2padZeros._http2padZeros.__slice__(0, _p.padLength) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeWindowUpdate( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _incr:stdgo.GoUInt32):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if (((((_incr < (1u32 : stdgo.GoUInt32) : Bool) || (_incr > (2147483647u32 : stdgo.GoUInt32) : Bool) : Bool)) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("illegal window increment value" : stdgo.GoString));
        };
        @:check2r _f._startWrite((8 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), (0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), _streamID);
        @:check2r _f._writeUint32(_incr);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeGoAway( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _maxStreamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _debugData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        @:check2r _f._startWrite((7 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), (0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        @:check2r _f._writeUint32((_maxStreamID & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        @:check2r _f._writeUint32((_code : stdgo.GoUInt32));
        @:check2r _f._writeBytes(_debugData);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePing( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _ack:Bool, _data:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        var _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        if (_ack) {
            _flags = (1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        @:check2r _f._startWrite((6 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), _flags, (0u32 : stdgo.GoUInt32));
        @:check2r _f._writeBytes((_data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeSettingsAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        @:check2r _f._startWrite((4 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), (1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _settings:haxe.Rest<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>):stdgo.Error {
        var _settings = new stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>(_settings.length, 0, ..._settings);
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        @:check2r _f._startWrite((4 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), (0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        for (__30577 => _s in _settings) {
            @:check2r _f._writeUint16((_s.iD : stdgo.GoUInt16));
            @:check2r _f._writeUint32(_s.val);
        };
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function _startWriteDataPadded( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validStreamID._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errStreamID._http2errStreamID;
        };
        if (((_pad.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_pad.length) > (255 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.net.http.Http__http2errPadLength._http2errPadLength;
            };
            if (!(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites) {
                for (__30577 => _b in _pad) {
                    if (_b != ((0 : stdgo.GoUInt8))) {
                        return stdgo._internal.net.http.Http__http2errPadBytes._http2errPadBytes;
                    };
                };
            };
        };
        var _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        if (_endStream) {
            _flags = (_flags | ((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        if (_pad != null) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags);
        };
        @:check2r _f._startWrite((0 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), _flags, _streamID);
        if (_pad != null) {
            (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__((_pad.length : stdgo.GoUInt8)));
        };
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_data : Array<stdgo.GoUInt8>)));
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_pad : Array<stdgo.GoUInt8>)));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeDataPadded( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        {
            var _err = (@:check2r _f._startWriteDataPadded(_streamID, _endStream, _data, _pad) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeData( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        return @:check2r _f.writeDataPadded(_streamID, _endStream, _data, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _checkFrameOrder( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        var _last = ((@:checkr _fr ?? throw "null pointer dereference")._lastFrame : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame);
        (@:checkr _fr ?? throw "null pointer dereference")._lastFrame = _f;
        if ((@:checkr _fr ?? throw "null pointer dereference").allowIllegalReads) {
            return (null : stdgo.Error);
        };
        var _fh = (_f.header()?.__copy__() : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader);
        if ((@:checkr _fr ?? throw "null pointer dereference")._lastHeaderStream != ((0u32 : stdgo.GoUInt32))) {
            if (_fh.type != ((9 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType))) {
                return @:check2r _fr._connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("got %s for stream %d; expected CONTINUATION following %s for stream %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fh.type)), stdgo.Go.toInterface(_fh.streamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_last.header().type)), stdgo.Go.toInterface((@:checkr _fr ?? throw "null pointer dereference")._lastHeaderStream))?.__copy__());
            };
            if (_fh.streamID != ((@:checkr _fr ?? throw "null pointer dereference")._lastHeaderStream)) {
                return @:check2r _fr._connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("got CONTINUATION for stream %d; expected stream %d" : stdgo.GoString), stdgo.Go.toInterface(_fh.streamID), stdgo.Go.toInterface((@:checkr _fr ?? throw "null pointer dereference")._lastHeaderStream))?.__copy__());
            };
        } else if (_fh.type == ((9 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType))) {
            return @:check2r _fr._connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected CONTINUATION for stream %d" : stdgo.GoString), stdgo.Go.toInterface(_fh.streamID))?.__copy__());
        };
        {
            final __value__ = _fh.type;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType)) || __value__ == ((9 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType))) {
                if (_fh.flags.has((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags))) {
                    (@:checkr _fr ?? throw "null pointer dereference")._lastHeaderStream = (0u32 : stdgo.GoUInt32);
                } else {
                    (@:checkr _fr ?? throw "null pointer dereference")._lastHeaderStream = _fh.streamID;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _connError( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode, _reason:stdgo.GoString):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        (@:checkr _fr ?? throw "null pointer dereference")._errDetail = stdgo._internal.errors.Errors_new_.new_(_reason?.__copy__());
        return stdgo.Go.asInterface((_code : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError));
    }
    @:keep
    @:tdfield
    static public function readFrame( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        (@:checkr _fr ?? throw "null pointer dereference")._errDetail = (null : stdgo.Error);
        if ((@:checkr _fr ?? throw "null pointer dereference")._lastFrame != null) {
            (@:checkr _fr ?? throw "null pointer dereference")._lastFrame._invalidate();
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2readFrameHeader._http2readFrameHeader(((@:checkr _fr ?? throw "null pointer dereference")._headerBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _fr ?? throw "null pointer dereference")._r), _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
        };
        if ((_fh.length_ > (@:checkr _fr ?? throw "null pointer dereference")._maxReadSize : Bool)) {
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo._internal.net.http.Http__http2ErrFrameTooLarge._http2ErrFrameTooLarge };
        };
        var _payload = (@:checkr _fr ?? throw "null pointer dereference")._getReadBuf(_fh.length_);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _fr ?? throw "null pointer dereference")._r, _payload), __30577:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2typeFrameParser._http2typeFrameParser(_fh.type)((@:checkr _fr ?? throw "null pointer dereference")._frameCache, _fh?.__copy__(), (@:checkr _fr ?? throw "null pointer dereference")._countError, _payload), _f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.net.http.Http_T_http2connError.T_http2connError), _1 : false };
                }, _ce = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : @:check2r _fr._connError(_ce.code, _ce.reason?.__copy__()) };
                };
            };
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
        };
        {
            var _err = (@:check2r _fr._checkFrameOrder(_f) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
            };
        };
        if ((@:checkr _fr ?? throw "null pointer dereference")._logReads) {
            (@:checkr _fr ?? throw "null pointer dereference")._debugReadLoggerf(("http2: Framer %p: read %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fr)), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_f)));
        };
        if (((_fh.type == (1 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType)) && ((@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders != null && (((@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders : Dynamic).__nil__ == null || !((@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders : Dynamic).__nil__)) : Bool)) {
            return @:check2r _fr._readMetaFrame((stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>));
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function errorDetail( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        return (@:checkr _fr ?? throw "null pointer dereference")._errDetail;
    }
    @:keep
    @:tdfield
    static public function setMaxReadFrameSize( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _v:stdgo.GoUInt32):Void {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        if ((_v > (16777215u32 : stdgo.GoUInt32) : Bool)) {
            _v = (16777215u32 : stdgo.GoUInt32);
        };
        (@:checkr _fr ?? throw "null pointer dereference")._maxReadSize = _v;
    }
    @:keep
    @:tdfield
    static public function setReuseFrames( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):Void {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        if (((@:checkr _fr ?? throw "null pointer dereference")._frameCache != null && (((@:checkr _fr ?? throw "null pointer dereference")._frameCache : Dynamic).__nil__ == null || !((@:checkr _fr ?? throw "null pointer dereference")._frameCache : Dynamic).__nil__))) {
            return;
        };
        (@:checkr _fr ?? throw "null pointer dereference")._frameCache = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache() : stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>);
    }
    @:keep
    @:tdfield
    static public function _writeUint32( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _v:stdgo.GoUInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)));
    }
    @:keep
    @:tdfield
    static public function _writeUint16( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _v:stdgo.GoUInt16):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)));
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _v:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_v : Array<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function _writeByte( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _v:stdgo.GoUInt8):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(_v));
    }
    @:keep
    @:tdfield
    static public function _logWrite( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        if (((@:checkr _f ?? throw "null pointer dereference")._debugFramer == null || ((@:checkr _f ?? throw "null pointer dereference")._debugFramer : Dynamic).__nil__)) {
            (@:checkr _f ?? throw "null pointer dereference")._debugFramerBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            (@:checkr _f ?? throw "null pointer dereference")._debugFramer = stdgo._internal.net.http.Http__http2NewFramer._http2NewFramer((null : stdgo._internal.io.Io_Writer.Writer), stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference")._debugFramerBuf));
            (@:checkr (@:checkr _f ?? throw "null pointer dereference")._debugFramer ?? throw "null pointer dereference")._logReads = false;
            (@:checkr (@:checkr _f ?? throw "null pointer dereference")._debugFramer ?? throw "null pointer dereference").allowIllegalReads = true;
        };
        @:check2r (@:checkr _f ?? throw "null pointer dereference")._debugFramerBuf.write((@:checkr _f ?? throw "null pointer dereference")._wbuf);
        var __tmp__ = @:check2r (@:checkr _f ?? throw "null pointer dereference")._debugFramer.readFrame(), _fr:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._debugWriteLoggerf(("http2: Framer %p: failed to decode just-written frame" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            return;
        };
        (@:checkr _f ?? throw "null pointer dereference")._debugWriteLoggerf(("http2: Framer %p: wrote %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeFrame._http2summarizeFrame(_fr)));
    }
    @:keep
    @:tdfield
    static public function _endWrite( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        var _length = (((@:checkr _f ?? throw "null pointer dereference")._wbuf.length) - (9 : stdgo.GoInt) : stdgo.GoInt);
        if ((_length >= (16777216 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.net.http.Http__http2ErrFrameTooLarge._http2ErrFrameTooLarge;
        };
        var __blank__ = (((@:checkr _f ?? throw "null pointer dereference")._wbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_length : stdgo.GoUInt8)));
        if ((@:checkr _f ?? throw "null pointer dereference")._logWrites) {
            @:check2r _f._logWrite();
        };
        var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._w.write((@:checkr _f ?? throw "null pointer dereference")._wbuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) && (_n != ((@:checkr _f ?? throw "null pointer dereference")._wbuf.length)) : Bool)) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function _startWrite( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, _ftype:stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, _flags:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, _streamID:stdgo.GoUInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = (((@:checkr _f ?? throw "null pointer dereference")._wbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_ftype : stdgo.GoUInt8), (_flags : stdgo.GoUInt8), ((_streamID >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_streamID >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_streamID >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_streamID : stdgo.GoUInt8)));
    }
    @:keep
    @:tdfield
    static public function _maxHeaderListSize( _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>):stdgo.GoUInt32 {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = _fr;
        if ((@:checkr _fr ?? throw "null pointer dereference").maxHeaderListSize == ((0u32 : stdgo.GoUInt32))) {
            return (16777216u32 : stdgo.GoUInt32);
        };
        return (@:checkr _fr ?? throw "null pointer dereference").maxHeaderListSize;
    }
}
