package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_body_asInterface) class T_body_static_extension {
    @:keep
    static public function _registerOnHitEOF( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>, _fn:() -> Void):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b._mu.lock();
            {
                final __f__ = _b._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _b._onHitEOF = _fn;
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
    static public function _bodyRemains( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b._mu.lock();
            {
                final __f__ = _b._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:Bool = !_b._sawEOF;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function _didEarlyClose( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b._mu.lock();
            {
                final __f__ = _b._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:Bool = _b._earlyClose;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b._mu.lock();
            {
                final __f__ = _b._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_b._closed) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            if (_b._sawEOF) {} else if (((_b._hdr == null) && _b._closing : Bool)) {} else if (_b._doEarlyClose) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._src) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : false };
                    }, _lr = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && (_lr.n > (262144i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        _b._earlyClose = true;
                    } else {
                        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                        {
                            var __tmp__ = stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked(_b) : stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked)), (262144i64 : stdgo.GoInt64));
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _err = (null : stdgo.Error);
                        };
                        if (_n == ((262144i64 : stdgo.GoInt64))) {
                            _b._earlyClose = true;
                        };
                    };
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked(_b) : stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked)));
                    _err = __tmp__._1;
                };
            };
            _b._closed = true;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function _unreadDataSizeLocked( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._src) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : false };
            }, _lr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _lr.n;
            };
        };
        return (-1i64 : stdgo.GoInt64);
    }
    @:keep
    static public function _readTrailer( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var __tmp__ = _b._r.peek((2 : stdgo.GoInt)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo._internal.bytes.Bytes_equal.equal(_buf, stdgo._internal.net.http.Http__singleCRLF._singleCRLF)) {
            _b._r.discard((2 : stdgo.GoInt));
            return (null : stdgo.Error);
        };
        if (((_buf.length) < (2 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.net.http.Http__errTrailerEOF._errTrailerEOF;
        };
        if (_err != null) {
            return _err;
        };
        if (!stdgo._internal.net.http.Http__seeUpcomingDoubleCRLF._seeUpcomingDoubleCRLF(_b._r)) {
            return stdgo._internal.errors.Errors_new_.new_(("http: suspiciously long trailer after chunked body" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.net.textproto.Textproto_newReader.newReader(_b._r).readMIMEHeader(), _hdr:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return stdgo._internal.net.http.Http__errTrailerEOF._errTrailerEOF;
            };
            return _err;
        };
        {
            final __type__ = _b._hdr;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) : __type__.__underlying__().value;
                stdgo._internal.net.http.Http__mergeSetHeader._mergeSetHeader((stdgo.Go.setRef(_rr.trailer) : stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>), (_hdr : stdgo._internal.net.http.Http_Header.Header));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) : __type__.__underlying__().value;
                stdgo._internal.net.http.Http__mergeSetHeader._mergeSetHeader((stdgo.Go.setRef(_rr.trailer) : stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>), (_hdr : stdgo._internal.net.http.Http_Header.Header));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readLocked( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_b._sawEOF) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = _b._src.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _b._sawEOF = true;
            if (_b._hdr != null) {
                {
                    var _e = (_b._readTrailer() : stdgo.Error);
                    if (_e != null) {
                        _err = _e;
                        _b._sawEOF = false;
                        _b._closed = true;
                    };
                };
                _b._hdr = (null : stdgo.AnyInterface);
            } else {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._src) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : false };
                    }, _lr = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && (_lr.n > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                };
            };
        };
        if (((_err == null) && (_n > (0 : stdgo.GoInt) : Bool) : Bool)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._src) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>)) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>), _1 : false };
                }, _lr = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (_lr.n == (0i64 : stdgo.GoInt64)) : Bool)) {
                    _err = stdgo._internal.io.Io_eof.eof;
                    _b._sawEOF = true;
                };
            };
        };
        if ((_b._sawEOF && (_b._onHitEOF != null) : Bool)) {
            _b._onHitEOF();
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_T_body.T_body> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _b._mu.lock();
            {
                final __f__ = _b._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_b._closed) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _b._readLocked(_p);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _n, _1 : _err };
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
            return { _0 : _n, _1 : _err };
        };
    }
}
